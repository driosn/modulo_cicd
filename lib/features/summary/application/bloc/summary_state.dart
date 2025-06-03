part of 'summary_bloc.dart';

@freezed
class SummaryState with _$SummaryState {
  const factory SummaryState.initial() = _InitialState;
  const factory SummaryState.loading() = _LoadingState;
  const factory SummaryState.success(SummaryContent content) = _SuccessState;
  const factory SummaryState.failure(String message) = _ErrorState;
}
