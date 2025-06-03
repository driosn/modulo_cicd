part of 'whitelabel_bloc.dart';

@freezed
class WhitelabelState with _$WhitelabelState {
  const factory WhitelabelState({
    @Default(Whitelabel.empty) Whitelabel whitelabel,
    @Default(_Initial()) WhitelabelStatus whitelabelStatus,
  }) = _WhitelabelState;
}

@freezed
class WhitelabelStatus with _$WhitelabelStatus {
  const factory WhitelabelStatus.initial() = _Initial;
  const factory WhitelabelStatus.loading() = _Loading;
  const factory WhitelabelStatus.success() = _Success;
  const factory WhitelabelStatus.failure(MAError error) = _Failure;
}

extension XWhitelabelStatus on WhitelabelState {
  bool hasLogo() {
    if (whitelabel == Whitelabel.empty) {
      return false;
    }
    return whitelabel.logo != "";
  }
}
