import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:resident_app/features/announcements/data/models/announcement_model.dart';
import 'package:resident_app/features/announcements/domain/entities/announcement.dart';

void main() {
  group(
    'Announcement Model from json',
    () {
      late File jsonFile;
      late Map<String, dynamic> json;

      setUp(
        () async {
          jsonFile = File('test_resources/announcement_model.json');
          json = jsonDecode(await jsonFile.readAsString());
        },
      );

      test(
        'Should return a valid AnnouncementModel instance from a valid json',
        () {
          final announcementModel = AnnouncementModel.fromJson(json);

          expect(announcementModel, isA<AnnouncementModel>());
        },
      );

      test(
        'Instance of AnnouncementModel should be Announcement type ',
        () {
          final announcementModel = AnnouncementModel(
            start: DateTime.now(),
            end: DateTime.now(),
          );

          expect(announcementModel, isA<Announcement>());
        },
      );
    },
  );
}
