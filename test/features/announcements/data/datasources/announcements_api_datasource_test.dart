import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_api_datasource.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_remote_datasource.dart';
import 'package:resident_app/features/announcements/data/models/announcement_model.dart';

import '../../../mocks.dart';

void main() {
  group(
    'getAnnouncements() - Get announcements from RPM API',
    () {
      late Dio mockDio;
      late AnnouncementsRemoteDataSource remoteDataSource;

      const tResidentUserId = 'tResidentUserId';

      final tAnnouncementsEmptyMap = [];

      final tAnnouncementsNotEmptyMap = [
        {
          "id": "63b7633333382e65d3484529",
          "subject": "Just Added",
          "body": "test",
          "order": 412,
          "isCompanyWide": true,
          "start": "2023-01-05T06:00:00+00:00",
          "end": "2027-01-31T06:00:00+00:00"
        },
      ];

      setUp(
        () {
          mockDio = MockDio();
          remoteDataSource = AnnouncementsApiDatasource(
            dio: mockDio,
          );
        },
      );

      test(
        'Should return a empty list of announcements if all goes success',
        () async {
          when(
            () => mockDio.get(
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenAnswer(
            (_) async => Response(
              statusCode: 200,
              requestOptions: RequestOptions(),
              data: tAnnouncementsEmptyMap,
            ),
          );

          final announcements =
              await remoteDataSource.getAnnouncements(tResidentUserId);

          expect(announcements, isEmpty);
          expect(announcements, isA<List<AnnouncementModel>>());
        },
      );

      test(
        'Should return a non empty list of announcements if all goes success',
        () async {
          when(
            () => mockDio.get(
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenAnswer(
            (_) async => Response(
              statusCode: 200,
              requestOptions: RequestOptions(),
              data: tAnnouncementsNotEmptyMap,
            ),
          );

          final announcements =
              await remoteDataSource.getAnnouncements(tResidentUserId);

          expect(announcements, isNotEmpty);
          expect(announcements, isA<List<AnnouncementModel>>());
        },
      );

      test(
        'Should catch exception',
        () async {
          when(
            () => mockDio.get(
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenThrow(
            Exception(),
          );

          expect(
            remoteDataSource.getAnnouncements(tResidentUserId),
            throwsA(
              isA<Exception>(),
            ),
          );
        },
      );
    },
  );
}
