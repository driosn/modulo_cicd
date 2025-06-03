import 'package:go_router/go_router.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/features/document_acceptance/presentation/views/document_acceptance_view.dart';

class DocumentAcceptanceRoutes implements RoutesGroup {
  static final documentAcceptance = GoRoute(
    name: 'document-acceptance',
    path: 'document-acceptance',
    builder: (_, __) {
      return DocumentAcceptanceView();
    },
  );

  @override
  List<RouteBase> get routes => [
        documentAcceptance,
      ];
}
