// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_validations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInValidationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() validateUsername,
    required TResult Function() validatePassword,
    required TResult Function() validateAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? validateUsername,
    TResult? Function()? validatePassword,
    TResult? Function()? validateAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? validateUsername,
    TResult Function()? validatePassword,
    TResult Function()? validateAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_ValidateUsernameEvent value) validateUsername,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidateAllEvent value) validateAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_ValidateUsernameEvent value)? validateUsername,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidateAllEvent value)? validateAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_ValidateUsernameEvent value)? validateUsername,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidateAllEvent value)? validateAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInValidationsEventCopyWith<$Res> {
  factory $SignInValidationsEventCopyWith(SignInValidationsEvent value,
          $Res Function(SignInValidationsEvent) then) =
      _$SignInValidationsEventCopyWithImpl<$Res, SignInValidationsEvent>;
}

/// @nodoc
class _$SignInValidationsEventCopyWithImpl<$Res,
        $Val extends SignInValidationsEvent>
    implements $SignInValidationsEventCopyWith<$Res> {
  _$SignInValidationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInValidationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetUsernameEventImplCopyWith<$Res> {
  factory _$$SetUsernameEventImplCopyWith(_$SetUsernameEventImpl value,
          $Res Function(_$SetUsernameEventImpl) then) =
      __$$SetUsernameEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$SetUsernameEventImplCopyWithImpl<$Res>
    extends _$SignInValidationsEventCopyWithImpl<$Res, _$SetUsernameEventImpl>
    implements _$$SetUsernameEventImplCopyWith<$Res> {
  __$$SetUsernameEventImplCopyWithImpl(_$SetUsernameEventImpl _value,
      $Res Function(_$SetUsernameEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInValidationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$SetUsernameEventImpl(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetUsernameEventImpl implements _SetUsernameEvent {
  const _$SetUsernameEventImpl(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'SignInValidationsEvent.setUsername(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUsernameEventImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  /// Create a copy of SignInValidationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUsernameEventImplCopyWith<_$SetUsernameEventImpl> get copyWith =>
      __$$SetUsernameEventImplCopyWithImpl<_$SetUsernameEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() validateUsername,
    required TResult Function() validatePassword,
    required TResult Function() validateAll,
  }) {
    return setUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? validateUsername,
    TResult? Function()? validatePassword,
    TResult? Function()? validateAll,
  }) {
    return setUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? validateUsername,
    TResult Function()? validatePassword,
    TResult Function()? validateAll,
    required TResult orElse(),
  }) {
    if (setUsername != null) {
      return setUsername(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_ValidateUsernameEvent value) validateUsername,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidateAllEvent value) validateAll,
  }) {
    return setUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_ValidateUsernameEvent value)? validateUsername,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidateAllEvent value)? validateAll,
  }) {
    return setUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_ValidateUsernameEvent value)? validateUsername,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidateAllEvent value)? validateAll,
    required TResult orElse(),
  }) {
    if (setUsername != null) {
      return setUsername(this);
    }
    return orElse();
  }
}

abstract class _SetUsernameEvent implements SignInValidationsEvent {
  const factory _SetUsernameEvent(final String username) =
      _$SetUsernameEventImpl;

  String get username;

  /// Create a copy of SignInValidationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetUsernameEventImplCopyWith<_$SetUsernameEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPasswordEventImplCopyWith<$Res> {
  factory _$$SetPasswordEventImplCopyWith(_$SetPasswordEventImpl value,
          $Res Function(_$SetPasswordEventImpl) then) =
      __$$SetPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$SetPasswordEventImplCopyWithImpl<$Res>
    extends _$SignInValidationsEventCopyWithImpl<$Res, _$SetPasswordEventImpl>
    implements _$$SetPasswordEventImplCopyWith<$Res> {
  __$$SetPasswordEventImplCopyWithImpl(_$SetPasswordEventImpl _value,
      $Res Function(_$SetPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInValidationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$SetPasswordEventImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetPasswordEventImpl implements _SetPasswordEvent {
  const _$SetPasswordEventImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInValidationsEvent.setPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPasswordEventImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of SignInValidationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPasswordEventImplCopyWith<_$SetPasswordEventImpl> get copyWith =>
      __$$SetPasswordEventImplCopyWithImpl<_$SetPasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() validateUsername,
    required TResult Function() validatePassword,
    required TResult Function() validateAll,
  }) {
    return setPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? validateUsername,
    TResult? Function()? validatePassword,
    TResult? Function()? validateAll,
  }) {
    return setPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? validateUsername,
    TResult Function()? validatePassword,
    TResult Function()? validateAll,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_ValidateUsernameEvent value) validateUsername,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidateAllEvent value) validateAll,
  }) {
    return setPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_ValidateUsernameEvent value)? validateUsername,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidateAllEvent value)? validateAll,
  }) {
    return setPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_ValidateUsernameEvent value)? validateUsername,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidateAllEvent value)? validateAll,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(this);
    }
    return orElse();
  }
}

