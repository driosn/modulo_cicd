import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/exceptions/exceptions.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';

mixin ResponseManager {
  Future<T> handle<T>({
    required Future<Response> request,
    required T Function(dynamic data) onSuccess,
  }) async {
    try {
      final response = await request;

      if (response.isSuccess) {
        return onSuccess(response.data);
      }

      throw const MAException.unexpected();
    } on DioException catch (e) {
      if (e.response == null) {
        throw const MAException.unexpected();
      }

      if (e.response!.isBadRequest) {
        if (e.response?.data != null) {
          String errorString = e.response?.data;
          throw MAException.badRequest(errorString);
        }
        throw const MAException.badRequest("");
      }

      if (e.response!.isUnauthorized) {
        throw const MAException.unauthorized();
      }

      if (e.response!.isInternalServerError) {
        throw const MAException.internalServerError();
      }

      throw const MAException.unexpected();
    }
  }
}
