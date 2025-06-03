import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/drawers/site_selector_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay_settings/autopay_settings_bloc.dart';
import 'package:resident_app/features/autopay/presentation/enums/autopay_drawer_type_enums.dart';
import 'package:resident_app/features/autopay/presentation/widgets/payment_account_drawer.dart';
import 'package:resident_app/features/autopay/presentation/widgets/rent_and_loans_section.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_payment_account_card.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';

class AutoPayLandingView extends StatefulWidget {
  const AutoPayLandingView({super.key});
  @override
  State<AutoPayLandingView> createState() => _AutoPayLandingViewState();
}

class _AutoPayLandingViewState extends State<AutoPayLandingView> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _selectedDrawer =
      ValueNotifier<AutopayDrawerType>(AutopayDrawerType.main);
  void _openDrawer() => _scaffoldKey.currentState?.openDrawer();
  final SiteBloc _siteBloc = locator<SiteBloc>();
  final AutoPaySettingsBloc _autopaySettingsBloc =
      locator<AutoPaySettingsBloc>();
  final PaymentAccountsBloc _paymentAccountsBloc =
      locator<PaymentAccountsBloc>();
  @override
  void initState() {
    _paymentAccountsBloc.add(
      PaymentAccountsEvent.getPaymentAccounts(
        residentId: _siteBloc.state.selectedSite.resident.residentId,
      ),
    );

    _autopaySettingsBloc.state.status.whenOrNull(
      initial: () {
        _autopaySettingsBloc.add(
          AutoPaySettingsEvent.fetch(
            locator<SiteBloc>().state.selectedSite.resident.residentId,
          ),
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    final localizations = locator<MaLocalizations>().I;
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      drawer: ValueListenableBuilder(
        valueListenable: _selectedDrawer,
        builder: (context, openDrawer, child) {
          if (openDrawer == AutopayDrawerType.sitePaymentAccount) {
            return PaymentAccountDrawer(
              onClosedDrawer: () =>
                  _selectedDrawer.value = AutopayDrawerType.main,
            );
          }
          if (openDrawer == AutopayDrawerType.sites) {
            return SiteSelectorDrawer(
              onSelectedSite: (site) {
                _siteBloc.add(SiteEvent.setSite(site));
              },
              onClosedDrawer: () =>
                  _selectedDrawer.value = AutopayDrawerType.main,
            );
          }
          return MADrawer();
        },
      ),
      key: _scaffoldKey,
      appBar: MAAppBar(
        bottom: const MABottomAppBar(),
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        title: Text(
          localizations.autoPay,
        ),
      ),
      body: BlocBuilder<AutoPaySettingsBloc, AutoPaySettingsState>(
        bloc: _autopaySettingsBloc,
        builder: (context, autopaySettingsState) {
          return BlocConsumer<SiteBloc, SiteState>(
            bloc: _siteBloc,
            listener: (context, state) {},
            builder: (context, state) {
              return BlocBuilder<PaymentAccountsBloc, PaymentAccountsState>(
                bloc: _paymentAccountsBloc,
                builder: (context, state) {
                  return state.paymentAccountsStatus ==
                          PaymentAccountsStatus.loading
                      ? const Center(
                          child: MACircularProgressIndicator(),
                        )
                      : autopaySettingsState.status.maybeWhen(
                          loading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          orElse: () => Stack(
                            children: [
                              RelationalPadding(
                                addVerticalPadding: false,
                                child: ListView(
                                  children: [
                                    MASpacing.xxl(),
                                    Text(
                                      localizations.autoPay,
                                      style: textTheme.titleLarge?.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    MASpacing.l(),
                                    MASpacing.s(),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: BlocBuilder<SiteBloc, SiteState>(
                                        bloc: _siteBloc,
                                        buildWhen: (previous, current) {
                                          if (previous.selectedSite !=
                                              current.selectedSite) {
                                            _paymentAccountsBloc.add(
                                              PaymentAccountsEvent
                                                  .getPaymentAccounts(
                                                residentId: _siteBloc
                                                    .state
                                                    .selectedSite
                                                    .resident
                                                    .residentId,
                                              ),
                                            );
                                            return true;
                                          }
                                          return false;
                                        },
                                        builder: (context, state) {
                                          return SiteAddress(
                                            site: state.selectedSite,
                                            iconColor:
                                                colorPalette.iconBaseTextIcon,
                                            textColor: colorPalette.textBase,
                                            onTap: () {
                                              _selectedDrawer.value =
                                                  AutopayDrawerType.sites;
                                              _openDrawer();
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    state.paymentAccounts
                                                .maskedBankAccountNumber !=
                                            ""
                                        ? Column(
                                            children: [
                                              MASpacing.s(),
                                              InkWell(
                                                child: SitePaymentAccountCard(
                                                  paymentAccountsNumber: state
                                                      .paymentAccounts
                                                      .maskedBankAccountNumber,
                                                ),
                                                onTap: () {
                                                  _selectedDrawer.value =
                                                      AutopayDrawerType
                                                          .sitePaymentAccount;
                                                  _openDrawer();
                                                },
                                              ),
                                              MASpacing.s(),
                                            ],
                                          )
                                        : const SizedBox.shrink(),
                                    BlocBuilder<SiteBloc, SiteState>(
                                        bloc: _siteBloc,
                                        builder: (context, state) {
                                          return RentAndLoansSection(
                                            selectedSite: state.selectedSite,
                                          );
                                        }),
                                  ],
                                ),
                              ),
                              BlocBuilder<AutoPayBloc, AutoPayState>(
                                bloc: locator<AutoPayBloc>(),
                                builder: (context, state) {
                                  if (state.isAutopaySettings) {
                                    return Container(
                                      color: colorPalette.layoutScrimSurface
                                          .withOpacity(0.75),
                                    );
                                  } else {
                                    return const SizedBox.shrink();
                                  }
                                },
                              ),
                            ],
                          ),
                        );
                },
              );
            },
          );
        },
      ),
    );
  }
}
