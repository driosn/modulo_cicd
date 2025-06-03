import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'delete_remote_datasource.dart';

class DeleteApiDataSource implements DeleteRemoteDataSource {
  const DeleteApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<void> deleteAccount(String residentId) async {
    try {
      final response = await _dio.delete('/ResidentUser/DeleteResidentUser/$residentId');

      if (!response.isSuccess) {
        throw Exception('Failed to delete account');
      }
    } catch (exception) {
      rethrow;
    }
  }
}