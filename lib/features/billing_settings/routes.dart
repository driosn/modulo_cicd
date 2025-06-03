import 'package:go_router/go_router.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/billing_settings/presentation/views/billing_settings_view_v1.dart';
import 'package:resident_app/features/billing_settings/presentation/views/billing_settings_view_v2.dart';

import '../../core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';

class BillingSettingsRoutes implements RoutesGroup {
  static final billingSettingsV2 = GoRoute(
    name: 'billing_settings_v2',
    path: 'billing-settings_v2',
    builder: (context, __) {
      locator<NavigationDrawerBloc>().add(const NavigationDrawerEvent.paymentsBillsPayments());
      return const BillingSettingsViewV2();
    },
  );
  static final billingSettingsV1 = GoRoute(
    name: 'billing_settings_v1',
    path: 'billing-settings_v1',
    builder: (context, __) {
      locator<NavigationDrawerBloc>().add(const NavigationDrawerEvent.paymentsBillsPayments());
      return const BillingSettingsViewV1();
    },
  );
  @override
  List<RouteBase> get routes => [
        billingSettingsV1,
        // billingSettingsV2,
      ];
}
