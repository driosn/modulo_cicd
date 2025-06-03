// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() signInWithBiometrics,
    required TResult Function() signOut,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? signIn,
    TResult? Function()? signInWithBiometrics,
    TResult? Function()? signOut,
    TResult? Function()? signedOut,
    TResult? Function()? sessionExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signOut,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignInWithBiometricsEvent value)
        signInWithBiometrics,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_SignedOutEvent value) signedOut,
    required TResult Function(_SessionExpiredEvent value) sessionExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignInWithBiometricsEvent value)? signInWithBiometrics,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_SignedOutEvent value)? signedOut,
    TResult? Function(_SessionExpiredEvent value)? sessionExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignInWithBiometricsEvent value)? signInWithBiometrics,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_SessionExpiredEvent value)? sessionExpired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignInEventImplCopyWith<$Res> {
  factory _$$SignInEventImplCopyWith(
          _$SignInEventImpl value, $Res Function(_$SignInEventImpl) then) =
      __$$SignInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$SignInEventImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInEventImpl>
    implements _$$SignInEventImplCopyWith<$Res> {
  __$$SignInEventImplCopyWithImpl(
      _$SignInEventImpl _value, $Res Function(_$SignInEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$SignInEventImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInEventImpl with DiagnosticableTreeMixin implements _SignInEvent {
  const _$SignInEventImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.signIn(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInEvent.signIn'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      __$$SignInEventImplCopyWithImpl<_$SignInEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() signInWithBiometrics,
    required TResult Function() signOut,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
  }) {
    return signIn(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? signIn,
    TResult? Function()? signInWithBiometrics,
    TResult? Function()? signOut,
    TResult? Function()? signedOut,
    TResult? Function()? sessionExpired,
  }) {
    return signIn?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signOut,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignInWithBiometricsEvent value)
        signInWithBiometrics,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_SignedOutEvent value) signedOut,
    required TResult Function(_SessionExpiredEvent value) sessionExpired,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignInWithBiometricsEvent value)? signInWithBiometrics,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_SignedOutEvent value)? signedOut,
    TResult? Function(_SessionExpiredEvent value)? sessionExpired,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignInWithBiometricsEvent value)? signInWithBiometrics,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_SessionExpiredEvent value)? sessionExpired,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignInEvent implements SignInEvent {
  const factory _SignInEvent(
      {required final String username,
      required final String password}) = _$SignInEventImpl;

  String get username;
  String get password;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithBiometricsEventImplCopyWith<$Res> {
  factory _$$SignInWithBiometricsEventImplCopyWith(
          _$SignInWithBiometricsEventImpl value,
          $Res Function(_$SignInWithBiometricsEventImpl) then) =
      __$$SignInWithBiometricsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithBiometricsEventImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInWithBiometricsEventImpl>
    implements _$$SignInWithBiometricsEventImplCopyWith<$Res> {
  __$$SignInWithBiometricsEventImplCopyWithImpl(
      _$SignInWithBiometricsEventImpl _value,
      $Res Function(_$SignInWithBiometricsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithBiometricsEventImpl
    with DiagnosticableTreeMixin
    implements _SignInWithBiometricsEvent {
  const _$SignInWithBiometricsEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.signInWithBiometrics()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SignInEvent.signInWithBiometrics'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithBiometricsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() signInWithBiometrics,
    required TResult Function() signOut,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
  }) {
    return signInWithBiometrics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? signIn,
    TResult? Function()? signInWithBiometrics,
    TResult? Function()? signOut,
    TResult? Function()? signedOut,
    TResult? Function()? sessionExpired,
  }) {
    return signInWithBiometrics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signOut,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) {
    if (signInWithBiometrics != null) {
      return signInWithBiometrics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignInWithBiometricsEvent value)
        signInWithBiometrics,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_SignedOutEvent value) signedOut,
    required TResult Function(_SessionExpiredEvent value) sessionExpired,
  }) {
    return signInWithBiometrics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignInWithBiometricsEvent value)? signInWithBiometrics,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_SignedOutEvent value)? signedOut,
    TResult? Function(_SessionExpiredEvent value)? sessionExpired,
  }) {
    return signInWithBiometrics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignInWithBiometricsEvent value)? signInWithBiometrics,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_SessionExpiredEvent value)? sessionExpired,
    required TResult orElse(),
  }) {
    if (signInWithBiometrics != null) {
      return signInWithBiometrics(this);
    }
    return orElse();
  }
}

