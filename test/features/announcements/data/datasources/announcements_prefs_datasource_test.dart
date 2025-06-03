import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_preferences_datasource.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_prefs_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../mocks.dart';

void main() {
  const tId = 'tId';
  const tIds = <String>['1', '2', '3'];

  group(
    'setReadId(string id) - set announcement as read',
    () {
      late SharedPreferences mockPreferences;
      late AnnouncementsPreferencesDataSource prefsDataSource;

      setUp(
        () {
          mockPreferences = MockSharedPreferences();
          prefsDataSource = AnnouncementsPrefsDatasource(
            preferences: mockPreferences,
          );
        },
      );

      test(
        'Should call setStringList from shared preferences',
        () async {
          when(() => mockPreferences.setStringList(any(), any())).thenAnswer(
            (_) async => true,
          );

          await prefsDataSource.setReadId(tId);
          verify(() => mockPreferences.setStringList(any(), any())).called(1);
        },
      );
    },
  );

  group(
    'getReadIds - Get read announcements',
    () {
      late SharedPreferences mockPreferences;
      late AnnouncementsPreferencesDataSource prefsDataSource;

      setUp(
        () {
          mockPreferences = MockSharedPreferences();
          prefsDataSource = AnnouncementsPrefsDatasource(
            preferences: mockPreferences,
          );
        },
      );

      test(
        'Should return list string if prefs list is not null',
        () async {
          when(() => mockPreferences.getStringList(any())).thenReturn(tIds);

          final ids = prefsDataSource.getReadIds();
          expect(ids, isNotEmpty);
          expect(ids, isA<List<String>>());
        },
      );

      test(
        'Should return empty list string if prefs list is  null',
        () async {
          when(() => mockPreferences.getStringList(any())).thenReturn(null);

          final ids = prefsDataSource.getReadIds();
          expect(ids, isEmpty);
          expect(ids, isA<List<String>>());
        },
      );
    },
  );
}
