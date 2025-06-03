// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(User user) setUser,
    required TResult Function(String username) setUsername,
    required TResult Function(String email) setEmail,
    required TResult Function(Language language)
        setNotificationLanguagePreferenceType,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
    required TResult Function() restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(User user)? setUser,
    TResult? Function(String username)? setUsername,
    TResult? Function(String email)? setEmail,
    TResult? Function(Language language)? setNotificationLanguagePreferenceType,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult? Function()? restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(User user)? setUser,
    TResult Function(String username)? setUsername,
    TResult Function(String email)? setEmail,
    TResult Function(Language language)? setNotificationLanguagePreferenceType,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult Function()? restart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SetUserEvent value) setUser,
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)
        setNotificationLanguagePreferenceType,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
    required TResult Function(_RestartUserEvent value) restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SetUserEvent value)? setUser,
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
    TResult? Function(_RestartUserEvent value)? restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SetUserEvent value)? setUser,
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    TResult Function(_RestartUserEvent value)? restart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserEventImplCopyWith<$Res> {
  factory _$$GetUserEventImplCopyWith(
          _$GetUserEventImpl value, $Res Function(_$GetUserEventImpl) then) =
      __$$GetUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserEventImpl>
    implements _$$GetUserEventImplCopyWith<$Res> {
  __$$GetUserEventImplCopyWithImpl(
      _$GetUserEventImpl _value, $Res Function(_$GetUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserEventImpl with DiagnosticableTreeMixin implements _GetUserEvent {
  const _$GetUserEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.getUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.getUser'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(User user) setUser,
    required TResult Function(String username) setUsername,
    required TResult Function(String email) setEmail,
    required TResult Function(Language language)
        setNotificationLanguagePreferenceType,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
    required TResult Function() restart,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(User user)? setUser,
    TResult? Function(String username)? setUsername,
    TResult? Function(String email)? setEmail,
    TResult? Function(Language language)? setNotificationLanguagePreferenceType,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult? Function()? restart,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(User user)? setUser,
    TResult Function(String username)? setUsername,
    TResult Function(String email)? setEmail,
    TResult Function(Language language)? setNotificationLanguagePreferenceType,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SetUserEvent value) setUser,
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)
        setNotificationLanguagePreferenceType,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
    required TResult Function(_RestartUserEvent value) restart,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SetUserEvent value)? setUser,
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
    TResult? Function(_RestartUserEvent value)? restart,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SetUserEvent value)? setUser,
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    TResult Function(_RestartUserEvent value)? restart,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUserEvent implements UserEvent {
  const factory _GetUserEvent() = _$GetUserEventImpl;
}

/// @nodoc
abstract class _$$SetUserEventImplCopyWith<$Res> {
  factory _$$SetUserEventImplCopyWith(
          _$SetUserEventImpl value, $Res Function(_$SetUserEventImpl) then) =
      __$$SetUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$SetUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SetUserEventImpl>
    implements _$$SetUserEventImplCopyWith<$Res> {
  __$$SetUserEventImplCopyWithImpl(
      _$SetUserEventImpl _value, $Res Function(_$SetUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SetUserEventImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$SetUserEventImpl with DiagnosticableTreeMixin implements _SetUserEvent {
  const _$SetUserEventImpl(this.user);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.setUser(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.setUser'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUserEventImplCopyWith<_$SetUserEventImpl> get copyWith =>
      __$$SetUserEventImplCopyWithImpl<_$SetUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(User user) setUser,
    required TResult Function(String username) setUsername,
    required TResult Function(String email) setEmail,
    required TResult Function(Language language)
        setNotificationLanguagePreferenceType,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
    required TResult Function() restart,
  }) {
    return setUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(User user)? setUser,
    TResult? Function(String username)? setUsername,
    TResult? Function(String email)? setEmail,
    TResult? Function(Language language)? setNotificationLanguagePreferenceType,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult? Function()? restart,
  }) {
    return setUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(User user)? setUser,
    TResult Function(String username)? setUsername,
    TResult Function(String email)? setEmail,
    TResult Function(Language language)? setNotificationLanguagePreferenceType,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (setUser != null) {
      return setUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SetUserEvent value) setUser,
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)
        setNotificationLanguagePreferenceType,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
    required TResult Function(_RestartUserEvent value) restart,
  }) {
    return setUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SetUserEvent value)? setUser,
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
    TResult? Function(_RestartUserEvent value)? restart,
  }) {
    return setUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SetUserEvent value)? setUser,
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    TResult Function(_RestartUserEvent value)? restart,
    required TResult orElse(),
  }) {
    if (setUser != null) {
      return setUser(this);
    }
    return orElse();
  }
}

