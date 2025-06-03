import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/features/participating_retailers/presentation/view/participating_retailers_view.dart';

class ParticipatingRetailersRoutes implements RoutesGroup {
  static final participatingRetailers = GoRoute(
    name: 'participating-retailers',
    path: 'participating-retailers',
    builder: (BuildContext context, state) {
      return const ParticipatingRetailersView();
    },
  );

  @override
  List<RouteBase> get routes => [
        participatingRetailers,
      ];
}
