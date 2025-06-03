import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/announcements/domain/entities/announcement.dart';

part 'announcement_model.freezed.dart';
part 'announcement_model.g.dart';

@freezed
class AnnouncementModel extends Announcement with _$AnnouncementModel {
  const factory AnnouncementModel({
    @Default('') String id,
    @Default('') String subject,
    @Default('') String body,
    @Default(0) int order,
    @Default(false) bool isCompanyWide,
    required DateTime start,
    required DateTime end,
    @Default(false) bool isRead,
  }) = _AnnouncementModel;

  factory AnnouncementModel.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementModelFromJson(json);
}
