import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/auth/log_in_help/domain/entities/log_in_help_question.dart';
import 'package:resident_app/features/auth/log_in_help/domain/repositories/log_in_help_repository.dart';

part 'log_in_help_bloc.freezed.dart';

class LogInHelpBloc extends Bloc<LogInHelpEvent, LogInHelpState> {
  LogInHelpBloc({
    required LogInHelpRepository logInHelpRepository,
  })  : _logInHelpRepository = logInHelpRepository,
        super(_Initial()) {
    on<_GetQuestionsEvent>(_onGetQuestionsEvent);
  }

  final LogInHelpRepository _logInHelpRepository;

  FutureOr<void> _onGetQuestionsEvent(
    _GetQuestionsEvent event,
    Emitter<LogInHelpState> emit,
  ) async {
    emit(_Loading());
    final questionsOrFailure = await _logInHelpRepository.getQuestions();
    questionsOrFailure.fold(
      (error) => emit(_Failure(error.message)),
      (questions) => emit(_Success(questions)),
    );
  }
}

@freezed
class LogInHelpEvent with _$LogInHelpEvent {
  const factory LogInHelpEvent.getQuestions() = _GetQuestionsEvent;
}

@freezed
class LogInHelpState with _$LogInHelpState {
  const factory LogInHelpState.initial() = _Initial;
  const factory LogInHelpState.loading() = _Loading;
  const factory LogInHelpState.success(List<LogInHelpQuestion> questions) = _Success;
  const factory LogInHelpState.failure(String message) = _Failure;
}