abstract class _SetUserEvent implements UserEvent {
  const factory _SetUserEvent(final User user) = _$SetUserEventImpl;

  User get user;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetUserEventImplCopyWith<_$SetUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$UserEventCopyWithImpl<$Res, _$SetUsernameEventImpl>
    implements _$$SetUsernameEventImplCopyWith<$Res> {
  __$$SetUsernameEventImplCopyWithImpl(_$SetUsernameEventImpl _value,
      $Res Function(_$SetUsernameEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
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

class _$SetUsernameEventImpl
    with DiagnosticableTreeMixin
    implements _SetUsernameEvent {
  const _$SetUsernameEventImpl(this.username);

  @override
  final String username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.setUsername(username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.setUsername'))
      ..add(DiagnosticsProperty('username', username));
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

  /// Create a copy of UserEvent
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
    required TResult Function() getUser,
    required TResult Function(User user) setUser,
    required TResult Function(String username) setUsername,
    required TResult Function(String email) setEmail,
    required TResult Function(Language language)
        setNotificationLanguagePreferenceType,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
    required TResult Function() restart,
  }) {
    return setUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(User user)? setUser,
    TResult? Function(String username)? setUsername,
    TResult? Function(String email)? setEmail,
    TResult? Function(Language language)? setNotificationLanguagePreferenceType,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult? Function()? restart,
  }) {
    return setUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(User user)? setUser,
    TResult Function(String username)? setUsername,
    TResult Function(String email)? setEmail,
    TResult Function(Language language)? setNotificationLanguagePreferenceType,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult Function()? restart,
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
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SetUserEvent value) setUser,
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)
        setNotificationLanguagePreferenceType,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
    required TResult Function(_RestartUserEvent value) restart,
  }) {
    return setUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SetUserEvent value)? setUser,
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
    TResult? Function(_RestartUserEvent value)? restart,
  }) {
    return setUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SetUserEvent value)? setUser,
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    TResult Function(_RestartUserEvent value)? restart,
    required TResult orElse(),
  }) {
    if (setUsername != null) {
      return setUsername(this);
    }
    return orElse();
  }
}

abstract class _SetUsernameEvent implements UserEvent {
  const factory _SetUsernameEvent(final String username) =
      _$SetUsernameEventImpl;

  String get username;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetUsernameEventImplCopyWith<_$SetUsernameEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetEmailEventImplCopyWith<$Res> {
  factory _$$SetEmailEventImplCopyWith(
          _$SetEmailEventImpl value, $Res Function(_$SetEmailEventImpl) then) =
      __$$SetEmailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SetEmailEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SetEmailEventImpl>
    implements _$$SetEmailEventImplCopyWith<$Res> {
  __$$SetEmailEventImplCopyWithImpl(
      _$SetEmailEventImpl _value, $Res Function(_$SetEmailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SetEmailEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetEmailEventImpl
    with DiagnosticableTreeMixin
    implements _SetEmailEvent {
  const _$SetEmailEventImpl(this.email);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.setEmail(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.setEmail'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetEmailEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetEmailEventImplCopyWith<_$SetEmailEventImpl> get copyWith =>
      __$$SetEmailEventImplCopyWithImpl<_$SetEmailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(User user) setUser,
    required TResult Function(String username) setUsername,
    required TResult Function(String email) setEmail,
    required TResult Function(Language language)
        setNotificationLanguagePreferenceType,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
    required TResult Function() restart,
  }) {
    return setEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(User user)? setUser,
    TResult? Function(String username)? setUsername,
    TResult? Function(String email)? setEmail,
    TResult? Function(Language language)? setNotificationLanguagePreferenceType,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult? Function()? restart,
  }) {
    return setEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(User user)? setUser,
    TResult Function(String username)? setUsername,
    TResult Function(String email)? setEmail,
    TResult Function(Language language)? setNotificationLanguagePreferenceType,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (setEmail != null) {
      return setEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SetUserEvent value) setUser,
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)
        setNotificationLanguagePreferenceType,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
    required TResult Function(_RestartUserEvent value) restart,
  }) {
    return setEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SetUserEvent value)? setUser,
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
    TResult? Function(_RestartUserEvent value)? restart,
  }) {
    return setEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SetUserEvent value)? setUser,
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    TResult Function(_RestartUserEvent value)? restart,
    required TResult orElse(),
  }) {
    if (setEmail != null) {
      return setEmail(this);
    }
    return orElse();
  }
}

