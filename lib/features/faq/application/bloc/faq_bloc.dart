import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/faq/domain/entities/faq_question.dart';
import 'package:resident_app/features/faq/domain/repositories/faq_repository.dart';

part 'faq_bloc.freezed.dart';
part 'faq_event.dart';
part 'faq_state.dart';

class FaqBloc extends Bloc<FaqEvent, FaqState> {
  FaqBloc({
    required FaqRepository faqRepository,
  })  : _faqRepository = faqRepository,
        super(const FaqState()) {
    on<_GetQuestionsEvent>(_onGetQuestionsEvent);
    on<_FilterQuestionsEvent>(_onFilterQuestionsEvent);
  }

  final FaqRepository _faqRepository;

  void _onGetQuestionsEvent(
    _GetQuestionsEvent event,
    Emitter<FaqState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const _Loading(),
      ),
    );

    final questionsOrFailure = await _faqRepository.getQuestions();

    questionsOrFailure.fold(
      (failure) {
        emit(
          state.copyWith(status: _Failure(failure.message)),
        );
      },
      (questions) {
        emit(
          state.copyWith(
            questions: questions,
            filteredQuestions: questions,
            status: const _Success(),
          ),
        );
      },
    );
  }

  void _onFilterQuestionsEvent(
    _FilterQuestionsEvent event,
    Emitter<FaqState> emit,
  ) async {
    final query = event.query;

    if (query.isEmpty) {
      emit(
        state.copyWith(
          filteredQuestions: state.questions,
        ),
      );
      return;
    }

    final filteredQuestions = state.questions
        .where((q) =>
            q.section.toLowerCase().contains(query.toLowerCase()) ||
            q.question.toLowerCase().contains(query.toLowerCase()))
        .toList();

    emit(
      state.copyWith(
        filteredQuestions: filteredQuestions,
      ),
    );
  }
}
