import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/faq/presentation/views/faq_question_view.dart';
import 'package:resident_app/features/faq/presentation/views/faq_section_view.dart';
import 'package:resident_app/features/faq/presentation/views/faq_view.dart';

class FaqRoutes implements RoutesGroup {
  static final faq = GoRoute(
    name: 'faq',
    path: 'faq',
    builder: (_, __) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.helpFAQ());
      return const FaqView();
    },
  );

  static final faqSection = GoRoute(
    name: 'faq-section',
    path: 'faq-section',
    builder: (_, state) {
      final params = state.extra as FaqSectionViewParams;

      return FaqSectionView(
        sectionTitle: params.sectionTitle,
        questions: params.questions,
      );
    },
  );

  static final faqQuestion = GoRoute(
    name: 'faq-question',
    path: 'faq-question',
    builder: (_, state) {
      final params = state.extra as FaqQuestionViewParams;

      return FaqQuestionView(
        question: params.question,
      );
    },
  );

  @override
  List<RouteBase> get routes => [
        faq,
        faqSection,
        faqQuestion,
      ];
}
