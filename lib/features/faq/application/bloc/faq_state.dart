part of 'faq_bloc.dart';

@freezed
class FaqStatus with _$FaqStatus {
  const factory FaqStatus.initial() = _Initial;
  const factory FaqStatus.loading() = _Loading;
  const factory FaqStatus.success() = _Success;
  const factory FaqStatus.failure(String message) = _Failure;
}

@freezed
class FaqState with _$FaqState {
  const factory FaqState({
    @Default(<FaqQuestion>[]) List<FaqQuestion> questions,
    @Default(<FaqQuestion>[]) List<FaqQuestion> filteredQuestions,
    @Default(FaqStatus.initial()) FaqStatus status,
  }) = _FaqState;
}
