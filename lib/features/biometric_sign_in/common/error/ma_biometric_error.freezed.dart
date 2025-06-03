// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ma_biometric_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MABiometricError {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) notAvailable,
    required TResult Function(String message) passcodeNotSet,
    required TResult Function(String message) notEnrolled,
    required TResult Function(String message) lockedOut,
    required TResult Function(String message) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? notAvailable,
    TResult? Function(String message)? passcodeNotSet,
    TResult? Function(String message)? notEnrolled,
    TResult? Function(String message)? lockedOut,
    TResult? Function(String message)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? notAvailable,
    TResult Function(String message)? passcodeNotSet,
    TResult Function(String message)? notEnrolled,
    TResult Function(String message)? lockedOut,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAvailableError value) notAvailable,
    required TResult Function(_PasscodeNotSetError value) passcodeNotSet,
    required TResult Function(_NotEnrolledError value) notEnrolled,
    required TResult Function(_LockedOutError value) lockedOut,
    required TResult Function(_UnexpectedError value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotAvailableError value)? notAvailable,
    TResult? Function(_PasscodeNotSetError value)? passcodeNotSet,
    TResult? Function(_NotEnrolledError value)? notEnrolled,
    TResult? Function(_LockedOutError value)? lockedOut,
    TResult? Function(_UnexpectedError value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAvailableError value)? notAvailable,
    TResult Function(_PasscodeNotSetError value)? passcodeNotSet,
    TResult Function(_NotEnrolledError value)? notEnrolled,
    TResult Function(_LockedOutError value)? lockedOut,
    TResult Function(_UnexpectedError value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MABiometricErrorCopyWith<MABiometricError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MABiometricErrorCopyWith<$Res> {
  factory $MABiometricErrorCopyWith(
          MABiometricError value, $Res Function(MABiometricError) then) =
      _$MABiometricErrorCopyWithImpl<$Res, MABiometricError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MABiometricErrorCopyWithImpl<$Res, $Val extends MABiometricError>
    implements $MABiometricErrorCopyWith<$Res> {
  _$MABiometricErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MABiometricError
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
abstract class _$$NotAvailableErrorImplCopyWith<$Res>
    implements $MABiometricErrorCopyWith<$Res> {
  factory _$$NotAvailableErrorImplCopyWith(_$NotAvailableErrorImpl value,
          $Res Function(_$NotAvailableErrorImpl) then) =
      __$$NotAvailableErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotAvailableErrorImplCopyWithImpl<$Res>
    extends _$MABiometricErrorCopyWithImpl<$Res, _$NotAvailableErrorImpl>
    implements _$$NotAvailableErrorImplCopyWith<$Res> {
  __$$NotAvailableErrorImplCopyWithImpl(_$NotAvailableErrorImpl _value,
      $Res Function(_$NotAvailableErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotAvailableErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotAvailableErrorImpl implements _NotAvailableError {
  const _$NotAvailableErrorImpl({this.message = 'Biometric not available'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MABiometricError.notAvailable(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotAvailableErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotAvailableErrorImplCopyWith<_$NotAvailableErrorImpl> get copyWith =>
      __$$NotAvailableErrorImplCopyWithImpl<_$NotAvailableErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) notAvailable,
    required TResult Function(String message) passcodeNotSet,
    required TResult Function(String message) notEnrolled,
    required TResult Function(String message) lockedOut,
    required TResult Function(String message) unexpected,
  }) {
    return notAvailable(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? notAvailable,
    TResult? Function(String message)? passcodeNotSet,
    TResult? Function(String message)? notEnrolled,
    TResult? Function(String message)? lockedOut,
    TResult? Function(String message)? unexpected,
  }) {
    return notAvailable?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? notAvailable,
    TResult Function(String message)? passcodeNotSet,
    TResult Function(String message)? notEnrolled,
    TResult Function(String message)? lockedOut,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (notAvailable != null) {
      return notAvailable(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAvailableError value) notAvailable,
    required TResult Function(_PasscodeNotSetError value) passcodeNotSet,
    required TResult Function(_NotEnrolledError value) notEnrolled,
    required TResult Function(_LockedOutError value) lockedOut,
    required TResult Function(_UnexpectedError value) unexpected,
  }) {
    return notAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotAvailableError value)? notAvailable,
    TResult? Function(_PasscodeNotSetError value)? passcodeNotSet,
    TResult? Function(_NotEnrolledError value)? notEnrolled,
    TResult? Function(_LockedOutError value)? lockedOut,
    TResult? Function(_UnexpectedError value)? unexpected,
  }) {
    return notAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAvailableError value)? notAvailable,
    TResult Function(_PasscodeNotSetError value)? passcodeNotSet,
    TResult Function(_NotEnrolledError value)? notEnrolled,
    TResult Function(_LockedOutError value)? lockedOut,
    TResult Function(_UnexpectedError value)? unexpected,
    required TResult orElse(),
  }) {
    if (notAvailable != null) {
      return notAvailable(this);
    }
    return orElse();
  }
}

abstract class _NotAvailableError implements MABiometricError {
  const factory _NotAvailableError({final String message}) =
      _$NotAvailableErrorImpl;

  @override
  String get message;

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotAvailableErrorImplCopyWith<_$NotAvailableErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasscodeNotSetErrorImplCopyWith<$Res>
    implements $MABiometricErrorCopyWith<$Res> {
  factory _$$PasscodeNotSetErrorImplCopyWith(_$PasscodeNotSetErrorImpl value,
          $Res Function(_$PasscodeNotSetErrorImpl) then) =
      __$$PasscodeNotSetErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PasscodeNotSetErrorImplCopyWithImpl<$Res>
    extends _$MABiometricErrorCopyWithImpl<$Res, _$PasscodeNotSetErrorImpl>
    implements _$$PasscodeNotSetErrorImplCopyWith<$Res> {
  __$$PasscodeNotSetErrorImplCopyWithImpl(_$PasscodeNotSetErrorImpl _value,
      $Res Function(_$PasscodeNotSetErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PasscodeNotSetErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasscodeNotSetErrorImpl implements _PasscodeNotSetError {
  const _$PasscodeNotSetErrorImpl({this.message = 'Passcode not set'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MABiometricError.passcodeNotSet(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasscodeNotSetErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasscodeNotSetErrorImplCopyWith<_$PasscodeNotSetErrorImpl> get copyWith =>
      __$$PasscodeNotSetErrorImplCopyWithImpl<_$PasscodeNotSetErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) notAvailable,
    required TResult Function(String message) passcodeNotSet,
    required TResult Function(String message) notEnrolled,
    required TResult Function(String message) lockedOut,
    required TResult Function(String message) unexpected,
  }) {
    return passcodeNotSet(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? notAvailable,
    TResult? Function(String message)? passcodeNotSet,
    TResult? Function(String message)? notEnrolled,
    TResult? Function(String message)? lockedOut,
    TResult? Function(String message)? unexpected,
  }) {
    return passcodeNotSet?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? notAvailable,
    TResult Function(String message)? passcodeNotSet,
    TResult Function(String message)? notEnrolled,
    TResult Function(String message)? lockedOut,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (passcodeNotSet != null) {
      return passcodeNotSet(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAvailableError value) notAvailable,
    required TResult Function(_PasscodeNotSetError value) passcodeNotSet,
    required TResult Function(_NotEnrolledError value) notEnrolled,
    required TResult Function(_LockedOutError value) lockedOut,
    required TResult Function(_UnexpectedError value) unexpected,
  }) {
    return passcodeNotSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotAvailableError value)? notAvailable,
    TResult? Function(_PasscodeNotSetError value)? passcodeNotSet,
    TResult? Function(_NotEnrolledError value)? notEnrolled,
    TResult? Function(_LockedOutError value)? lockedOut,
    TResult? Function(_UnexpectedError value)? unexpected,
  }) {
    return passcodeNotSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAvailableError value)? notAvailable,
    TResult Function(_PasscodeNotSetError value)? passcodeNotSet,
    TResult Function(_NotEnrolledError value)? notEnrolled,
    TResult Function(_LockedOutError value)? lockedOut,
    TResult Function(_UnexpectedError value)? unexpected,
    required TResult orElse(),
  }) {
    if (passcodeNotSet != null) {
      return passcodeNotSet(this);
    }
    return orElse();
  }
}

abstract class _PasscodeNotSetError implements MABiometricError {
  const factory _PasscodeNotSetError({final String message}) =
      _$PasscodeNotSetErrorImpl;

  @override
  String get message;

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasscodeNotSetErrorImplCopyWith<_$PasscodeNotSetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotEnrolledErrorImplCopyWith<$Res>
    implements $MABiometricErrorCopyWith<$Res> {
  factory _$$NotEnrolledErrorImplCopyWith(_$NotEnrolledErrorImpl value,
          $Res Function(_$NotEnrolledErrorImpl) then) =
      __$$NotEnrolledErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotEnrolledErrorImplCopyWithImpl<$Res>
    extends _$MABiometricErrorCopyWithImpl<$Res, _$NotEnrolledErrorImpl>
    implements _$$NotEnrolledErrorImplCopyWith<$Res> {
  __$$NotEnrolledErrorImplCopyWithImpl(_$NotEnrolledErrorImpl _value,
      $Res Function(_$NotEnrolledErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotEnrolledErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotEnrolledErrorImpl implements _NotEnrolledError {
  const _$NotEnrolledErrorImpl({this.message = 'Passcode not set'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MABiometricError.notEnrolled(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotEnrolledErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotEnrolledErrorImplCopyWith<_$NotEnrolledErrorImpl> get copyWith =>
      __$$NotEnrolledErrorImplCopyWithImpl<_$NotEnrolledErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) notAvailable,
    required TResult Function(String message) passcodeNotSet,
    required TResult Function(String message) notEnrolled,
    required TResult Function(String message) lockedOut,
    required TResult Function(String message) unexpected,
  }) {
    return notEnrolled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? notAvailable,
    TResult? Function(String message)? passcodeNotSet,
    TResult? Function(String message)? notEnrolled,
    TResult? Function(String message)? lockedOut,
    TResult? Function(String message)? unexpected,
  }) {
    return notEnrolled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? notAvailable,
    TResult Function(String message)? passcodeNotSet,
    TResult Function(String message)? notEnrolled,
    TResult Function(String message)? lockedOut,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (notEnrolled != null) {
      return notEnrolled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAvailableError value) notAvailable,
    required TResult Function(_PasscodeNotSetError value) passcodeNotSet,
    required TResult Function(_NotEnrolledError value) notEnrolled,
    required TResult Function(_LockedOutError value) lockedOut,
    required TResult Function(_UnexpectedError value) unexpected,
  }) {
    return notEnrolled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotAvailableError value)? notAvailable,
    TResult? Function(_PasscodeNotSetError value)? passcodeNotSet,
    TResult? Function(_NotEnrolledError value)? notEnrolled,
    TResult? Function(_LockedOutError value)? lockedOut,
    TResult? Function(_UnexpectedError value)? unexpected,
  }) {
    return notEnrolled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAvailableError value)? notAvailable,
    TResult Function(_PasscodeNotSetError value)? passcodeNotSet,
    TResult Function(_NotEnrolledError value)? notEnrolled,
    TResult Function(_LockedOutError value)? lockedOut,
    TResult Function(_UnexpectedError value)? unexpected,
    required TResult orElse(),
  }) {
    if (notEnrolled != null) {
      return notEnrolled(this);
    }
    return orElse();
  }
}

abstract class _NotEnrolledError implements MABiometricError {
  const factory _NotEnrolledError({final String message}) =
      _$NotEnrolledErrorImpl;

  @override
  String get message;

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotEnrolledErrorImplCopyWith<_$NotEnrolledErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LockedOutErrorImplCopyWith<$Res>
    implements $MABiometricErrorCopyWith<$Res> {
  factory _$$LockedOutErrorImplCopyWith(_$LockedOutErrorImpl value,
          $Res Function(_$LockedOutErrorImpl) then) =
      __$$LockedOutErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LockedOutErrorImplCopyWithImpl<$Res>
    extends _$MABiometricErrorCopyWithImpl<$Res, _$LockedOutErrorImpl>
    implements _$$LockedOutErrorImplCopyWith<$Res> {
  __$$LockedOutErrorImplCopyWithImpl(
      _$LockedOutErrorImpl _value, $Res Function(_$LockedOutErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LockedOutErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LockedOutErrorImpl implements _LockedOutError {
  const _$LockedOutErrorImpl({this.message = 'Locked out error'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MABiometricError.lockedOut(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LockedOutErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LockedOutErrorImplCopyWith<_$LockedOutErrorImpl> get copyWith =>
      __$$LockedOutErrorImplCopyWithImpl<_$LockedOutErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) notAvailable,
    required TResult Function(String message) passcodeNotSet,
    required TResult Function(String message) notEnrolled,
    required TResult Function(String message) lockedOut,
    required TResult Function(String message) unexpected,
  }) {
    return lockedOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? notAvailable,
    TResult? Function(String message)? passcodeNotSet,
    TResult? Function(String message)? notEnrolled,
    TResult? Function(String message)? lockedOut,
    TResult? Function(String message)? unexpected,
  }) {
    return lockedOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? notAvailable,
    TResult Function(String message)? passcodeNotSet,
    TResult Function(String message)? notEnrolled,
    TResult Function(String message)? lockedOut,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (lockedOut != null) {
      return lockedOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAvailableError value) notAvailable,
    required TResult Function(_PasscodeNotSetError value) passcodeNotSet,
    required TResult Function(_NotEnrolledError value) notEnrolled,
    required TResult Function(_LockedOutError value) lockedOut,
    required TResult Function(_UnexpectedError value) unexpected,
  }) {
    return lockedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotAvailableError value)? notAvailable,
    TResult? Function(_PasscodeNotSetError value)? passcodeNotSet,
    TResult? Function(_NotEnrolledError value)? notEnrolled,
    TResult? Function(_LockedOutError value)? lockedOut,
    TResult? Function(_UnexpectedError value)? unexpected,
  }) {
    return lockedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAvailableError value)? notAvailable,
    TResult Function(_PasscodeNotSetError value)? passcodeNotSet,
    TResult Function(_NotEnrolledError value)? notEnrolled,
    TResult Function(_LockedOutError value)? lockedOut,
    TResult Function(_UnexpectedError value)? unexpected,
    required TResult orElse(),
  }) {
    if (lockedOut != null) {
      return lockedOut(this);
    }
    return orElse();
  }
}

abstract class _LockedOutError implements MABiometricError {
  const factory _LockedOutError({final String message}) = _$LockedOutErrorImpl;

  @override
  String get message;

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LockedOutErrorImplCopyWith<_$LockedOutErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedErrorImplCopyWith<$Res>
    implements $MABiometricErrorCopyWith<$Res> {
  factory _$$UnexpectedErrorImplCopyWith(_$UnexpectedErrorImpl value,
          $Res Function(_$UnexpectedErrorImpl) then) =
      __$$UnexpectedErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res>
    extends _$MABiometricErrorCopyWithImpl<$Res, _$UnexpectedErrorImpl>
    implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(
      _$UnexpectedErrorImpl _value, $Res Function(_$UnexpectedErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnexpectedErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnexpectedErrorImpl implements _UnexpectedError {
  const _$UnexpectedErrorImpl({this.message = 'Unexpected Error'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MABiometricError.unexpected(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      __$$UnexpectedErrorImplCopyWithImpl<_$UnexpectedErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) notAvailable,
    required TResult Function(String message) passcodeNotSet,
    required TResult Function(String message) notEnrolled,
    required TResult Function(String message) lockedOut,
    required TResult Function(String message) unexpected,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? notAvailable,
    TResult? Function(String message)? passcodeNotSet,
    TResult? Function(String message)? notEnrolled,
    TResult? Function(String message)? lockedOut,
    TResult? Function(String message)? unexpected,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? notAvailable,
    TResult Function(String message)? passcodeNotSet,
    TResult Function(String message)? notEnrolled,
    TResult Function(String message)? lockedOut,
    TResult Function(String message)? unexpected,
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
    required TResult Function(_NotAvailableError value) notAvailable,
    required TResult Function(_PasscodeNotSetError value) passcodeNotSet,
    required TResult Function(_NotEnrolledError value) notEnrolled,
    required TResult Function(_LockedOutError value) lockedOut,
    required TResult Function(_UnexpectedError value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotAvailableError value)? notAvailable,
    TResult? Function(_PasscodeNotSetError value)? passcodeNotSet,
    TResult? Function(_NotEnrolledError value)? notEnrolled,
    TResult? Function(_LockedOutError value)? lockedOut,
    TResult? Function(_UnexpectedError value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAvailableError value)? notAvailable,
    TResult Function(_PasscodeNotSetError value)? passcodeNotSet,
    TResult Function(_NotEnrolledError value)? notEnrolled,
    TResult Function(_LockedOutError value)? lockedOut,
    TResult Function(_UnexpectedError value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements MABiometricError {
  const factory _UnexpectedError({final String message}) =
      _$UnexpectedErrorImpl;

  @override
  String get message;

  /// Create a copy of MABiometricError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