abstract class _SetEmailEvent implements UserEvent {
  const factory _SetEmailEvent(final String email) = _$SetEmailEventImpl;

  String get email;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetEmailEventImplCopyWith<_$SetEmailEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetNotificationLanguagePreferenceTypeEventImplCopyWith<$Res> {
  factory _$$SetNotificationLanguagePreferenceTypeEventImplCopyWith(
          _$SetNotificationLanguagePreferenceTypeEventImpl value,
          $Res Function(_$SetNotificationLanguagePreferenceTypeEventImpl)
              then) =
      __$$SetNotificationLanguagePreferenceTypeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Language language});
}

/// @nodoc
class __$$SetNotificationLanguagePreferenceTypeEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res,
        _$SetNotificationLanguagePreferenceTypeEventImpl>
    implements _$$SetNotificationLanguagePreferenceTypeEventImplCopyWith<$Res> {
  __$$SetNotificationLanguagePreferenceTypeEventImplCopyWithImpl(
      _$SetNotificationLanguagePreferenceTypeEventImpl _value,
      $Res Function(_$SetNotificationLanguagePreferenceTypeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$SetNotificationLanguagePreferenceTypeEventImpl(
      null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc

class _$SetNotificationLanguagePreferenceTypeEventImpl
    with DiagnosticableTreeMixin
    implements _SetNotificationLanguagePreferenceTypeEvent {
  const _$SetNotificationLanguagePreferenceTypeEventImpl(this.language);

  @override
  final Language language;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.setNotificationLanguagePreferenceType(language: $language)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'UserEvent.setNotificationLanguagePreferenceType'))
      ..add(DiagnosticsProperty('language', language));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNotificationLanguagePreferenceTypeEventImpl &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNotificationLanguagePreferenceTypeEventImplCopyWith<
          _$SetNotificationLanguagePreferenceTypeEventImpl>
      get copyWith =>
          __$$SetNotificationLanguagePreferenceTypeEventImplCopyWithImpl<
                  _$SetNotificationLanguagePreferenceTypeEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(User user) setUser,
    required TResult Function(String username) setUsername,
    required TResult Function(String email) setEmail,
    required TResult Function(Language language)
        setNotificationLanguagePreferenceType,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
    required TResult Function() restart,
  }) {
    return setNotificationLanguagePreferenceType(language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(User user)? setUser,
    TResult? Function(String username)? setUsername,
    TResult? Function(String email)? setEmail,
    TResult? Function(Language language)? setNotificationLanguagePreferenceType,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult? Function()? restart,
  }) {
    return setNotificationLanguagePreferenceType?.call(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(User user)? setUser,
    TResult Function(String username)? setUsername,
    TResult Function(String email)? setEmail,
    TResult Function(Language language)? setNotificationLanguagePreferenceType,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (setNotificationLanguagePreferenceType != null) {
      return setNotificationLanguagePreferenceType(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SetUserEvent value) setUser,
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)
        setNotificationLanguagePreferenceType,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
    required TResult Function(_RestartUserEvent value) restart,
  }) {
    return setNotificationLanguagePreferenceType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SetUserEvent value)? setUser,
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
    TResult? Function(_RestartUserEvent value)? restart,
  }) {
    return setNotificationLanguagePreferenceType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SetUserEvent value)? setUser,
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    TResult Function(_RestartUserEvent value)? restart,
    required TResult orElse(),
  }) {
    if (setNotificationLanguagePreferenceType != null) {
      return setNotificationLanguagePreferenceType(this);
    }
    return orElse();
  }
}

