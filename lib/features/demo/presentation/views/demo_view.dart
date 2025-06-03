import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/routes.dart';
import 'package:resident_app/features/demo/routes.dart';

class DemoView extends StatelessWidget {
  const DemoView({super.key});
  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        bottom: const MABottomAppBar(),
        title: Text(
          'Manage America',
          style: textTheme.bodyMedium!.copyWith(
            color: colorPalette.appBarTextIcon,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: ListTile.divideTiles(
            context: context,
            color: colorPalette.primary300,
            tiles: [
              ListTile(
                title: Text(
                  'Components',
                  style: textTheme.bodyMedium,
                ),
                onTap: () => context.goNamed(DemoRoutes.demoComponents.name!),
              ),
              ListTile(
                title: Text(
                  'Typography',
                  style: textTheme.bodyMedium,
                ),
                tileColor: colorPalette.surfaceContainerLowest,
                onTap: () => context.goNamed(DemoRoutes.demoTypography.name!),
              ),
              ListTile(
                title: Text(
                  'Color palette',
                  style: textTheme.bodyMedium,
                ),
                onTap: () =>
                    context.goNamed(DemoRoutes.demoColorsPalette.name!),
              ),
              ListTile(
                title: Text(
                  'Register flow',
                  style: textTheme.bodyMedium,
                ),
                onTap: () => context.goNamed(LegacyRoutes.explainer.name!),
              ),
            ],
          ).toList(),
        ),
      ),
    );
  }
}
