part of 'delete_account_bloc.dart';

@freezed
class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState({
    @Default(DeleteAccountStatus.initial()) DeleteAccountStatus status,
    String? errorMessage,
  }) = _DeleteAccountState;
}

@freezed
class DeleteAccountStatus with _$DeleteAccountStatus {
  const factory DeleteAccountStatus.initial() = _Initial;
  const factory DeleteAccountStatus.loading() = _Loading;
  const factory DeleteAccountStatus.failure(MAError message) = _Failure;
  const factory DeleteAccountStatus.success() = _Success;
}