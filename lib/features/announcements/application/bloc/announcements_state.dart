part of 'announcements_bloc.dart';

@freezed
class AnnouncementsState with _$AnnouncementsState {
  const factory AnnouncementsState({
    @Default(AnnouncementsStatus.initial()) AnnouncementsStatus status,
    @Default(null) List<Announcement>? announcements,
  }) = _AnnouncementsState;
}

@freezed
class AnnouncementsStatus with _$AnnouncementsStatus {
  const factory AnnouncementsStatus.initial() = _Initial;
  const factory AnnouncementsStatus.loading() = _Loading;
  const factory AnnouncementsStatus.failure(String message) = _Failure;
  const factory AnnouncementsStatus.success(List<Announcement> announcements) =
      _Success;
}
