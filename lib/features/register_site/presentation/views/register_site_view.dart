import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/register_site/presentation/widgets/register_site_widgets.dart';

class RegisterSiteView extends StatelessWidget {
  const RegisterSiteView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
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
        topChildren: const [
          TopRegisterSite(),
        ],
        bottomChildren: [
          BottomRegisterSite(
            key: key,
          ),
        ],
        middleColor: colorPalette.surfaceContainerLowest,
        middleHeight: 80,
      ),
    );
  }
}