abstract class _SignInWithBiometricsEvent implements SignInEvent {
  const factory _SignInWithBiometricsEvent() = _$SignInWithBiometricsEventImpl;
}

/// @nodoc
abstract class _$$SignOutEventImplCopyWith<$Res> {
  factory _$$SignOutEventImplCopyWith(
          _$SignOutEventImpl value, $Res Function(_$SignOutEventImpl) then) =
      __$$SignOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutEventImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignOutEventImpl>
    implements _$$SignOutEventImplCopyWith<$Res> {
  __$$SignOutEventImplCopyWithImpl(
      _$SignOutEventImpl _value, $Res Function(_$SignOutEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignOutEventImpl with DiagnosticableTreeMixin implements _SignOutEvent {
  const _$SignOutEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.signOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInEvent.signOut'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() signInWithBiometrics,
    required TResult Function() signOut,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? signIn,
    TResult? Function()? signInWithBiometrics,
    TResult? Function()? signOut,
    TResult? Function()? signedOut,
    TResult? Function()? sessionExpired,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signOut,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignInWithBiometricsEvent value)
        signInWithBiometrics,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_SignedOutEvent value) signedOut,
    required TResult Function(_SessionExpiredEvent value) sessionExpired,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignInWithBiometricsEvent value)? signInWithBiometrics,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_SignedOutEvent value)? signedOut,
    TResult? Function(_SessionExpiredEvent value)? sessionExpired,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignInWithBiometricsEvent value)? signInWithBiometrics,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_SessionExpiredEvent value)? sessionExpired,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOutEvent implements SignInEvent {
  const factory _SignOutEvent() = _$SignOutEventImpl;
}

/// @nodoc
abstract class _$$SignedOutEventImplCopyWith<$Res> {
  factory _$$SignedOutEventImplCopyWith(_$SignedOutEventImpl value,
          $Res Function(_$SignedOutEventImpl) then) =
      __$$SignedOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutEventImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignedOutEventImpl>
    implements _$$SignedOutEventImplCopyWith<$Res> {
  __$$SignedOutEventImplCopyWithImpl(
      _$SignedOutEventImpl _value, $Res Function(_$SignedOutEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignedOutEventImpl
    with DiagnosticableTreeMixin
    implements _SignedOutEvent {
  const _$SignedOutEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.signedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInEvent.signedOut'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() signInWithBiometrics,
    required TResult Function() signOut,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? signIn,
    TResult? Function()? signInWithBiometrics,
    TResult? Function()? signOut,
    TResult? Function()? signedOut,
    TResult? Function()? sessionExpired,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signOut,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignInWithBiometricsEvent value)
        signInWithBiometrics,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_SignedOutEvent value) signedOut,
    required TResult Function(_SessionExpiredEvent value) sessionExpired,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignInWithBiometricsEvent value)? signInWithBiometrics,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_SignedOutEvent value)? signedOut,
    TResult? Function(_SessionExpiredEvent value)? sessionExpired,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignInWithBiometricsEvent value)? signInWithBiometrics,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_SessionExpiredEvent value)? sessionExpired,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOutEvent implements SignInEvent {
  const factory _SignedOutEvent() = _$SignedOutEventImpl;
}

/// @nodoc
abstract class _$$SessionExpiredEventImplCopyWith<$Res> {
  factory _$$SessionExpiredEventImplCopyWith(_$SessionExpiredEventImpl value,
          $Res Function(_$SessionExpiredEventImpl) then) =
      __$$SessionExpiredEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionExpiredEventImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SessionExpiredEventImpl>
    implements _$$SessionExpiredEventImplCopyWith<$Res> {
  __$$SessionExpiredEventImplCopyWithImpl(_$SessionExpiredEventImpl _value,
      $Res Function(_$SessionExpiredEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SessionExpiredEventImpl
    with DiagnosticableTreeMixin
    implements _SessionExpiredEvent {
  const _$SessionExpiredEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.sessionExpired()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInEvent.sessionExpired'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionExpiredEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() signInWithBiometrics,
    required TResult Function() signOut,
    required TResult Function() signedOut,
    required TResult Function() sessionExpired,
  }) {
    return sessionExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? signIn,
    TResult? Function()? signInWithBiometrics,
    TResult? Function()? signOut,
    TResult? Function()? signedOut,
    TResult? Function()? sessionExpired,
  }) {
    return sessionExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? signInWithBiometrics,
    TResult Function()? signOut,
    TResult Function()? signedOut,
    TResult Function()? sessionExpired,
    required TResult orElse(),
  }) {
    if (sessionExpired != null) {
      return sessionExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInEvent value) signIn,
    required TResult Function(_SignInWithBiometricsEvent value)
        signInWithBiometrics,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_SignedOutEvent value) signedOut,
    required TResult Function(_SessionExpiredEvent value) sessionExpired,
  }) {
    return sessionExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInEvent value)? signIn,
    TResult? Function(_SignInWithBiometricsEvent value)? signInWithBiometrics,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_SignedOutEvent value)? signedOut,
    TResult? Function(_SessionExpiredEvent value)? sessionExpired,
  }) {
    return sessionExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInEvent value)? signIn,
    TResult Function(_SignInWithBiometricsEvent value)? signInWithBiometrics,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_SignedOutEvent value)? signedOut,
    TResult Function(_SessionExpiredEvent value)? sessionExpired,
    required TResult orElse(),
  }) {
    if (sessionExpired != null) {
      return sessionExpired(this);
    }
    return orElse();
  }
}