abstract class _SetPasswordEvent implements SignInValidationsEvent {
  const factory _SetPasswordEvent(final String password) =
      _$SetPasswordEventImpl;

  String get password;

  /// Create a copy of SignInValidationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPasswordEventImplCopyWith<_$SetPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateUsernameEventImplCopyWith<$Res> {
  factory _$$ValidateUsernameEventImplCopyWith(
          _$ValidateUsernameEventImpl value,
          $Res Function(_$ValidateUsernameEventImpl) then) =
      __$$ValidateUsernameEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateUsernameEventImplCopyWithImpl<$Res>
    extends _$SignInValidationsEventCopyWithImpl<$Res,
        _$ValidateUsernameEventImpl>
    implements _$$ValidateUsernameEventImplCopyWith<$Res> {
  __$$ValidateUsernameEventImplCopyWithImpl(_$ValidateUsernameEventImpl _value,
      $Res Function(_$ValidateUsernameEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInValidationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidateUsernameEventImpl implements _ValidateUsernameEvent {
  const _$ValidateUsernameEventImpl();

  @override
  String toString() {
    return 'SignInValidationsEvent.validateUsername()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateUsernameEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() validateUsername,
    required TResult Function() validatePassword,
    required TResult Function() validateAll,
  }) {
    return validateUsername();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? validateUsername,
    TResult? Function()? validatePassword,
    TResult? Function()? validateAll,
  }) {
    return validateUsername?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? validateUsername,
    TResult Function()? validatePassword,
    TResult Function()? validateAll,
    required TResult orElse(),
  }) {
    if (validateUsername != null) {
      return validateUsername();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_ValidateUsernameEvent value) validateUsername,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidateAllEvent value) validateAll,
  }) {
    return validateUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_ValidateUsernameEvent value)? validateUsername,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidateAllEvent value)? validateAll,
  }) {
    return validateUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_ValidateUsernameEvent value)? validateUsername,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidateAllEvent value)? validateAll,
    required TResult orElse(),
  }) {
    if (validateUsername != null) {
      return validateUsername(this);
    }
    return orElse();
  }
}

abstract class _ValidateUsernameEvent implements SignInValidationsEvent {
  const factory _ValidateUsernameEvent() = _$ValidateUsernameEventImpl;
}

/// @nodoc
abstract class _$$ValidatePasswordEventImplCopyWith<$Res> {
  factory _$$ValidatePasswordEventImplCopyWith(
          _$ValidatePasswordEventImpl value,
          $Res Function(_$ValidatePasswordEventImpl) then) =
      __$$ValidatePasswordEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidatePasswordEventImplCopyWithImpl<$Res>
    extends _$SignInValidationsEventCopyWithImpl<$Res,
        _$ValidatePasswordEventImpl>
    implements _$$ValidatePasswordEventImplCopyWith<$Res> {
  __$$ValidatePasswordEventImplCopyWithImpl(_$ValidatePasswordEventImpl _value,
      $Res Function(_$ValidatePasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInValidationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidatePasswordEventImpl implements _ValidatePasswordEvent {
  const _$ValidatePasswordEventImpl();

  @override
  String toString() {
    return 'SignInValidationsEvent.validatePassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidatePasswordEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() validateUsername,
    required TResult Function() validatePassword,
    required TResult Function() validateAll,
  }) {
    return validatePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? validateUsername,
    TResult? Function()? validatePassword,
    TResult? Function()? validateAll,
  }) {
    return validatePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? validateUsername,
    TResult Function()? validatePassword,
    TResult Function()? validateAll,
    required TResult orElse(),
  }) {
    if (validatePassword != null) {
      return validatePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_ValidateUsernameEvent value) validateUsername,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidateAllEvent value) validateAll,
  }) {
    return validatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_ValidateUsernameEvent value)? validateUsername,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidateAllEvent value)? validateAll,
  }) {
    return validatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_ValidateUsernameEvent value)? validateUsername,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidateAllEvent value)? validateAll,
    required TResult orElse(),
  }) {
    if (validatePassword != null) {
      return validatePassword(this);
    }
    return orElse();
  }
}

