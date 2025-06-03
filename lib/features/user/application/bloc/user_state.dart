part of 'user_bloc.dart';

enum UserStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(User.empty) User user,
    @Default(UserStatus.initial) UserStatus userStatus,
    @Default(Language.english) Language languageSelectorInitialValue,
  }) = _UserState;
}
