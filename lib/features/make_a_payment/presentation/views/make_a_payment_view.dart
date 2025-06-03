import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/flexpay_dialog.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/drawers/site_selector_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/presentation/widgets/payment_suspended_info_card.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_fixed_spacing.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/make_a_payment/application/bloc/make_a_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/presentation/widgets/landing/make_a_payment_section.dart';
import 'package:resident_app/features/make_a_payment/presentation/widgets/make_a_payment_widgets_views.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/user_feature.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';

class MakeAPaymentView extends StatefulWidget {
  const MakeAPaymentView({super.key});

  @override
  State<MakeAPaymentView> createState() => _MakeAPaymentViewState();
}

class _MakeAPaymentViewState extends State<MakeAPaymentView> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _openSiteSelectorDrawer = ValueNotifier<bool>(false);

  void _openDrawer() => _scaffoldKey.currentState?.openDrawer();

  late final SiteBloc _siteBloc;
  late final UserBloc _userBloc;
  late final PaymentAccountsBloc _paymentAccountsBloc;
  late final MakeAPaymentBloc _makeAPaymentBloc;

  ///
  /// Others
  ///
  late final PrimarySite _selectedSite;

  @override
  void initState() {
    _initBlocs();

    _selectedSite = _siteBloc.state.selectedSite;

    _getPaymentAccounts();
    _initPossiblePayments();
    super.initState();
  }

  void _initBlocs() {
    _siteBloc = locator<SiteBloc>();
    _userBloc = locator<UserBloc>();
    _makeAPaymentBloc = locator<MakeAPaymentBloc>();
    _paymentAccountsBloc = locator<PaymentAccountsBloc>();
  }

  void _getPaymentAccounts() {
    _paymentAccountsBloc.add(
      PaymentAccountsEvent.getPaymentAccounts(
        residentId: _siteBloc.state.selectedSite.resident.residentId,
      ),
    );
  }

  void _initPossiblePayments() {
    _makeAPaymentBloc.add(
      MakeAPaymentEvent.initSelectablePayments(
        _selectedSite,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    final scalerConfig = locator<ScalerConfig>();
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      drawer: ValueListenableBuilder(
        valueListenable: _openSiteSelectorDrawer,
        builder: (context, openSiteSelectorDrawer, child) {
          if (openSiteSelectorDrawer) {
            return SiteSelectorDrawer(
              onClosedDrawer: () => _openSiteSelectorDrawer.value = false,
            );
          }
          return MADrawer(
            items: MADrawer.defaultItems,
          );
        },
      ),
      key: _scaffoldKey,
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        title: Text(localizations.makeAPayment),
      ),
      body: BlocBuilder<PaymentAccountsBloc, PaymentAccountsState>(
        bloc: _paymentAccountsBloc,
        builder: (context, state) {
          return state.paymentAccountsStatus == PaymentAccountsStatus.loading
              ? const Center(
                  child: MACircularProgressIndicator(),
                )
              : Column(
                  children: [
                    BlocBuilder<SiteBloc, SiteState>(
                      bloc: locator<SiteBloc>(),
                      builder: (context, state) {
                        return Column(
                          children: [
                            MADivider(
                              height: 6.0,
                              color: colorPalette.appBarAccent,
                            ),
                            MASpacing.xxl(),
                            RelationalPadding(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      localizations.paymentDue,
                                      style: textTheme.titleLarge?.copyWith(
                                        color: colorPalette.textBase,
                                      ),
                                    ),
                                  ),
                                  //TODO: This "i" icon was hide for the MVP. It will be implemented in the future.
                                  // GestureDetector(
                                  //   onTap: () {
                                  //     showModalBottomSheet<void>(
                                  //       context: context,
                                  //       isScrollControlled: true,
                                  //       builder: (BuildContext context) {
                                  //         return PaymentExplainer();
                                  //       },
                                  //     );
                                  //   },
                                  //   child: MAScaler(
                                  //     child: Icon(
                                  //       Icons.info_outline,
                                  //       color: _colorPalette.primaryBase,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            Container(
                              height: MAFixedSpacing.l,
                              width: double.infinity,
                              color: Colors.white,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 24,
                                right: 24,
                                top: scalerConfig.spacingM,
                                bottom: scalerConfig.spacingXL,
                              ),
                              color: Colors.white,
                              child: SiteAddress(
                                padding: EdgeInsets.symmetric(
                                  vertical: scalerConfig.spacingM,
                                ),
                                site: state.selectedSite,
                                iconColor: colorPalette.iconBaseTextIcon,
                                textColor: colorPalette.textBase,
                                onTap: () {
                                  if (_userBloc
                                      .state.user.associatedSites.isNotEmpty) {
                                    _openSiteSelectorDrawer.value = true;
                                    _openDrawer();
                                  }
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: _MakeAPaymentBody(
                          makeAPaymentBloc: _makeAPaymentBloc,
                        ),
                      ),
                    )
                  ],
                );
        },
      ),
    );
  }
}

class _MakeAPaymentBody extends StatefulWidget {
  const _MakeAPaymentBody({
    required this.makeAPaymentBloc,
  });

  final MakeAPaymentBloc makeAPaymentBloc;

  @override
  State<_MakeAPaymentBody> createState() => _MakeAPaymentBodyState();
}

class _MakeAPaymentBodyState extends State<_MakeAPaymentBody> {
  final ColorPalette _colorPalette = locator<ColorPalette>();

  final _localizations = locator<MaLocalizations>().I;

  final userBloc = locator<UserBloc>();
  final siteBloc = locator<SiteBloc>();
  final colorPalette = locator<ColorPalette>();

  late ValueNotifier<bool> _flexPayDialogIsLoading;

  @override
  void initState() {
    _flexPayDialogIsLoading = ValueNotifier<bool>(false);

    _getUser();

    super.initState();
  }

  @override
  void dispose() {
    _flexPayDialogIsLoading.dispose();
    super.dispose();
  }

  void _getUser() {
    userBloc.add(UserEvent.getUser());
  }

  Widget _payWithFlexPay(BuildContext context) {
    final theme = Theme.of(context);

    return TextButton(
      onPressed: () {
        _flexPayDialogIsLoading.value = true;
        showDialog(
          context: context,
          builder: (context) {
            return Stack(
              alignment: Alignment.center,
              children: [
                ValueListenableBuilder<bool>(
                  valueListenable: _flexPayDialogIsLoading,
                  builder: (context, flexPayDialogIsLoading, child) {
                    if (flexPayDialogIsLoading) {
                      return const MACircularProgressIndicator();
                    }
                    return const SizedBox();
                  },
                ),
                FlexPayDialog(
                  onLoadFinished: () {
                    _flexPayDialogIsLoading.value = false;
                  },
                ),
              ],
            );
          },
        );
      },
      child: Text(
        _localizations.payHalfFlex,
        style: theme.textTheme.hyperlink.copyWith(
          shadows: [
            Shadow(
              color: _colorPalette.textLink,
              offset: const Offset(0, -4),
            )
          ],
          decorationColor: _colorPalette.textLink,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return RelationalPadding(
        child: BlocBuilder<SiteBloc, SiteState>(
      bloc: siteBloc,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MASpacing.l(),
            RentSection(
              propertySettings: state.selectedSite.propertySettings,
              residentBalance: state.selectedSite.residentBalance,
              resident: state.selectedSite.resident,
            ),
            userBloc.state.user.primarySite.resident.isOnStopPay
                ? Column(
                    children: [
                      MASpacing.s(),
                      PaymentSuspendedInfoCard(),
                    ],
                  )
                : Column(
                    children: [
                      Loans(
                        loans: state.selectedSite.residentBalance.loans,
                      ),
                      MASpacing.s(),
                      MakeAPaymentSection(
                        makeAPaymentBloc: widget.makeAPaymentBloc,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (state.selectedSite.propertySettings.flexPay) ...[
                        _payWithFlexPay(context),
                        MASpacing.xl(),
                      ],
                      MASpacing.xxl(),
                    ],
                  ),
          ],
        );
      },
    ));
  }
}

class _StopPayBody extends StatelessWidget {
  const _StopPayBody();

  @override
  Widget build(BuildContext context) {
    final scalerConfig = locator<ScalerConfig>();
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;

    return Column(children: [
      const SizedBox(
        height: 16,
      ),
      Container(
        key: key,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 32,
          vertical: scalerConfig.spacingXXL,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: colorPalette.surfaceContainer,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: BlocBuilder<WhitelabelBloc, WhitelabelState>(
          bloc: locator<WhitelabelBloc>(),
          builder: (context, state) {
            return Text(
              localizations.onStopPay(state.whitelabel.appName),
            );
          },
        ),
      ),
    ]);
  }
}
