import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/features/user/data/datasources/user_remote_datasource.dart';
import 'package:resident_app/features/user/data/models/user_models.dart';

class UserApiDataSource implements UserRemoteDataSource {
  const UserApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<UserModel> get() async {
    try {
      final response = await _dio.get('/ResidentUser');
      if (response.isSuccess) {
        return UserModel.fromJson(response.data);
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