abstract class _SessionExpiredEvent implements SignInEvent {
  const factory _SessionExpiredEvent() = _$SessionExpiredEventImpl;
}

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function() sessionExpired,
    required TResult Function(User user, bool navigateToSummary) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String errorMessage) biometricsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function()? sessionExpired,
    TResult? Function(User user, bool navigateToSummary)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String errorMessage)? biometricsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function()? sessionExpired,
    TResult Function(User user, bool navigateToSummary)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String errorMessage)? biometricsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_BiometricsFailure value) biometricsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_BiometricsFailure value)? biometricsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_BiometricsFailure value)? biometricsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function() sessionExpired,
    required TResult Function(User user, bool navigateToSummary) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String errorMessage) biometricsFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function()? sessionExpired,
    TResult? Function(User user, bool navigateToSummary)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String errorMessage)? biometricsFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function()? sessionExpired,
    TResult Function(User user, bool navigateToSummary)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String errorMessage)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_BiometricsFailure value) biometricsFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_BiometricsFailure value)? biometricsFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_BiometricsFailure value)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignInState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function() sessionExpired,
    required TResult Function(User user, bool navigateToSummary) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String errorMessage) biometricsFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function()? sessionExpired,
    TResult? Function(User user, bool navigateToSummary)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String errorMessage)? biometricsFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function()? sessionExpired,
    TResult Function(User user, bool navigateToSummary)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String errorMessage)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_BiometricsFailure value) biometricsFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_BiometricsFailure value)? biometricsFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_BiometricsFailure value)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SignInState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoggedOutImpl with DiagnosticableTreeMixin implements _LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.loggedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInState.loggedOut'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function() sessionExpired,
    required TResult Function(User user, bool navigateToSummary) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String errorMessage) biometricsFailure,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function()? sessionExpired,
    TResult? Function(User user, bool navigateToSummary)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String errorMessage)? biometricsFailure,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function()? sessionExpired,
    TResult Function(User user, bool navigateToSummary)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String errorMessage)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_BiometricsFailure value) biometricsFailure,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_BiometricsFailure value)? biometricsFailure,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_BiometricsFailure value)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements SignInState {
  const factory _LoggedOut() = _$LoggedOutImpl;
}

/// @nodoc
abstract class _$$SessionExpiredImplCopyWith<$Res> {
  factory _$$SessionExpiredImplCopyWith(_$SessionExpiredImpl value,
          $Res Function(_$SessionExpiredImpl) then) =
      __$$SessionExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionExpiredImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SessionExpiredImpl>
    implements _$$SessionExpiredImplCopyWith<$Res> {
  __$$SessionExpiredImplCopyWithImpl(
      _$SessionExpiredImpl _value, $Res Function(_$SessionExpiredImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SessionExpiredImpl
    with DiagnosticableTreeMixin
    implements _SessionExpired {
  const _$SessionExpiredImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.sessionExpired()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SignInState.sessionExpired'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SessionExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function() sessionExpired,
    required TResult Function(User user, bool navigateToSummary) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String errorMessage) biometricsFailure,
  }) {
    return sessionExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function()? sessionExpired,
    TResult? Function(User user, bool navigateToSummary)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String errorMessage)? biometricsFailure,
  }) {
    return sessionExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function()? sessionExpired,
    TResult Function(User user, bool navigateToSummary)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String errorMessage)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (sessionExpired != null) {
      return sessionExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_BiometricsFailure value) biometricsFailure,
  }) {
    return sessionExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_BiometricsFailure value)? biometricsFailure,
  }) {
    return sessionExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_BiometricsFailure value)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (sessionExpired != null) {
      return sessionExpired(this);
    }
    return orElse();
  }
}

