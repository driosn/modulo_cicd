part of 'privacy_policy_bloc.dart';

enum PrivacyPolicyStatus { initial, loading, loaded, failure }

@freezed
class PrivacyPolicyState with _$PrivacyPolicyState {
  const factory PrivacyPolicyState({
    @Default(PrivacyPolicyStatus.initial) PrivacyPolicyStatus status,
    @Default(Document(
      title: '',
      subtitle: '',
      sections: [],
    ))
    Document privacyPolicy,
  }) = _PrivacyPolicyState;
}
