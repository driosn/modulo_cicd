import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/billing_settings/routes.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class ThankYouView extends StatelessWidget {
  ThankYouView({super.key});

  final colorPalette = locator<ColorPalette>();
  final localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    //TODo: Replace logic with the fetched from api
    final site = locator<UserBloc>().state.user.primarySite;

    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      drawer: MADrawer(
        items: MADrawer.defaultItems,
      ),
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        //Register a site internationalization
        title: Text(localizations.drawerMyAccountRegister),
      ),
      body: VerticalRhythm(
        topChildren: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: colorPalette.appBarAccent,
                  width: 6,
                ),
              ),
            ),
            child: RelationalPadding(
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    localizations.thankYou,
                    //add style
                    style: theme.textTheme.titleLarge,
                  ),
                  const RelationalSpace(),
                  const SizedBox(
                    height: 8,
                  ),
                  Icon(
                    Icons.check_circle_rounded,
                    color: colorPalette.tertiary700,
                    size: MediaQuery.of(context).size.width / 4,
                  ),
                  const RelationalSpace(),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(site.propertyName,
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  Text(site.address1),
                  if (site.address2 != '') Text(site.address2),
                  Text('${site.city}, ${site.state} ${site.zipCode}'),
                  const SizedBox(
                    height: 16,
                  ),
                  Divider(color: colorPalette.tertiary700),
                  const SizedBox(
                    height: 16,
                  ),
                  IconTile(
                      icon: Icons.monetization_on_outlined,
                      text: localizations.setupAutoPay,
                      route: AutopayRoutes.autopayLandingView),
                  IconTile(
                      icon: Icons.circle_notifications_outlined,
                      text: localizations.setupBillingPreferences,
                      route: BillingSettingsRoutes.billingSettingsV1),
                ],
              ),
            ),
          ),
        ],
        bottomChildren: [
          RelationalPadding(
              child: Column(
            children: [
              MAElevatedButton.secondary(
                text: localizations.skipSetUpForNow,
                onPressed: () {
                  context.replaceNamed(CoreRoutes.home.name!);
                },
              ),
              const RelationalSpace(),
              const SizedBox(
                height: 10,
              ),
            ],
          )),
        ],
        middleColor: colorPalette.surfaceContainerLowest,
        middleHeight: 80,
      ),
    );
  }
}

class IconTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final GoRoute route;

  const IconTile(
      {super.key, required this.icon, required this.text, required this.route});
  @override
  build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        icon,
        color: colorPalette.navigationDrawerIconText,
        size: 36,
      ),
      onTap: () {},
      title: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: colorPalette.navigationDrawerIconText),
      ),
      trailing: InkWell(
          child: Icon(
            Icons.keyboard_arrow_right,
            color: colorPalette.outline,
            size: 36,
          ),
          onTap: () {
            context.goNamed(route.name!);
          }),
    );
  }
}
