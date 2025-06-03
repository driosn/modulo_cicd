part of 'terms_of_use_bloc.dart';

enum TermsOfUseStatus { initial, loading, loaded, failure }

@freezed
class TermsOfUseState with _$TermsOfUseState {
  const factory TermsOfUseState({
    @Default(TermsOfUseStatus.initial) TermsOfUseStatus status,
    @Default(Document(title: '', subtitle: '', sections: []))
    Document termsOfUse,
  }) = _TermsOfUseState;
}