abstract class _ValidatePasswordEvent implements SignInValidationsEvent {
  const factory _ValidatePasswordEvent() = _$ValidatePasswordEventImpl;
}

/// @nodoc
abstract class _$$ValidateAllEventImplCopyWith<$Res> {
  factory _$$ValidateAllEventImplCopyWith(_$ValidateAllEventImpl value,
          $Res Function(_$ValidateAllEventImpl) then) =
      __$$ValidateAllEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateAllEventImplCopyWithImpl<$Res>
    extends _$SignInValidationsEventCopyWithImpl<$Res, _$ValidateAllEventImpl>
    implements _$$ValidateAllEventImplCopyWith<$Res> {
  __$$ValidateAllEventImplCopyWithImpl(_$ValidateAllEventImpl _value,
      $Res Function(_$ValidateAllEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInValidationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidateAllEventImpl implements _ValidateAllEvent {
  const _$ValidateAllEventImpl();

  @override
  String toString() {
    return 'SignInValidationsEvent.validateAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateAllEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) setUsername,
    required TResult Function(String password) setPassword,
    required TResult Function() validateUsername,
    required TResult Function() validatePassword,
    required TResult Function() validateAll,
  }) {
    return validateAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? setUsername,
    TResult? Function(String password)? setPassword,
    TResult? Function()? validateUsername,
    TResult? Function()? validatePassword,
    TResult? Function()? validateAll,
  }) {
    return validateAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? setUsername,
    TResult Function(String password)? setPassword,
    TResult Function()? validateUsername,
    TResult Function()? validatePassword,
    TResult Function()? validateAll,
    required TResult orElse(),
  }) {
    if (validateAll != null) {
      return validateAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_ValidateUsernameEvent value) validateUsername,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidateAllEvent value) validateAll,
  }) {
    return validateAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_ValidateUsernameEvent value)? validateUsername,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidateAllEvent value)? validateAll,
  }) {
    return validateAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_ValidateUsernameEvent value)? validateUsername,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidateAllEvent value)? validateAll,
    required TResult orElse(),
  }) {
    if (validateAll != null) {
      return validateAll(this);
    }
    return orElse();
  }
}

abstract class _ValidateAllEvent implements SignInValidationsEvent {
  const factory _ValidateAllEvent() = _$ValidateAllEventImpl;
}

/// @nodoc
mixin _$SignInValidationsState {
  UsernameInput get username => throw _privateConstructorUsedError;
  LoginPasswordInput get password => throw _privateConstructorUsedError;
  String? get usernameErrorMesasge => throw _privateConstructorUsedError;
  String? get passwordErrorMessage => throw _privateConstructorUsedError;
  bool get allFieldsAreValid => throw _privateConstructorUsedError;

  /// Create a copy of SignInValidationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInValidationsStateCopyWith<SignInValidationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInValidationsStateCopyWith<$Res> {
  factory $SignInValidationsStateCopyWith(SignInValidationsState value,
          $Res Function(SignInValidationsState) then) =
      _$SignInValidationsStateCopyWithImpl<$Res, SignInValidationsState>;
  @useResult
  $Res call(
      {UsernameInput username,
      LoginPasswordInput password,
      String? usernameErrorMesasge,
      String? passwordErrorMessage,
      bool allFieldsAreValid});
}

