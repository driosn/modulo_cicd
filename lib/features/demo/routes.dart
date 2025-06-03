import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/features/demo/presentation/views/demo_views.dart';

class DemoRoutes implements RoutesGroup {
  static final demoHome = GoRoute(
      path: 'demo-home',
      name: 'demo_home',
      builder: (context, state) {
        return const DemoView();
      },
      routes: [
        demoTypography,
        demoComponents,
        demoColorsPalette,
      ]);

  static final demoTypography = GoRoute(
    name: 'demo_typography',
    path: 'demo-typography',
    builder: (BuildContext context, GoRouterState state) {
      return const DemoTypographyView();
    },
  );
  static final demoComponents = GoRoute(
    name: 'demo_components',
    path: 'demo-components',
    builder: (BuildContext context, GoRouterState state) {
      return const DemoComponentsView();
    },
  );
  static final demoColorsPalette = GoRoute(
    name: 'demo_color_palette',
    path: 'demo-color-palette',
    builder: (BuildContext context, GoRouterState state) {
      return const DemoColorPaletteView();
    },
  );
  @override
  List<RouteBase> get routes => [demoHome];
}
