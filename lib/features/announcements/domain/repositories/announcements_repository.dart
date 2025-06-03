import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/announcements/domain/entities/announcement.dart';

abstract class AnnouncementsRepository {
  Future<Either<Failure, List<Announcement>>> getAnnouncements(
    String residentUserId,
  );

  Either<Failure, List<String>> getReadIds();

  Future<void> setReadId(String announcementId);
}
