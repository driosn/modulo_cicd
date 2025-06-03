import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/features/auth/sign_in/data/datasources/login_remote_datasource.dart';
import 'package:resident_app/features/auth/sign_in/data/models/login_body_model.dart';

class LoginApiDataSource implements LoginRemoteDataSource {
  const LoginApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<LoginBodyModel> login(
    String username,
    String password,
  ) async {
    try {
      final response = await _dio.post(
        '/login',
        data: {
          'username': username,
          'password': password,
        },
      );

      if (response.isSuccess) {
        return LoginBodyModel.fromJson(response.data);
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
