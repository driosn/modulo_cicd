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
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/extensions/primary_site_extensions.dart';
import 'package:resident_app/core/shared/extensions/string_extensions.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/billing_settings/application/bloc/bill_delivery_bloc.dart';
import 'package:resident_app/features/billing_settings/constants/billing_settings.dart';
import 'package:resident_app/features/billing_settings/presentation/enums/bill_delivery_option.dart';
import 'package:resident_app/features/billing_settings/presentation/widgets/bill_delivery_reminder_view.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/user_feature.dart';

class BillingSettingsViewV1 extends StatefulWidget {
  const BillingSettingsViewV1({super.key});

  @override
  State<BillingSettingsViewV1> createState() => _BillingSettingsViewV1State();
}

class _BillingSettingsViewV1State extends State<BillingSettingsViewV1> with SingleTickerProviderStateMixin {
  //
  // Keys
  //
  final _scaffoldKey = GlobalKey<ScaffoldState>();

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
  late BillDeliveryBloc _billDeliveryBloc;

  //
  // Others
  //
  late BillDeliveryOption _deliveryOption;
  late final PrimarySite _selectedSite;

  @override
  void initState() {
    _userBloc = locator<UserBloc>();
    _siteBloc = locator<SiteBloc>();
    _billDeliveryBloc = locator<BillDeliveryBloc>();
    _selectedSite = _siteBloc.state.selectedSite;
    _deliveryOption = BillDeliveryType.fromInt(_selectedSite.billingSettings.deliveryType).when(
      mail: () => BillDeliveryOption.mail,
      email: () => BillDeliveryOption.email,
      phone: () => BillDeliveryOption.phone,
    );
    _billDeliveryBloc.add(
      BillDeliveryEvent.initializeBillingSettings(
        billDeliveryType: BillDeliveryType.fromInt(
          _selectedSite.billingSettings.deliveryType,
        ),
        emailAddress: _siteBloc.state.selectedSite.billingSettings.emailAddress,
        phoneNumber: _siteBloc.state.selectedSite.billingSettings.phoneNumber,
        leadDays: _siteBloc.state.selectedSite.billingSettings.leadDaysForBillReminder,
      ),
    );

    super.initState();
  }

  void _getUser() {
    _userBloc.add(UserEvent.getUser());
  }

  BillDeliveryType intToBillDeliveryType(BillDeliveryOption billDeliveryOption) {
    switch (billDeliveryOption) {
      case BillDeliveryOption.mail:
        return const BillDeliveryType.mail();
      case BillDeliveryOption.email:
        return const BillDeliveryType.email();
      case BillDeliveryOption.phone:
        return const BillDeliveryType.phone();
      default:
        return const BillDeliveryType.email();
    }
  }

  String _getAlertMessageByDeliveryOption() {
    String message = "";
    _billDeliveryBloc.state.deliveryType.when(
      mail: () {
        message = "${_localizations.mailDeliveryOptionAlert}\n\n"
            "${_selectedSite.fullName}${_selectedSite.mailBillingAddress}";
      },
      email: () {
        String reminderMessage = _billDeliveryBloc.state.leadDaysForBillReminder == LeadDaysForBillReminderValues.none
            ? ""
            : "\n\n${_localizations.youWillReceiveAReminder(
                _billDeliveryBloc.state.leadDaysForBillReminder.toString(),
              )}";
        message = "${_localizations.emailDeliveryOptionAlert}\n\n"
            "${_billDeliveryBloc.state.email.value}"
            "$reminderMessage";
      },
      phone: () {
        message = "${_localizations.phoneDeliveryOptionAlert}\n\n"
            "${_billDeliveryBloc.state.phone.value}";
      },
    );
    return message;
  }

  void _openDrawer() => _scaffoldKey.currentState?.openDrawer();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    return BlocListener<BillDeliveryBloc, BillDeliveryState>(
      bloc: _billDeliveryBloc,
      listener: (context, state) {
        state.updateStatus.when(
          initial: () {},
          updating: () {},
          success: () {
            _siteBloc.add(
              SiteEvent.setBillSettings(
                deliveryType: _billDeliveryBloc.state.deliveryType,
                email: _billDeliveryBloc.state.email.value,
                phoneNumber: _billDeliveryBloc.state.phone.value.removePhoneFormat(),
                leadDaysForBillReminder: _billDeliveryBloc.state.leadDaysForBillReminder,
              ),
            );

            locator<BillDeliveryBloc>().add(
              const BillDeliveryEvent.setReadMode(true),
            );
            ScaffoldMessenger.of(context).showSnackBar(
              MASnackBar.success(
                message: _localizations.changesBillingSettingsSavedSuccessfully,
              ),
            );
            _getUser();
          },
          failure: (message) {
            _billDeliveryBloc.add(
              BillDeliveryEvent.initializeBillingSettings(
                billDeliveryType: BillDeliveryType.fromInt(
                  _selectedSite.billingSettings.deliveryType,
                ),
                emailAddress: _siteBloc.state.selectedSite.billingSettings.emailAddress,
                phoneNumber: _siteBloc.state.selectedSite.billingSettings.phoneNumber,
                leadDays: _siteBloc.state.selectedSite.billingSettings.leadDaysForBillReminder,
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(
              MASnackBar.failure(
                message: message,
              ),
            );
          },
        );
      },
      child: BlocBuilder<BillDeliveryBloc, BillDeliveryState>(
        bloc: _billDeliveryBloc,
        builder: (context, state) {
          if (state.updateStatus == const BillingSettingsUpdateStatus.updating()) {
            return Container(
              color: colorPalette.surfaceContainerLowest,
              child: const Center(
                child: MACircularProgressIndicator(),
              ),
            );
          }

          if (state.updateStatus != const BillingSettingsUpdateStatus.updating()) {
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
                      bool isValid = false;
                      state.deliveryType.when(
                        mail: () => isValid = true,
                        email: () {
                          _billDeliveryBloc.add(
                            const BillDeliveryEvent.validateEmailAddress(),
                          );
                          if (state.email.isValid) {
                            isValid = true;
                          }
                        },
                        phone: () {
                          _billDeliveryBloc.add(
                            const BillDeliveryEvent.validatePhoneNumber(),
                          );
                          if (state.phone.isValid) {
                            isValid = true;
                          }
                        },
                      );
                      if (isValid) {
                        context.showMADialog(
                          maDialogBody: MABasicDialogBody(
                            title: _localizations.confirmUpdate,
                            text: _getAlertMessageByDeliveryOption(),
                          ),
                          actions: [
                            MADialogAction(
                              label: _localizations.yesUpperCase,
                              onPressed: () {
                                _billDeliveryBloc.add(
                                  BillDeliveryEvent.update(
                                    residentId: _siteBloc.state.selectedSite.resident.residentId,
                                  ),
                                );
                                context.pop();
                              },
                              style: MADialogActionStyle.elevated,
                            ),
                            MADialogAction(
                              label: _localizations.cancel.toUpperCase(),
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
                      _header(),
                      MASpacing.l(),
                      BillDeliveryReminderTabView(
                        onBillDeliveryOptionSelected: (selectedOption) => _deliveryOption = selectedOption,
                      ),
                      MASpacing.xxl(),
                      MASpacing.s()
                    ],
                  ),
                ),
              ),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }

  Widget _header() {
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    final scalerConfig = locator<ScalerConfig>();

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
            return SiteAddress(
              padding: EdgeInsets.symmetric(
                vertical: scalerConfig.spacingM,
              ),
              site: state.selectedSite,
              iconColor: colorPalette.iconBaseTextIcon,
              textColor: colorPalette.textBase,
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
