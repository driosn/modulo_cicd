// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MAError {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) localStorageError,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? localStorageError,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? localStorageError,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_LocalStorageError value) localStorageError,
    required TResult Function(_Unauthenticated value) unauthorized,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_BadRequest value) badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_LocalStorageError value)? localStorageError,
    TResult? Function(_Unauthenticated value)? unauthorized,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_BadRequest value)? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_LocalStorageError value)? localStorageError,
    TResult Function(_Unauthenticated value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MAErrorCopyWith<MAError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MAErrorCopyWith<$Res> {
  factory $MAErrorCopyWith(MAError value, $Res Function(MAError) then) =
      _$MAErrorCopyWithImpl<$Res, MAError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MAErrorCopyWithImpl<$Res, $Val extends MAError>
    implements $MAErrorCopyWith<$Res> {
  _$MAErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InternalServerErrorImplCopyWith<$Res>
    implements $MAErrorCopyWith<$Res> {
  factory _$$InternalServerErrorImplCopyWith(_$InternalServerErrorImpl value,
          $Res Function(_$InternalServerErrorImpl) then) =
      __$$InternalServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InternalServerErrorImplCopyWithImpl<$Res>
    extends _$MAErrorCopyWithImpl<$Res, _$InternalServerErrorImpl>
    implements _$$InternalServerErrorImplCopyWith<$Res> {
  __$$InternalServerErrorImplCopyWithImpl(_$InternalServerErrorImpl _value,
      $Res Function(_$InternalServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InternalServerErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InternalServerErrorImpl implements _InternalServerError {
  const _$InternalServerErrorImpl({this.message = 'Internal Server Error'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MAError.internalServerError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalServerErrorImplCopyWith<_$InternalServerErrorImpl> get copyWith =>
      __$$InternalServerErrorImplCopyWithImpl<_$InternalServerErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) localStorageError,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) badRequest,
  }) {
    return internalServerError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? localStorageError,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? badRequest,
  }) {
    return internalServerError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? localStorageError,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_LocalStorageError value) localStorageError,
    required TResult Function(_Unauthenticated value) unauthorized,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_LocalStorageError value)? localStorageError,
    TResult? Function(_Unauthenticated value)? unauthorized,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_LocalStorageError value)? localStorageError,
    TResult Function(_Unauthenticated value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class _InternalServerError implements MAError {
  const factory _InternalServerError({final String message}) =
      _$InternalServerErrorImpl;

  @override
  String get message;

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalServerErrorImplCopyWith<_$InternalServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalStorageErrorImplCopyWith<$Res>
    implements $MAErrorCopyWith<$Res> {
  factory _$$LocalStorageErrorImplCopyWith(_$LocalStorageErrorImpl value,
          $Res Function(_$LocalStorageErrorImpl) then) =
      __$$LocalStorageErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LocalStorageErrorImplCopyWithImpl<$Res>
    extends _$MAErrorCopyWithImpl<$Res, _$LocalStorageErrorImpl>
    implements _$$LocalStorageErrorImplCopyWith<$Res> {
  __$$LocalStorageErrorImplCopyWithImpl(_$LocalStorageErrorImpl _value,
      $Res Function(_$LocalStorageErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LocalStorageErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalStorageErrorImpl implements _LocalStorageError {
  const _$LocalStorageErrorImpl({this.message = 'Local Storage Error'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MAError.localStorageError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalStorageErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalStorageErrorImplCopyWith<_$LocalStorageErrorImpl> get copyWith =>
      __$$LocalStorageErrorImplCopyWithImpl<_$LocalStorageErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) localStorageError,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) badRequest,
  }) {
    return localStorageError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? localStorageError,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? badRequest,
  }) {
    return localStorageError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? localStorageError,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (localStorageError != null) {
      return localStorageError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_LocalStorageError value) localStorageError,
    required TResult Function(_Unauthenticated value) unauthorized,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return localStorageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_LocalStorageError value)? localStorageError,
    TResult? Function(_Unauthenticated value)? unauthorized,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return localStorageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_LocalStorageError value)? localStorageError,
    TResult Function(_Unauthenticated value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (localStorageError != null) {
      return localStorageError(this);
    }
    return orElse();
  }
}

abstract class _LocalStorageError implements MAError {
  const factory _LocalStorageError({final String message}) =
      _$LocalStorageErrorImpl;

  @override
  String get message;

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalStorageErrorImplCopyWith<_$LocalStorageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res>
    implements $MAErrorCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$MAErrorCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnauthenticatedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl({this.message = 'Unauthorized Error'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MAError.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthenticatedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthenticatedImplCopyWith<_$UnauthenticatedImpl> get copyWith =>
      __$$UnauthenticatedImplCopyWithImpl<_$UnauthenticatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) localStorageError,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) badRequest,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? localStorageError,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? badRequest,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? localStorageError,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_LocalStorageError value) localStorageError,
    required TResult Function(_Unauthenticated value) unauthorized,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_LocalStorageError value)? localStorageError,
    TResult? Function(_Unauthenticated value)? unauthorized,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_LocalStorageError value)? localStorageError,
    TResult Function(_Unauthenticated value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements MAError {
  const factory _Unauthenticated({final String message}) =
      _$UnauthenticatedImpl;

  @override
  String get message;

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthenticatedImplCopyWith<_$UnauthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res>
    implements $MAErrorCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$MAErrorCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnexpectedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnexpectedImpl implements _Unexpected {
  const _$UnexpectedImpl({this.message = 'Unexpected Error'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MAError.unexpected(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedImplCopyWith<_$UnexpectedImpl> get copyWith =>
      __$$UnexpectedImplCopyWithImpl<_$UnexpectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) localStorageError,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) badRequest,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? localStorageError,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? badRequest,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? localStorageError,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_LocalStorageError value) localStorageError,
    required TResult Function(_Unauthenticated value) unauthorized,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_LocalStorageError value)? localStorageError,
    TResult? Function(_Unauthenticated value)? unauthorized,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_LocalStorageError value)? localStorageError,
    TResult Function(_Unauthenticated value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements MAError {
  const factory _Unexpected({final String message}) = _$UnexpectedImpl;

  @override
  String get message;

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedImplCopyWith<_$UnexpectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res>
    implements $MAErrorCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$MAErrorCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BadRequestImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BadRequestImpl implements _BadRequest {
  const _$BadRequestImpl({this.message = 'Bad Request'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MAError.badRequest(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) internalServerError,
    required TResult Function(String message) localStorageError,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) badRequest,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? internalServerError,
    TResult? Function(String message)? localStorageError,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? badRequest,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? internalServerError,
    TResult Function(String message)? localStorageError,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_LocalStorageError value) localStorageError,
    required TResult Function(_Unauthenticated value) unauthorized,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_LocalStorageError value)? localStorageError,
    TResult? Function(_Unauthenticated value)? unauthorized,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_LocalStorageError value)? localStorageError,
    TResult Function(_Unauthenticated value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements MAError {
  const factory _BadRequest({final String message}) = _$BadRequestImpl;

  @override
  String get message;

  /// Create a copy of MAError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
