import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/drawers/site_selector_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/cashpay/presentation/widgets/cash_provider_card.dart';
import 'package:resident_app/features/cashpay/presentation/widgets/drawers/cashpay_no_payment_drawer.dart';
import 'package:resident_app/features/cashpay/presentation/widgets/drawers/cashpay_payment_due_drawer.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

enum CashPayDrawer {
  paymentDue,
  siteSelector,
  menu,
}

class CashPayLandingView extends StatefulWidget {
  const CashPayLandingView({super.key});

  @override
  State<CashPayLandingView> createState() => _CashPayLandingViewState();
}

class _CashPayLandingViewState extends State<CashPayLandingView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final _userBloc = locator<UserBloc>();
  final _siteBloc = locator<SiteBloc>();
  final _colorPalette = locator<ColorPalette>();

  final _drawerToOpenNotifier = ValueNotifier<CashPayDrawer>(CashPayDrawer.menu);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _drawerToOpenNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: MAAppBar(
        maAppBarType: MAAppBarType.blue,
        title: Text(
          localizations.cashPay,
        ),
      ),
      drawer: ValueListenableBuilder<CashPayDrawer>(
        valueListenable: _drawerToOpenNotifier,
        builder: (context, selectedCashPayDrawer, child) {
          if (selectedCashPayDrawer == CashPayDrawer.paymentDue) {
            if (_userBloc.state.user.primarySite.residentBalance.loans.isEmpty) {
              return CashPayNoPaymentDrawer(
                onClosedDrawer: () => _drawerToOpenNotifier.value = CashPayDrawer.menu,
              );
            }

            return CashPayPaymentDueDrawer(
              onClosedDrawer: () => _drawerToOpenNotifier.value = CashPayDrawer.menu,
            );
          }

          if (selectedCashPayDrawer == CashPayDrawer.siteSelector) {
            return SiteSelectorDrawer(
              onClosedDrawer: () => _drawerToOpenNotifier.value = CashPayDrawer.menu,
            );
          }

          return MADrawer();
        },
      ),
      body: Column(
        children: [
          MADivider(
            height: 5,
            color: colorPalette.appBarAccent,
          ),
          Expanded(
              child: RelationalPadding(
            child: SingleChildScrollView(
              child: BlocBuilder<SiteBloc, SiteState>(
                bloc: _siteBloc,
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MASpacing.xxl(),
                      Text(
                        localizations.cashPay,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      MASpacing.xxl(),
                      Text(
                        localizations.cashPayDescription,
                      ),
                      MASpacing.xxl(),
                      SiteAddress(
                        site: state.selectedSite,
                        iconColor: colorPalette.iconBaseTextIcon,
                        textColor: colorPalette.textBase,
                        onTap: () {
                          _drawerToOpenNotifier.value = CashPayDrawer.siteSelector;
                          _scaffoldKey.currentState?.openDrawer();
                        },
                      ),
                      MASpacing.xxl(),
                      if (state.selectedSite.resident.cashPaySettings.westernUnionAccountNumber.isNotEmpty)
                        CashPaymentProviderCard(
                          type: CashPaymentProviderType.westernUnion,
                          title: localizations.westernUnionAccount,
                          subTitle: localizations.westernUnionFee,
                          name: "${state.selectedSite.resident.firstName} ${state.selectedSite.resident.lastName}",
                          code: state.selectedSite.resident.cashPaySettings.westernUnionAccountNumber,
                          posName: state.selectedSite.resident.cashPaySettings.westernUnionPosName,
                          posCodeCity: state.selectedSite.resident.cashPaySettings.westernUnionCodeCity,
                          onTapFindALocation: () => launchUrl(
                            Uri.parse(westernUnionPayUrl),
                          ),
                        ),
                      if (state.selectedSite.resident.cashPaySettings.payLeaseCardNumber != 0)
                        Column(
                          children: [
                            MASpacing.l(),
                            CashPaymentProviderCard(
                              type: CashPaymentProviderType.zego,
                              title: localizations.zegoPayLeaseCard,
                              subTitle: localizations.zegoFee,
                              name: "${state.selectedSite.resident.firstName} ${state.selectedSite.resident.lastName}",
                              code: state.selectedSite.resident.cashPaySettings.payLeaseCardNumber.toString(),
                              onTapFindALocation: () => launchUrl(
                                Uri.parse(zegoPayUrl),
                              ),
                            ),
                          ],
                        ),
                      if (!state.selectedSite.resident.isCashPayConfigured) Text(localizations.cashPayNoAccount, style: textTheme.titleSmall),

                      MASpacing.xxl(),
                      //TODO START Hide this feature for post MVP, it will be implemented in the future
                      // InkWell(
                      //   onTap: () {
                      //     _drawerToOpenNotifier.value = CashPayDrawer.paymentDue;
                      //     _scaffoldKey.currentState?.openDrawer();
                      //   },
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Text(
                      //         localizations.showPaymentDueTile,
                      //         style: Theme.of(context).textTheme.bodyMedium,
                      //       ),
                      //       Icon(
                      //         Icons.keyboard_arrow_right,
                      //         color: _colorPalette.outline,
                      //         size: 36,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      //TODO END Hide this feature for post MVP, it will be implemented in the future
                      MASpacing.xxl(),
                      MASpacing.s(),
                      SizedBox(
                        height: MediaQuery.of(context).viewPadding.bottom,
                      )
                    ],
                  );
                },
              ),
            ),
          ))
        ],
      ),
    );
  }
}
