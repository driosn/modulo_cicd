import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension PopUntilExtension on BuildContext {
  void popUntilNamed<T extends Object?>(String name, [T? result]) {
    final router = GoRouter.of(this);

    while (router
            .routerDelegate.currentConfiguration.matches.last.matchedLocation
            .contains(name) ==
        false) {
      if (!canPop()) {
        return;
      }
      pop(result);
    }
  }
}
