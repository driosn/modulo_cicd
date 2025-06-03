import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/delete_my_account/presentation/views/delete_myaccount_view.dart';

import '../user/application/bloc/user_bloc.dart';

class DeleteMyAccountRoutes implements RoutesGroup {
  static final deleteaccount = GoRoute(
    name: 'delete-account',
    path: 'delete-account',
    builder: (BuildContext context, state) {
          locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.deleteMyAccount());
          return  DeleteMyAccountView();
    },
  );
  @override
  List<RouteBase> get routes => [
        deleteaccount,
      ];
}