abstract class _SetNotificationLanguagePreferenceTypeEvent
    implements UserEvent {
  const factory _SetNotificationLanguagePreferenceTypeEvent(
          final Language language) =
      _$SetNotificationLanguagePreferenceTypeEventImpl;

  Language get language;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetNotificationLanguagePreferenceTypeEventImplCopyWith<
          _$SetNotificationLanguagePreferenceTypeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetContactInformationEventImplCopyWith<$Res> {
  factory _$$SetContactInformationEventImplCopyWith(
          _$SetContactInformationEventImpl value,
          $Res Function(_$SetContactInformationEventImpl) then) =
      __$$SetContactInformationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String residentEmail,
      String cellPhone,
      String homePhone,
      bool useBillingAddress,
      String billingAddress,
      String billingCity,
      String billingState,
      String billingPostalCode});
}

/// @nodoc
class __$$SetContactInformationEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SetContactInformationEventImpl>
    implements _$$SetContactInformationEventImplCopyWith<$Res> {
  __$$SetContactInformationEventImplCopyWithImpl(
      _$SetContactInformationEventImpl _value,
      $Res Function(_$SetContactInformationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentEmail = null,
    Object? cellPhone = null,
    Object? homePhone = null,
    Object? useBillingAddress = null,
    Object? billingAddress = null,
    Object? billingCity = null,
    Object? billingState = null,
    Object? billingPostalCode = null,
  }) {
    return _then(_$SetContactInformationEventImpl(
      residentEmail: null == residentEmail
          ? _value.residentEmail
          : residentEmail // ignore: cast_nullable_to_non_nullable
              as String,
      cellPhone: null == cellPhone
          ? _value.cellPhone
          : cellPhone // ignore: cast_nullable_to_non_nullable
              as String,
      homePhone: null == homePhone
          ? _value.homePhone
          : homePhone // ignore: cast_nullable_to_non_nullable
              as String,
      useBillingAddress: null == useBillingAddress
          ? _value.useBillingAddress
          : useBillingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      billingAddress: null == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      billingCity: null == billingCity
          ? _value.billingCity
          : billingCity // ignore: cast_nullable_to_non_nullable
              as String,
      billingState: null == billingState
          ? _value.billingState
          : billingState // ignore: cast_nullable_to_non_nullable
              as String,
      billingPostalCode: null == billingPostalCode
          ? _value.billingPostalCode
          : billingPostalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetContactInformationEventImpl
    with DiagnosticableTreeMixin
    implements _SetContactInformationEvent {
  const _$SetContactInformationEventImpl(
      {required this.residentEmail,
      required this.cellPhone,
      required this.homePhone,
      required this.useBillingAddress,
      required this.billingAddress,
      required this.billingCity,
      required this.billingState,
      required this.billingPostalCode});

  @override
  final String residentEmail;
  @override
  final String cellPhone;
  @override
  final String homePhone;
  @override
  final bool useBillingAddress;
  @override
  final String billingAddress;
  @override
  final String billingCity;
  @override
  final String billingState;
  @override
  final String billingPostalCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.setContactInformation(residentEmail: $residentEmail, cellPhone: $cellPhone, homePhone: $homePhone, useBillingAddress: $useBillingAddress, billingAddress: $billingAddress, billingCity: $billingCity, billingState: $billingState, billingPostalCode: $billingPostalCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.setContactInformation'))
      ..add(DiagnosticsProperty('residentEmail', residentEmail))
      ..add(DiagnosticsProperty('cellPhone', cellPhone))
      ..add(DiagnosticsProperty('homePhone', homePhone))
      ..add(DiagnosticsProperty('useBillingAddress', useBillingAddress))
      ..add(DiagnosticsProperty('billingAddress', billingAddress))
      ..add(DiagnosticsProperty('billingCity', billingCity))
      ..add(DiagnosticsProperty('billingState', billingState))
      ..add(DiagnosticsProperty('billingPostalCode', billingPostalCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetContactInformationEventImpl &&
            (identical(other.residentEmail, residentEmail) ||
                other.residentEmail == residentEmail) &&
            (identical(other.cellPhone, cellPhone) ||
                other.cellPhone == cellPhone) &&
            (identical(other.homePhone, homePhone) ||
                other.homePhone == homePhone) &&
            (identical(other.useBillingAddress, useBillingAddress) ||
                other.useBillingAddress == useBillingAddress) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.billingCity, billingCity) ||
                other.billingCity == billingCity) &&
            (identical(other.billingState, billingState) ||
                other.billingState == billingState) &&
            (identical(other.billingPostalCode, billingPostalCode) ||
                other.billingPostalCode == billingPostalCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      residentEmail,
      cellPhone,
      homePhone,
      useBillingAddress,
      billingAddress,
      billingCity,
      billingState,
      billingPostalCode);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetContactInformationEventImplCopyWith<_$SetContactInformationEventImpl>
      get copyWith => __$$SetContactInformationEventImplCopyWithImpl<
          _$SetContactInformationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(User user) setUser,
    required TResult Function(String username) setUsername,
    required TResult Function(String email) setEmail,
    required TResult Function(Language language)
        setNotificationLanguagePreferenceType,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
    required TResult Function() restart,
  }) {
    return setContactInformation(
        residentEmail,
        cellPhone,
        homePhone,
        useBillingAddress,
        billingAddress,
        billingCity,
        billingState,
        billingPostalCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(User user)? setUser,
    TResult? Function(String username)? setUsername,
    TResult? Function(String email)? setEmail,
    TResult? Function(Language language)? setNotificationLanguagePreferenceType,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult? Function()? restart,
  }) {
    return setContactInformation?.call(
        residentEmail,
        cellPhone,
        homePhone,
        useBillingAddress,
        billingAddress,
        billingCity,
        billingState,
        billingPostalCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(User user)? setUser,
    TResult Function(String username)? setUsername,
    TResult Function(String email)? setEmail,
    TResult Function(Language language)? setNotificationLanguagePreferenceType,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (setContactInformation != null) {
      return setContactInformation(
          residentEmail,
          cellPhone,
          homePhone,
          useBillingAddress,
          billingAddress,
          billingCity,
          billingState,
          billingPostalCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SetUserEvent value) setUser,
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)
        setNotificationLanguagePreferenceType,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
    required TResult Function(_RestartUserEvent value) restart,
  }) {
    return setContactInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SetUserEvent value)? setUser,
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
    TResult? Function(_RestartUserEvent value)? restart,
  }) {
    return setContactInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SetUserEvent value)? setUser,
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    TResult Function(_RestartUserEvent value)? restart,
    required TResult orElse(),
  }) {
    if (setContactInformation != null) {
      return setContactInformation(this);
    }
    return orElse();
  }
}

