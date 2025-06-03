import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/drawers/site_selector_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/shared/helpers/scaler_factor_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/autopay.dart';
import 'package:resident_app/features/bills_and_payments/application/bloc/payments_bloc.dart';
import 'package:resident_app/features/bills_and_payments/presentation/widgets/payments_tab_view.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/user_feature.dart';

class PaymentsView extends StatefulWidget {
  const PaymentsView({super.key});

  @override
  State<PaymentsView> createState() => _PaymentsViewState();
}

class _PaymentsViewState extends State<PaymentsView> {
  //
  // Keys
  //
  final _scaffoldKey = GlobalKey<ScaffoldState>();

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

  @override
  void initState() {
    _localizations = locator<MaLocalizations>().I;
    _scaleFactorHelper = ScalerFactorHelper();
    _getPayments();
    super.initState();
  }

  void _openDrawer() => _scaffoldKey.currentState?.openDrawer();

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
    final colorPalette = locator<ColorPalette>();

    return Scaffold(
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
          _localizations.drawerPaymentsHistory,
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
              padding: const EdgeInsets.symmetric(
                vertical: 12,
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
                    return SiteInfoCard.dark(
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
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            RelationalPadding(
              child: BlocBuilder<PaymentsBloc, PaymentsState>(
                bloc: locator<PaymentsBloc>(),
                builder: (context, state) {
                  return PaymentsTabView(
                    scaleFactor: scaleFactor,
                    payments: state.paymentHistory.payments,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