abstract class _SessionExpired implements SignInState {
  const factory _SessionExpired() = _$SessionExpiredImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, bool navigateToSummary});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? navigateToSummary = null,
  }) {
    return _then(_$SuccessImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      navigateToSummary: null == navigateToSummary
          ? _value.navigateToSummary
          : navigateToSummary // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements _Success {
  const _$SuccessImpl({required this.user, this.navigateToSummary = true});

  @override
  final User user;
  @override
  @JsonKey()
  final bool navigateToSummary;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.success(user: $user, navigateToSummary: $navigateToSummary)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.success'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('navigateToSummary', navigateToSummary));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.navigateToSummary, navigateToSummary) ||
                other.navigateToSummary == navigateToSummary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, navigateToSummary);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function() sessionExpired,
    required TResult Function(User user, bool navigateToSummary) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String errorMessage) biometricsFailure,
  }) {
    return success(user, navigateToSummary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function()? sessionExpired,
    TResult? Function(User user, bool navigateToSummary)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String errorMessage)? biometricsFailure,
  }) {
    return success?.call(user, navigateToSummary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function()? sessionExpired,
    TResult Function(User user, bool navigateToSummary)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String errorMessage)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user, navigateToSummary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_BiometricsFailure value) biometricsFailure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_BiometricsFailure value)? biometricsFailure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_BiometricsFailure value)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SignInState {
  const factory _Success(
      {required final User user, final bool navigateToSummary}) = _$SuccessImpl;

  User get user;
  bool get navigateToSummary;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl with DiagnosticableTreeMixin implements _Failure {
  const _$FailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.failure(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.failure'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function() sessionExpired,
    required TResult Function(User user, bool navigateToSummary) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String errorMessage) biometricsFailure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function()? sessionExpired,
    TResult? Function(User user, bool navigateToSummary)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String errorMessage)? biometricsFailure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function()? sessionExpired,
    TResult Function(User user, bool navigateToSummary)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String errorMessage)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_BiometricsFailure value) biometricsFailure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_BiometricsFailure value)? biometricsFailure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_BiometricsFailure value)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SignInState {
  const factory _Failure(final String errorMessage) = _$FailureImpl;

  String get errorMessage;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BiometricsFailureImplCopyWith<$Res> {
  factory _$$BiometricsFailureImplCopyWith(_$BiometricsFailureImpl value,
          $Res Function(_$BiometricsFailureImpl) then) =
      __$$BiometricsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$BiometricsFailureImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$BiometricsFailureImpl>
    implements _$$BiometricsFailureImplCopyWith<$Res> {
  __$$BiometricsFailureImplCopyWithImpl(_$BiometricsFailureImpl _value,
      $Res Function(_$BiometricsFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$BiometricsFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BiometricsFailureImpl
    with DiagnosticableTreeMixin
    implements _BiometricsFailure {
  const _$BiometricsFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.biometricsFailure(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.biometricsFailure'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricsFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiometricsFailureImplCopyWith<_$BiometricsFailureImpl> get copyWith =>
      __$$BiometricsFailureImplCopyWithImpl<_$BiometricsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggedOut,
    required TResult Function() sessionExpired,
    required TResult Function(User user, bool navigateToSummary) success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String errorMessage) biometricsFailure,
  }) {
    return biometricsFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggedOut,
    TResult? Function()? sessionExpired,
    TResult? Function(User user, bool navigateToSummary)? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String errorMessage)? biometricsFailure,
  }) {
    return biometricsFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggedOut,
    TResult Function()? sessionExpired,
    TResult Function(User user, bool navigateToSummary)? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String errorMessage)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (biometricsFailure != null) {
      return biometricsFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_SessionExpired value) sessionExpired,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_BiometricsFailure value) biometricsFailure,
  }) {
    return biometricsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_SessionExpired value)? sessionExpired,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_BiometricsFailure value)? biometricsFailure,
  }) {
    return biometricsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_SessionExpired value)? sessionExpired,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_BiometricsFailure value)? biometricsFailure,
    required TResult orElse(),
  }) {
    if (biometricsFailure != null) {
      return biometricsFailure(this);
    }
    return orElse();
  }
}

abstract class _BiometricsFailure implements SignInState {
  const factory _BiometricsFailure(final String errorMessage) =
      _$BiometricsFailureImpl;

  String get errorMessage;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiometricsFailureImplCopyWith<_$BiometricsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