/// @nodoc
class _$SignInValidationsStateCopyWithImpl<$Res,
        $Val extends SignInValidationsState>
    implements $SignInValidationsStateCopyWith<$Res> {
  _$SignInValidationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInValidationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? usernameErrorMesasge = freezed,
    Object? passwordErrorMessage = freezed,
    Object? allFieldsAreValid = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as UsernameInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as LoginPasswordInput,
      usernameErrorMesasge: freezed == usernameErrorMesasge
          ? _value.usernameErrorMesasge
          : usernameErrorMesasge // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordErrorMessage: freezed == passwordErrorMessage
          ? _value.passwordErrorMessage
          : passwordErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      allFieldsAreValid: null == allFieldsAreValid
          ? _value.allFieldsAreValid
          : allFieldsAreValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInValidationsStateImplCopyWith<$Res>
    implements $SignInValidationsStateCopyWith<$Res> {
  factory _$$SignInValidationsStateImplCopyWith(
          _$SignInValidationsStateImpl value,
          $Res Function(_$SignInValidationsStateImpl) then) =
      __$$SignInValidationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UsernameInput username,
      LoginPasswordInput password,
      String? usernameErrorMesasge,
      String? passwordErrorMessage,
      bool allFieldsAreValid});
}

/// @nodoc
class __$$SignInValidationsStateImplCopyWithImpl<$Res>
    extends _$SignInValidationsStateCopyWithImpl<$Res,
        _$SignInValidationsStateImpl>
    implements _$$SignInValidationsStateImplCopyWith<$Res> {
  __$$SignInValidationsStateImplCopyWithImpl(
      _$SignInValidationsStateImpl _value,
      $Res Function(_$SignInValidationsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInValidationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? usernameErrorMesasge = freezed,
    Object? passwordErrorMessage = freezed,
    Object? allFieldsAreValid = null,
  }) {
    return _then(_$SignInValidationsStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as UsernameInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as LoginPasswordInput,
      usernameErrorMesasge: freezed == usernameErrorMesasge
          ? _value.usernameErrorMesasge
          : usernameErrorMesasge // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordErrorMessage: freezed == passwordErrorMessage
          ? _value.passwordErrorMessage
          : passwordErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      allFieldsAreValid: null == allFieldsAreValid
          ? _value.allFieldsAreValid
          : allFieldsAreValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignInValidationsStateImpl implements _SignInValidationsState {
  const _$SignInValidationsStateImpl(
      {this.username = const UsernameInput.pure(),
      this.password = const LoginPasswordInput.pure(),
      this.usernameErrorMesasge = null,
      this.passwordErrorMessage = null,
      this.allFieldsAreValid = false});

  @override
  @JsonKey()
  final UsernameInput username;
  @override
  @JsonKey()
  final LoginPasswordInput password;
  @override
  @JsonKey()
  final String? usernameErrorMesasge;
  @override
  @JsonKey()
  final String? passwordErrorMessage;
  @override
  @JsonKey()
  final bool allFieldsAreValid;

  @override
  String toString() {
    return 'SignInValidationsState(username: $username, password: $password, usernameErrorMesasge: $usernameErrorMesasge, passwordErrorMessage: $passwordErrorMessage, allFieldsAreValid: $allFieldsAreValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInValidationsStateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.usernameErrorMesasge, usernameErrorMesasge) ||
                other.usernameErrorMesasge == usernameErrorMesasge) &&
            (identical(other.passwordErrorMessage, passwordErrorMessage) ||
                other.passwordErrorMessage == passwordErrorMessage) &&
            (identical(other.allFieldsAreValid, allFieldsAreValid) ||
                other.allFieldsAreValid == allFieldsAreValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password,
      usernameErrorMesasge, passwordErrorMessage, allFieldsAreValid);

  /// Create a copy of SignInValidationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInValidationsStateImplCopyWith<_$SignInValidationsStateImpl>
      get copyWith => __$$SignInValidationsStateImplCopyWithImpl<
          _$SignInValidationsStateImpl>(this, _$identity);
}

abstract class _SignInValidationsState implements SignInValidationsState {
  const factory _SignInValidationsState(
      {final UsernameInput username,
      final LoginPasswordInput password,
      final String? usernameErrorMesasge,
      final String? passwordErrorMessage,
      final bool allFieldsAreValid}) = _$SignInValidationsStateImpl;

  @override
  UsernameInput get username;
  @override
  LoginPasswordInput get password;
  @override
  String? get usernameErrorMesasge;
  @override
  String? get passwordErrorMessage;
  @override
  bool get allFieldsAreValid;

  /// Create a copy of SignInValidationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInValidationsStateImplCopyWith<_$SignInValidationsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
