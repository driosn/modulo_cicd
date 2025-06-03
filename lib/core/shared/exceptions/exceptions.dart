import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
@Implements<Exception>()
class MAException with _$MAException {
  const factory MAException.internalServerError() = _InternalServerError;
  const factory MAException.unauthorized() = _Unauthorized;
  const factory MAException.badRequest(String? rawData) = _BadRequest;
  const factory MAException.unexpected() = _Unexpected;
}