abstract class _SetContactInformationEvent implements UserEvent {
  const factory _SetContactInformationEvent(
          {required final String residentEmail,
          required final String cellPhone,
          required final String homePhone,
          required final bool useBillingAddress,
          required final String billingAddress,
          required final String billingCity,
          required final String billingState,
          required final String billingPostalCode}) =
      _$SetContactInformationEventImpl;

  String get residentEmail;
  String get cellPhone;
  String get homePhone;
  bool get useBillingAddress;
  String get billingAddress;
  String get billingCity;
  String get billingState;
  String get billingPostalCode;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetContactInformationEventImplCopyWith<_$SetContactInformationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestartUserEventImplCopyWith<$Res> {
  factory _$$RestartUserEventImplCopyWith(_$RestartUserEventImpl value,
          $Res Function(_$RestartUserEventImpl) then) =
      __$$RestartUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestartUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$RestartUserEventImpl>
    implements _$$RestartUserEventImplCopyWith<$Res> {
  __$$RestartUserEventImplCopyWithImpl(_$RestartUserEventImpl _value,
      $Res Function(_$RestartUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartUserEventImpl
    with DiagnosticableTreeMixin
    implements _RestartUserEvent {
  const _$RestartUserEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.restart()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.restart'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestartUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(User user) setUser,
    required TResult Function(String username) setUsername,
    required TResult Function(String email) setEmail,
    required TResult Function(Language language)
        setNotificationLanguagePreferenceType,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(User user)? setUser,
    TResult? Function(String username)? setUsername,
    TResult? Function(String email)? setEmail,
    TResult? Function(Language language)? setNotificationLanguagePreferenceType,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(User user)? setUser,
    TResult Function(String username)? setUsername,
    TResult Function(String email)? setEmail,
    TResult Function(Language language)? setNotificationLanguagePreferenceType,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SetUserEvent value) setUser,
    required TResult Function(_SetUsernameEvent value) setUsername,
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)
        setNotificationLanguagePreferenceType,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
    required TResult Function(_RestartUserEvent value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SetUserEvent value)? setUser,
    TResult? Function(_SetUsernameEvent value)? setUsername,
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
    TResult? Function(_RestartUserEvent value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SetUserEvent value)? setUser,
    TResult Function(_SetUsernameEvent value)? setUsername,
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetNotificationLanguagePreferenceTypeEvent value)?
        setNotificationLanguagePreferenceType,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    TResult Function(_RestartUserEvent value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class _RestartUserEvent implements UserEvent {
  const factory _RestartUserEvent() = _$RestartUserEventImpl;
}

/// @nodoc
mixin _$UserState {
  User get user => throw _privateConstructorUsedError;
  UserStatus get userStatus => throw _privateConstructorUsedError;
  Language get languageSelectorInitialValue =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {User user,
      UserStatus userStatus,
      Language languageSelectorInitialValue});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? userStatus = null,
    Object? languageSelectorInitialValue = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      userStatus: null == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      languageSelectorInitialValue: null == languageSelectorInitialValue
          ? _value.languageSelectorInitialValue
          : languageSelectorInitialValue // ignore: cast_nullable_to_non_nullable
              as Language,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      UserStatus userStatus,
      Language languageSelectorInitialValue});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? userStatus = null,
    Object? languageSelectorInitialValue = null,
  }) {
    return _then(_$UserStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      userStatus: null == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      languageSelectorInitialValue: null == languageSelectorInitialValue
          ? _value.languageSelectorInitialValue
          : languageSelectorInitialValue // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc

class _$UserStateImpl with DiagnosticableTreeMixin implements _UserState {
  const _$UserStateImpl(
      {this.user = User.empty,
      this.userStatus = UserStatus.initial,
      this.languageSelectorInitialValue = Language.english});

  @override
  @JsonKey()
  final User user;
  @override
  @JsonKey()
  final UserStatus userStatus;
  @override
  @JsonKey()
  final Language languageSelectorInitialValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState(user: $user, userStatus: $userStatus, languageSelectorInitialValue: $languageSelectorInitialValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('userStatus', userStatus))
      ..add(DiagnosticsProperty(
          'languageSelectorInitialValue', languageSelectorInitialValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userStatus, userStatus) ||
                other.userStatus == userStatus) &&
            (identical(other.languageSelectorInitialValue,
                    languageSelectorInitialValue) ||
                other.languageSelectorInitialValue ==
                    languageSelectorInitialValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, userStatus, languageSelectorInitialValue);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final User user,
      final UserStatus userStatus,
      final Language languageSelectorInitialValue}) = _$UserStateImpl;

  @override
  User get user;
  @override
  UserStatus get userStatus;
  @override
  Language get languageSelectorInitialValue;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
