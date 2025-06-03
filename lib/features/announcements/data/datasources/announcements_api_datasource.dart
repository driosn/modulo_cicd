import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_remote_datasource.dart';
import 'package:resident_app/features/announcements/data/models/announcement_model.dart';

class AnnouncementsApiDatasource implements AnnouncementsRemoteDataSource {
  const AnnouncementsApiDatasource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<AnnouncementModel>> getAnnouncements(
      String residentUserId) async {
    try {
      final response = await _dio.get(
        '/Announcements',
        queryParameters: {
          'residentUserId': residentUserId,
        },
      );

      if (response.isSuccess) {
        return List<AnnouncementModel>.from(
          response.data.map((json) => AnnouncementModel.fromJson(json)),
        );
      }

      throw Exception();
    } catch (exception) {
      rethrow;
    }
  }
}
