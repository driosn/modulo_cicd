import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_info_card.dart';
import 'package:resident_app/features/register_site/routes.dart';
import 'package:resident_app/features/user/user_feature.dart';

class ConfirmSiteView extends StatelessWidget {
  const ConfirmSiteView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    final userBloc = locator<UserBloc>();

    return Scaffold(
      drawer: MADrawer(
        items: MADrawer.defaultItems,
      ),
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        //Register a site internationalization
        title: Text(localizations.makeAPayment),
      ),
      body: Container(
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Confirm Your Site",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              const RelationalSpace(),
              const SizedBox(
                height: 8,
              ),
              //this is the property name
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Fairfield Village",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SiteInfoCard(
                site: userBloc.state.user.primarySite,
              ),
              MAElevatedButton.secondary(
                text: "NO, IT'S NOT MY SITE",
              ),
              MAElevatedButton.primary(
                text: "YES, THIS IS MY SITE",
                onPressed: () {
                  context.goNamed(RegisterSiteRoutes.thankYou.name!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
