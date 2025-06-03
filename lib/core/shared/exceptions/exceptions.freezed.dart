// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MAException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() internalServerError,
    required TResult Function() unauthorized,
    required TResult Function(String? rawData) badRequest,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? internalServerError,
    TResult? Function()? unauthorized,
    TResult? Function(String? rawData)? badRequest,
    TResult? Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function(String? rawData)? badRequest,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MAExceptionCopyWith<$Res> {
  factory $MAExceptionCopyWith(
          MAException value, $Res Function(MAException) then) =
      _$MAExceptionCopyWithImpl<$Res, MAException>;
}

/// @nodoc
class _$MAExceptionCopyWithImpl<$Res, $Val extends MAException>
    implements $MAExceptionCopyWith<$Res> {
  _$MAExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MAException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InternalServerErrorImplCopyWith<$Res> {
  factory _$$InternalServerErrorImplCopyWith(_$InternalServerErrorImpl value,
          $Res Function(_$InternalServerErrorImpl) then) =
      __$$InternalServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternalServerErrorImplCopyWithImpl<$Res>
    extends _$MAExceptionCopyWithImpl<$Res, _$InternalServerErrorImpl>
    implements _$$InternalServerErrorImplCopyWith<$Res> {
  __$$InternalServerErrorImplCopyWithImpl(_$InternalServerErrorImpl _value,
      $Res Function(_$InternalServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MAException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InternalServerErrorImpl implements _InternalServerError {
  const _$InternalServerErrorImpl();

  @override
  String toString() {
    return 'MAException.internalServerError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() internalServerError,
    required TResult Function() unauthorized,
    required TResult Function(String? rawData) badRequest,
    required TResult Function() unexpected,
  }) {
    return internalServerError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? internalServerError,
    TResult? Function()? unauthorized,
    TResult? Function(String? rawData)? badRequest,
    TResult? Function()? unexpected,
  }) {
    return internalServerError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function(String? rawData)? badRequest,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class _InternalServerError implements MAException {
  const factory _InternalServerError() = _$InternalServerErrorImpl;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$MAExceptionCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MAException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthorizedImpl implements _Unauthorized {
  const _$UnauthorizedImpl();

  @override
  String toString() {
    return 'MAException.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() internalServerError,
    required TResult Function() unauthorized,
    required TResult Function(String? rawData) badRequest,
    required TResult Function() unexpected,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? internalServerError,
    TResult? Function()? unauthorized,
    TResult? Function(String? rawData)? badRequest,
    TResult? Function()? unexpected,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function(String? rawData)? badRequest,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements MAException {
  const factory _Unauthorized() = _$UnauthorizedImpl;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? rawData});
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$MAExceptionCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of MAException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawData = freezed,
  }) {
    return _then(_$BadRequestImpl(
      freezed == rawData
          ? _value.rawData
          : rawData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BadRequestImpl implements _BadRequest {
  const _$BadRequestImpl(this.rawData);

  @override
  final String? rawData;

  @override
  String toString() {
    return 'MAException.badRequest(rawData: $rawData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestImpl &&
            (identical(other.rawData, rawData) || other.rawData == rawData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rawData);

  /// Create a copy of MAException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      __$$BadRequestImplCopyWithImpl<_$BadRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() internalServerError,
    required TResult Function() unauthorized,
    required TResult Function(String? rawData) badRequest,
    required TResult Function() unexpected,
  }) {
    return badRequest(rawData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? internalServerError,
    TResult? Function()? unauthorized,
    TResult? Function(String? rawData)? badRequest,
    TResult? Function()? unexpected,
  }) {
    return badRequest?.call(rawData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function(String? rawData)? badRequest,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(rawData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements MAException {
  const factory _BadRequest(final String? rawData) = _$BadRequestImpl;

  String? get rawData;

  /// Create a copy of MAException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadRequestImplCopyWith<_$BadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$MAExceptionCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MAException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnexpectedImpl implements _Unexpected {
  const _$UnexpectedImpl();

  @override
  String toString() {
    return 'MAException.unexpected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() internalServerError,
    required TResult Function() unauthorized,
    required TResult Function(String? rawData) badRequest,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? internalServerError,
    TResult? Function()? unauthorized,
    TResult? Function(String? rawData)? badRequest,
    TResult? Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? internalServerError,
    TResult Function()? unauthorized,
    TResult Function(String? rawData)? badRequest,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InternalServerError value) internalServerError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InternalServerError value)? internalServerError,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InternalServerError value)? internalServerError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements MAException {
  const factory _Unexpected() = _$UnexpectedImpl;
}
