import 'package:dio/dio.dart';

extension ResponseExtensions on Response {
  bool get isSuccess => [200, 201, 202].contains(statusCode);
  bool get isBadRequest => [400].contains(statusCode);
  bool get isUnauthorized => [401].contains(statusCode);
  bool get isInternalServerError => [500].contains(statusCode);
}
