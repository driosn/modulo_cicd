import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/drawers/site_selector_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/helpers/scaler_factor_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/bills_and_payments/application/bloc/billings_bloc.dart';
import 'package:resident_app/features/bills_and_payments/application/bloc/payments_bloc.dart';
import 'package:resident_app/features/bills_and_payments/presentation/widgets/bills_and_payments_tabs.dart';
import 'package:resident_app/features/bills_and_payments/presentation/widgets/bills_tab_view.dart';
import 'package:resident_app/features/bills_and_payments/presentation/widgets/payments_tab_view.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/user_feature.dart';

class BillsAndPaymentsView extends StatefulWidget {
  const BillsAndPaymentsView({super.key});

  @override
  State<BillsAndPaymentsView> createState() => _BillsAndPaymentsViewState();
}

class _BillsAndPaymentsViewState extends State<BillsAndPaymentsView> with SingleTickerProviderStateMixin {
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
  late AppLocalizations _localizations;

  //
  // Helpers
  //
  late ScalerFactorHelper _scaleFactorHelper;

  //
  // Notifiers
  //
  final _openSiteSelectorDrawer = ValueNotifier<bool>(false);

  //
  // Bloc
  //
  final _userBloc = locator<UserBloc>();
  final _siteBloc = locator<SiteBloc>();
  final _paymentsBloc = locator<PaymentsBloc>();
  final _billingsBloc = locator<BillingsBloc>();

  @override
  void initState() {
    _localizations = locator<MaLocalizations>().I;
    _tabController = TabController(
      vsync: this,
      length: 2,
    );
    _scaleFactorHelper = ScalerFactorHelper();
    _getPayments();
    _getBillings();
    super.initState();
  }

  void _openDrawer() => _scaffoldKey.currentState?.openDrawer();

  void _getBillings() {
    _billingsBloc.add(
      BillingsEvent.getBillings(
        companyId: _userBloc.state.user.companyId,
        residentId: _siteBloc.state.selectedSite.resident.residentId,
      ),
    );
  }

  void _getPayments() {
    _paymentsBloc.add(
      PaymentsEvent.getPayments(
        propertyId: _siteBloc.state.selectedSite.resident.residentId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final scaleFactor = _scaleFactorHelper.getFactor(
      MediaQuery.of(context).textScaler,
    );
    final scalerConfig = locator<ScalerConfig>();
    final colorPalette = locator<ColorPalette>();

    return MultiBlocListener(
      listeners: [
        BlocListener<SiteBloc, SiteState>(
          bloc: _siteBloc,
          listener: (context, state) {
            _getBillings();
            _getPayments();
          },
        ),
        BlocListener<PaymentsBloc, PaymentsState>(
          bloc: _paymentsBloc,
          listener: (context, state) {
            if (state.paymentsStatus == PaymentsStatus.loading) {
              // context.showLoader();
            } else if (state.paymentsStatus == PaymentsStatus.failure) {
              // TODO: Show error message according to Gretchen's recommendation
              // context.closeAnyOpenedDialog();
            } else if (state.paymentsStatus == PaymentsStatus.success) {
              //TODO: migrate unnecersarie modal running
              // context.closeAnyOpenedDialog();
            }
          },
        ),
      ],
      child: Scaffold(
        key: _scaffoldKey,
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
        backgroundColor: colorPalette.surfaceContainerLowest,
        appBar: MAAppBar(
          iconTheme: IconThemeData(
            color: colorPalette.appBarTextIcon,
          ),
          maAppBarType: MAAppBarType.blue,
          title: Text(
            _userBloc.state.user.primarySite.isBilling ? _localizations.billsAndPayment : _localizations.drawerPaymentsHistory,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: colorPalette.appBarTextIcon,
                ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: scalerConfig.spacingM,
                ),
                decoration: BoxDecoration(
                  color: colorPalette.appBarBg,
                  border: Border(
                    bottom: BorderSide(
                      color: colorPalette.appBarAccent,
                      width: 5,
                    ),
                  ),
                ),
                child: RelationalPadding(
                  child: BlocBuilder<SiteBloc, SiteState>(
                    bloc: _siteBloc,
                    builder: (context, state) {
                      return SiteAddress(
                        site: state.selectedSite,
                        iconColor: colorPalette.appBarTextIcon,
                        textColor: colorPalette.appBarTextIcon,
                        onTap: () {
                          if (_userBloc.state.user.associatedSites.isNotEmpty) {
                            _openSiteSelectorDrawer.value = true;
                            _openDrawer();
                          }
                        },
                      );
                    },
                  ),
                ),
              ),
              RelationalPadding(
                child: Column(
                  children: [
                    MASpacing.xl(),
                    MASpacing.s(),
                    BillsAndPaymentsTabs(
                      scaleFactor: scaleFactor,
                      tabController: _tabController,
                    ),
                    MASpacing.xl(),
                    MASpacing.s(),
                    AnimatedBuilder(
                      animation: _tabController,
                      builder: (context, child) {
                        return IndexedStack(
                          index: _tabController.index,
                          children: [
                            Visibility(
                              visible: _tabController.index == 0,
                              child: BlocBuilder<BillingsBloc, BillingsState>(
                                bloc: locator<BillingsBloc>(),
                                builder: (context, state) {
                                  return state.billingsStatus == BillingsStatus.success
                                      ? BillsTabView(
                                          billings: state.billingHistory.billings,
                                        )
                                      : const SizedBox.shrink();
                                },
                              ),
                            ),
                            Visibility(
                              visible: _tabController.index == 1,
                              child: SizedBox(
                                child: BlocBuilder<PaymentsBloc, PaymentsState>(
                                  bloc: locator<PaymentsBloc>(),
                                  builder: (context, state) {
                                    return PaymentsTabView(
                                      scaleFactor: scaleFactor,
                                      payments: state.paymentHistory.payments,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
