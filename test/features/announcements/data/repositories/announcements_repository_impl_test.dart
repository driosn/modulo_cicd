import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_preferences_datasource.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_remote_datasource.dart';
import 'package:resident_app/features/announcements/data/models/announcement_model.dart';
import 'package:resident_app/features/announcements/data/repositories/announcements_repository_impl.dart';
import 'package:resident_app/features/announcements/domain/entities/announcement.dart';
import 'package:resident_app/features/announcements/domain/repositories/announcements_repository.dart';

class MockAnnouncementsRemoteDataSource extends Mock
    implements AnnouncementsRemoteDataSource {}

class MockAnnouncementsPreferencesDataSource extends Mock
    implements AnnouncementsPreferencesDataSource {}

void main() {
  late AnnouncementsRemoteDataSource remoteDataSource;
  late AnnouncementsPreferencesDataSource prefsDataSource;
  late AnnouncementsRepository repository;

  setUp(() {
    remoteDataSource = MockAnnouncementsRemoteDataSource();
    prefsDataSource = MockAnnouncementsPreferencesDataSource();
    repository = AnnouncementsRepositoryImpl(
      announcementsRemoteDataSource: remoteDataSource,
      announcementsPreferencesDataSource: prefsDataSource,
    );
  });

  group(
    'getAnnouncements - getAnnouncements from remote',
    () {
      final tAnnouncements = <AnnouncementModel>[];
      const tResidentUserId = 'tResidentUserId';

      test(
        'Should return Right(List<Announcement>) when success',
        () async {
          when(() => remoteDataSource.getAnnouncements(any())).thenAnswer(
            (_) async => tAnnouncements,
          );

          final announcements =
              await repository.getAnnouncements(tResidentUserId);
          final foldedResult = announcements.fold(
            (f) => f,
            (l) => l,
          );

          expect(
            foldedResult,
            isA<List<Announcement>>(),
          );
        },
      );

      test(
        'Should return Left(Failure) on exception',
        () async {
          when(() => remoteDataSource.getAnnouncements(any())).thenThrow(
            Exception(),
          );

          final announcements =
              await repository.getAnnouncements(tResidentUserId);
          final foldedResult = announcements.fold(
            (f) => f,
            (l) => l,
          );

          expect(
            foldedResult,
            isA<Failure>(),
          );
        },
      );
    },
  );

  group(
    'getReadIds - get read announcements ids',
    () {
      final tIds = ['1', '2', '3'];

      test(
        'Should return Right(List<String>) when success',
        () async {
          when(() => prefsDataSource.getReadIds()).thenReturn(tIds);

          final readIds = repository.getReadIds();
          final foldedResult = readIds.fold(
            (f) => f,
            (l) => l,
          );

          expect(
            foldedResult,
            isA<List<String>>(),
          );
        },
      );

      test(
        'Should return Left(Failure) on exception',
        () async {
          when(() => prefsDataSource.getReadIds()).thenThrow(
            Exception(),
          );

          final readIds = repository.getReadIds();
          final foldedResult = readIds.fold(
            (f) => f,
            (l) => l,
          );

          expect(
            foldedResult,
            isA<Failure>(),
          );
        },
      );
    },
  );

  group(
    'setReadId - set announcement as read',
    () {
      const tAnnouncementId = 'tAnnouncementId';
      test(
        'Should call prefs setReadId method once',
        () async {
          when(() => prefsDataSource.setReadId(any())).thenAnswer((_) async {
            return;
          });

          await repository.setReadId(tAnnouncementId);
          verify(() => prefsDataSource.setReadId(any())).called(1);
        },
      );
    },
  );
}
