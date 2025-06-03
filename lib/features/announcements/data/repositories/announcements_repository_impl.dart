import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_preferences_datasource.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_remote_datasource.dart';
import 'package:resident_app/features/announcements/domain/entities/announcement.dart';
import 'package:resident_app/features/announcements/domain/repositories/announcements_repository.dart';

class AnnouncementsRepositoryImpl implements AnnouncementsRepository {
  const AnnouncementsRepositoryImpl({
    required AnnouncementsRemoteDataSource announcementsRemoteDataSource,
    required AnnouncementsPreferencesDataSource
        announcementsPreferencesDataSource,
  })  : _announcementsRemoteDataSource = announcementsRemoteDataSource,
        _announcementsPreferencesDataSource =
            announcementsPreferencesDataSource;

  final AnnouncementsRemoteDataSource _announcementsRemoteDataSource;
  final AnnouncementsPreferencesDataSource _announcementsPreferencesDataSource;

  @override
  Future<Either<Failure, List<Announcement>>> getAnnouncements(
    String residentUserId,
  ) async {
    try {
      final announcements =
          await _announcementsRemoteDataSource.getAnnouncements(residentUserId);

      return Right(announcements);
    } catch (e) {
      return Left(Failure(message: 'Unexpected Exception'));
    }
  }

  @override
  Either<Failure, List<String>> getReadIds() {
    try {
      return Right(_announcementsPreferencesDataSource.getReadIds());
    } catch (e) {
      return Left(
        Failure(message: 'Cache Unexpected Exception'),
      );
    }
  }

  @override
  Future<void> setReadId(String announcementId) async {
    await _announcementsPreferencesDataSource.setReadId(announcementId);
  }
}
