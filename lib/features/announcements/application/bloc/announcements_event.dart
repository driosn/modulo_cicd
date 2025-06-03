part of 'announcements_bloc.dart';

@freezed
class AnnouncementsEvent with _$AnnouncementsEvent {
  const factory AnnouncementsEvent.getAnnouncements(String residentUserId) =
      _GetAnnouncementsEvent;
  const factory AnnouncementsEvent.setRead(String announcementId) =
      _SetReadEvent;
}
