import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/constants/illustrations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_extended_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/drawers/site_selector_drawer.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/bloc/new_payment_account_form_bloc.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_popup_menu.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/helpers/svg_color_mapped.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/presentation/widgets/review_label.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/payment_account/presentation/widgets/payment_account_info_card.dart';
import 'package:resident_app/features/payment_account/routes.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/user_feature.dart';

class PaymentAccountSettingsView extends StatefulWidget {
  const PaymentAccountSettingsView({super.key});

  @override
  State<StatefulWidget> createState() => _PaymentAccountSettingsViewState();
}

class _PaymentAccountSettingsViewState
    extends State<PaymentAccountSettingsView> {
  //
  // Keys
  //
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //
  // Localizations
  //
  late AppLocalizations _localizations;

  //
  // Notifiers
  //
  final _openSiteSelectorDrawer = ValueNotifier<bool>(false);

  //
  // Bloc
  //
  late AutoPayBloc autoPayBloc;
  late UserBloc _userBloc;
  late SiteBloc _siteBloc;
  late PaymentAccountsBloc _paymentAccountsBloc;
  late NewPaymentAccountFormBloc _newPaymentAccountFormBloc;

  @override
  void initState() {
    _localizations = locator<MaLocalizations>().I;
    autoPayBloc = locator<AutoPayBloc>();
    _userBloc = locator<UserBloc>();
    _siteBloc = locator<SiteBloc>();
    _paymentAccountsBloc = locator<PaymentAccountsBloc>();
    _newPaymentAccountFormBloc = locator<NewPaymentAccountFormBloc>();
    super.initState();
  }

  void _openDrawer() => _scaffoldKey.currentState?.openDrawer();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    List<MAMenuItem> menuItems = [
      MAMenuItem(
        menuItem: _localizations.changePaymentAccount,
        isBoldItem: false,
        onTap: () {
          context.goNamed(
            PaymentAccountRoutes.paymentAccountUpdate.name!,
          );
        },
      ),
      MAMenuItem(
        menuItem: _localizations.deletePaymentAccount,
        isBoldItem: false,
        onTap: () {
          context.showMADialog(
            maDialogBody: MABasicExtendedDialogBody(
              title: _localizations.confirm,
              text: _localizations.deletePaymentAccountInfo,
              content: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MAScaler(
                    child: SvgPicture.asset(
                      'assets/bank-account.svg',
                      fit: BoxFit.contain,
                      colorFilter: ColorFilter.mode(
                        colorPalette.iconBaseTextIcon,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  MASpacing.s(
                    axis: Axis.horizontal,
                  ),
                  MASpacing.xxs(
                    axis: Axis.horizontal,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReviewLabel(
                          _paymentAccountsBloc.state.paymentAccounts.bankAccountOption.bankAccountType.isChecking ? _localizations.checkingAccount : _localizations.savingsAccount,
                        ),
                        ReviewLabel(
                          _paymentAccountsBloc.state.paymentAccounts.maskedBankAccountNumber.maskedAccountNumber(),
                        ),
                        MASpacing.xxl(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            actions: [
              MADialogAction(
                label: _localizations.deleteAccount,
                onPressed: () {
                  context.pop();
                  _paymentAccountsBloc.add(
                    PaymentAccountsEvent.deletePaymentAccounts(
                      residentId: _siteBloc.state.selectedSite.resident.residentId,
                    ),
                  );
                },
                style: MADialogActionStyle.elevated,
              ),
              MADialogAction(
                label: _localizations.cancel,
                onPressed: () => context.pop(),
                style: MADialogActionStyle.text,
              ),
            ],
          );
        },
      ),
    ];
    return BlocListener<SiteBloc, SiteState>(
      bloc: _siteBloc,
      listener: (context, siteState) {
        _paymentAccountsBloc.add(
          PaymentAccountsEvent.getPaymentAccounts(
            residentId: siteState.selectedSite.resident.residentId,
          ),
        );
      },
      child: BlocConsumer<PaymentAccountsBloc, PaymentAccountsState>(
        bloc: _paymentAccountsBloc,
        listener: (context, state) {
          state.deleteStatus.whenOrNull(
            success: () {
              context.pushNamed(
                PaymentAccountRoutes.paymentAccountDeleted.name!,
              );
              ScaffoldMessenger.of(context).showSnackBar(
                MASnackBar.success(
                  message: _localizations.paymentAccountDeleted,
                ),
              );
            },
            failure: (error) {
              _paymentAccountsBloc.add(
                PaymentAccountsEvent.restart(),
              );
              context.showMADialog(
                maDialogBody: MABasicExtendedDialogBody(
                  title: _localizations.deletePaymentAccount,
                  text: error.message,
                  content: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/bank-account.svg',
                        fit: BoxFit.contain,
                        colorFilter: ColorFilter.mode(
                          colorPalette.iconBaseTextIcon,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReviewLabel(
                              _paymentAccountsBloc.state.paymentAccounts.bankAccountOption.bankAccountType.isChecking ? _localizations.checkingAccount : _localizations.savingsAccount,
                            ),
                            ReviewLabel(
                              _paymentAccountsBloc.state.paymentAccounts.maskedBankAccountNumber.maskedAccountNumber(),
                            ),
                            const SizedBox(
                              height: 24,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                actions: [
                  MADialogAction(
                    label: _localizations.goBack,
                    onPressed: () => context.pop(),
                    style: MADialogActionStyle.elevated,
                  ),
                ],
              );
            },
          );
        },
        buildWhen: (previous, current) {
          return current.deleteStatus.maybeWhen(
            success: () => false,
            orElse: () => true,
          );
        },
        builder: (context, state) {
          final width = MediaQuery.of(context).size.width;
          return Scaffold(
            backgroundColor: colorPalette.surfaceContainerLowest,
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
            appBar: MAAppBar(
              iconTheme: IconThemeData(
                color: colorPalette.appBarTextIcon,
              ),
              bottom: const MABottomAppBar(),
              maAppBarType: MAAppBarType.blue,
              title: Text(
                _localizations.paymentAccount,
              ),
              actions: state.paymentAccounts.maskedBankAccountNumber != ""
                  ? [
                      MAPopupMenu(
                        menuItems: menuItems,
                        child: Icon(
                          Icons.settings_outlined,
                          color: colorPalette.appBarTextIcon,
                        ),
                      ),
                    ]
                  : [],
            ),
            body: state.deleteStatus.maybeWhen(
              processing: () {
                return const Center(
                  child: MACircularProgressIndicator(),
                );
              },
              orElse: () {
                return VerticalRhythm(
                  topChildren: [
                    RelationalPadding(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MASpacing.xxl(),
                          Text(
                            _localizations.paymentAccount,
                            style: textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          MASpacing.xxl(),
                          MASpacing.s(),
                          BlocBuilder<SiteBloc, SiteState>(
                            bloc: _siteBloc,
                            builder: (context, state) {
                              return SiteAddress(
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
                          MASpacing.xxl(),
                          state.paymentAccounts.maskedBankAccountNumber != ""
                              ? PaymentAccountInfoCard(
                                  iconPath: 'assets/bank-account.svg',
                                  bankAccountType: _paymentAccountsBloc.state.paymentAccounts.bankAccountOption.bankAccountType,
                                  //TODO: Change to real data when API is ready
                                  nameBankAccount: "",
                                  numberBankAccount: _paymentAccountsBloc.state.paymentAccounts.maskedBankAccountNumber,
                                )
                              : Column(
                                  children: [
                                    Center(
                                      child: SvgPicture(
                                        width: width / 3 * 2,
                                        SvgAssetLoader(
                                          Illustrations.noPaymentDue(context),
                                          colorMapper: SvgColorMapper(
                                            fromColor: colorPlaceHolder,
                                            toColor:
                                                colorPalette.buttonPrimaryBg,
                                          ),
                                        ),
                                      ),
                                    ),
                                    MASpacing.xxl(),
                                  ],
                                ),
                        ],
                      ),
                    ),
                  ],
                  bottomChildren: [
                    state.paymentAccounts.maskedBankAccountNumber != ""
                        ? Container(
                            color: colorPalette.surfaceContainerLowest,
                            height: 50,
                          )
                        : RelationalPadding(
                            child: Column(
                              children: [
                                MAElevatedButton.primary(
                                  text: _localizations.addAPaymentAccount.toUpperCase(),
                                  onPressed: () {
                                    context.pushNamed(
                                      PaymentAccountRoutes.paymentAccountCreation.name!,
                                    );
                                  },
                                ),
                                MASpacing.xxl(),
                              ],
                            ),
                          ),
                  ],
                  middleColor: colorPalette.surfaceContainerLowest,
                  middleHeight: 40,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
