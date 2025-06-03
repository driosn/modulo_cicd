import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
class MAError with _$MAError {
  const factory MAError.internalServerError({
    @Default('Internal Server Error') String message,
  }) = _InternalServerError;

  const factory MAError.localStorageError({
    @Default('Local Storage Error') String message,
  }) = _LocalStorageError;

  const factory MAError.unauthorized({
    @Default('Unauthorized Error') String message,
  }) = _Unauthenticated;

  const factory MAError.unexpected({
    @Default('Unexpected Error') String message,
  }) = _Unexpected;

  const factory MAError.badRequest({
    @Default('Bad Request') String message,
  }) = _BadRequest;
}
