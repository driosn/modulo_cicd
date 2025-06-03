import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_popup_menu.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_switch_card.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';

class PayByTextLandingView extends StatefulWidget {
  const PayByTextLandingView({super.key});

  @override
  State<PayByTextLandingView> createState() => _PayByTextLandingViewState();
}

class _PayByTextLandingViewState extends State<PayByTextLandingView> {
  //
  // Localizations
  //
  late AppLocalizations localizations;

  late PayByTextBloc _payByTextBloc;
  late SiteBloc _siteBloc;

  @override
  void initState() {
    _siteBloc = locator<SiteBloc>();
    _payByTextBloc = locator<PayByTextBloc>();
    localizations = locator<MaLocalizations>().I;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();

    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      drawer: MADrawer(),
      appBar: MAAppBar(
        bottom: const MABottomAppBar(),
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        title: Text(
          localizations.payByText,
        ),
        actions: [
          MAPopupMenu(
            menuItems: const [],
            child: Icon(
              Icons.settings_outlined,
              color: colorPalette.appBarTextIcon,
            ),
          ),
        ],
      ),
      body: RelationalPadding(
        addVerticalPadding: true,
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const RelationalSpace(),
            Text(
              localizations.payByText,
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const RelationalSpace(),
            BlocBuilder<SiteBloc, SiteState>(
              bloc: _siteBloc,
              builder: (context, state) {
                return SiteAddress(
                  site: state.selectedSite,
                  iconColor: colorPalette.iconBaseTextIcon,
                  textColor: colorPalette.textBase,
                );
              },
            ),
            const RelationalSpace(),
            const SizedBox(
              height: 10,
            ),
            Divider(
              color: colorPalette.primary300,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Rent",
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const RelationalSpace(),
            Text(
              localizations.siteBalanceSubtitle,
              style: textTheme.bodySmall?.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const RelationalSpace(),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/mobile-phone.svg',
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                    colorPalette.textBase,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    _payByTextBloc.state.mobilePhone.value,
                    style: textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const RelationalSpace(),
            const RelationalSpace(),
            Row(
              children: [
                Icon(
                  Icons.account_balance_outlined,
                  color: colorPalette.iconBaseTextIcon,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    _payByTextBloc.state.name.value,
                    style: textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            const RelationalSpace(),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder(
              bloc: _payByTextBloc,
              builder: (BuildContext context, PayByTextState state) {
                return MASwitchCard(
                  isOn: state.isSetUpPayByText,
                  text: state.isSetUpPayByText
                      ? localizations.payByTextOn
                      : localizations.payByTextOff,
                  onChanged: (bool value) {
                    _payByTextBloc.add(
                        const PayByTextEvent.resetPaymentAccountSettings());
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MAMenuItem<T> extends StatelessWidget {
  const MAMenuItem(
      {super.key,
      required this.menuItem,
      required this.onTap,
      this.isBoldItem = false});

  final T menuItem;
  final VoidCallback onTap;
  final bool isBoldItem;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
