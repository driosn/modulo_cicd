import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/drawers/site_selector_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_left_right_tab_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/ma_tab.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_info_card.dart';
import 'package:resident_app/features/billing_settings/presentation/enums/bill_delivery_option.dart';
import 'package:resident_app/features/billing_settings/presentation/widgets/bill_delivery_tab_view.dart';
import 'package:resident_app/features/billing_settings/presentation/widgets/due_date_reminder_tab_view.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/user_feature.dart';

class BillingSettingsViewV2 extends StatefulWidget {
  const BillingSettingsViewV2({super.key});

  @override
  State<BillingSettingsViewV2> createState() => _BillingSettingsViewV2State();
}

class _BillingSettingsViewV2State extends State<BillingSettingsViewV2> with SingleTickerProviderStateMixin {
  //
  // Keys
  //
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  //
  // Controllers
  //
  late TabController _tabController;

  //
  // Localizations
  //
  final _localizations = locator<MaLocalizations>().I;

  //
  // Notifiers
  //
  final _openSiteSelectorDrawer = ValueNotifier<bool>(false);

  //
  // Bloc
  //
  late UserBloc _userBloc;
  late SiteBloc _siteBloc;

  //
  // Others
  //
  BillDeliveryOption deliveryOption = BillDeliveryOption.mail;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );

    _userBloc = locator<UserBloc>();
    _siteBloc = locator<SiteBloc>();

    super.initState();
  }

  String _getAlertMessageByDeliveryOption() {
    final Map<BillDeliveryOption, String> messages = {
      BillDeliveryOption.mail: _localizations.mailDeliveryOptionAlert,
      BillDeliveryOption.email: _localizations.emailDeliveryOptionAlert,
      BillDeliveryOption.phone: _localizations.phoneDeliveryOptionAlert,
    };

    return messages[deliveryOption]!;
  }

  void _openDrawer() => _scaffoldKey.currentState?.openDrawer();

  void _getUser() {
    _userBloc.add(UserEvent.getUser());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: ValueListenableBuilder<bool>(
        valueListenable: _openSiteSelectorDrawer,
        builder: (context, openSiteSelectorDrawer, child) {
          if (openSiteSelectorDrawer) {
            return SiteSelectorDrawer(
              onClosedDrawer: () => _openSiteSelectorDrawer.value = false,
            );
          }

          return MADrawer();
        },
      ),
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        bottom: const MABottomAppBar(),
        maAppBarType: MAAppBarType.blue,
        title: Text(_localizations.billingSettingsTitle),
        actions: [
          TextButton(
            onPressed: () {
              final isBillDeliverySelected = _tabController.index == 0;
              if (isBillDeliverySelected) {
                context.showMADialog(
                  maDialogBody: MABasicDialogBody(
                    title: _localizations.confirm,
                    text: _getAlertMessageByDeliveryOption(),
                  ),
                  actions: [
                    MADialogAction(
                      label: _localizations.yesUpperCase,
                      onPressed: () {
                        context.pop();
                        context.pop();

                        ScaffoldMessenger.of(context).showSnackBar(
                          MASnackBar.success(
                            message: _localizations.changesSavedSuccessfully,
                          ),
                        );
                        _getUser();
                      },
                      style: MADialogActionStyle.elevated,
                    ),
                    MADialogAction(
                      label: _localizations.noCancelUpperCase,
                      onPressed: () => context.pop(),
                      style: MADialogActionStyle.text,
                    ),
                  ],
                );
              }
            },
            child: Text(
              _localizations.saveButton,
              style: theme.textTheme.labelLarge!.copyWith(
                color: colorPalette.appBarTextIcon,
              ),
            ),
          )
        ],
      ),
      body: RelationalPadding(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MASpacing.xxl(),
              MASpacing.s(),
              _header(),
              MASpacing.l(),
              MALeftRightTabBar(
                tabController: _tabController,
                tabs: [
                  MATab(
                    label: _localizations.billDeliveryTab,
                    index: 0,
                  ),
                  MATab(
                    label: _localizations.dueDateReminderTab,
                    index: 1,
                  ),
                ],
              ),
              AnimatedBuilder(
                animation: _tabController,
                builder: (context, child) {
                  return IndexedStack(
                    index: _tabController.index,
                    children: [
                      BillDeliveryTabView(
                        onBillDeliveryOptionSelected: (selectedOption) => deliveryOption = selectedOption,
                      ),
                      const DueDateReminderTabView(),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          _localizations.billingSettingsTitle,
          style: theme.textTheme.titleLarge,
        ),
        MASpacing.l(),
        BlocBuilder<SiteBloc, SiteState>(
          bloc: _siteBloc,
          builder: (context, state) {
            return SiteInfoCard(
              site: state.selectedSite,
              onTap: () {
                if (_userBloc.state.user.associatedSites.isNotEmpty) {
                  _openSiteSelectorDrawer.value = true;
                  _openDrawer();
                }
              },
            );
          },
        ),
      ],
    );
  }
}
