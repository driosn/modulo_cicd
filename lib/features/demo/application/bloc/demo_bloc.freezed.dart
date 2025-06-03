// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DemoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function(String phone) setPhone,
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validatePhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function(String phone)? setPhone,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validatePhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function(String phone)? setPhone,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validatePhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidatePhoneEvent value) validatePhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_SetPhoneEvent value)? setPhone,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidatePhoneEvent value)? validatePhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidatePhoneEvent value)? validatePhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemoEventCopyWith<$Res> {
  factory $DemoEventCopyWith(DemoEvent value, $Res Function(DemoEvent) then) =
      _$DemoEventCopyWithImpl<$Res, DemoEvent>;
}

/// @nodoc
class _$DemoEventCopyWithImpl<$Res, $Val extends DemoEvent>
    implements $DemoEventCopyWith<$Res> {
  _$DemoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DemoEvent
  /// with the given fields replaced by the non-null parameter values.
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
    extends _$DemoEventCopyWithImpl<$Res, _$SetEmailEventImpl>
    implements _$$SetEmailEventImplCopyWith<$Res> {
  __$$SetEmailEventImplCopyWithImpl(
      _$SetEmailEventImpl _value, $Res Function(_$SetEmailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DemoEvent
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

class _$SetEmailEventImpl implements _SetEmailEvent {
  const _$SetEmailEventImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'DemoEvent.setEmail(email: $email)';
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

  /// Create a copy of DemoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetEmailEventImplCopyWith<_$SetEmailEventImpl> get copyWith =>
      __$$SetEmailEventImplCopyWithImpl<_$SetEmailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function(String phone) setPhone,
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validatePhone,
  }) {
    return setEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function(String phone)? setPhone,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validatePhone,
  }) {
    return setEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function(String phone)? setPhone,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validatePhone,
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
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidatePhoneEvent value) validatePhone,
  }) {
    return setEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_SetPhoneEvent value)? setPhone,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidatePhoneEvent value)? validatePhone,
  }) {
    return setEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidatePhoneEvent value)? validatePhone,
    required TResult orElse(),
  }) {
    if (setEmail != null) {
      return setEmail(this);
    }
    return orElse();
  }
}

abstract class _SetEmailEvent implements DemoEvent {
  const factory _SetEmailEvent(final String email) = _$SetEmailEventImpl;

  String get email;

  /// Create a copy of DemoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetEmailEventImplCopyWith<_$SetEmailEventImpl> get copyWith =>
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
    extends _$DemoEventCopyWithImpl<$Res, _$SetPasswordEventImpl>
    implements _$$SetPasswordEventImplCopyWith<$Res> {
  __$$SetPasswordEventImplCopyWithImpl(_$SetPasswordEventImpl _value,
      $Res Function(_$SetPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DemoEvent
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
    return 'DemoEvent.setPassword(password: $password)';
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

  /// Create a copy of DemoEvent
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
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function(String phone) setPhone,
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validatePhone,
  }) {
    return setPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function(String phone)? setPhone,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validatePhone,
  }) {
    return setPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function(String phone)? setPhone,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validatePhone,
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
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidatePhoneEvent value) validatePhone,
  }) {
    return setPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_SetPhoneEvent value)? setPhone,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidatePhoneEvent value)? validatePhone,
  }) {
    return setPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidatePhoneEvent value)? validatePhone,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(this);
    }
    return orElse();
  }
}

abstract class _SetPasswordEvent implements DemoEvent {
  const factory _SetPasswordEvent(final String password) =
      _$SetPasswordEventImpl;

  String get password;

  /// Create a copy of DemoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPasswordEventImplCopyWith<_$SetPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPhoneEventImplCopyWith<$Res> {
  factory _$$SetPhoneEventImplCopyWith(
          _$SetPhoneEventImpl value, $Res Function(_$SetPhoneEventImpl) then) =
      __$$SetPhoneEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$SetPhoneEventImplCopyWithImpl<$Res>
    extends _$DemoEventCopyWithImpl<$Res, _$SetPhoneEventImpl>
    implements _$$SetPhoneEventImplCopyWith<$Res> {
  __$$SetPhoneEventImplCopyWithImpl(
      _$SetPhoneEventImpl _value, $Res Function(_$SetPhoneEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DemoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$SetPhoneEventImpl(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetPhoneEventImpl implements _SetPhoneEvent {
  const _$SetPhoneEventImpl(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'DemoEvent.setPhone(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPhoneEventImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  /// Create a copy of DemoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPhoneEventImplCopyWith<_$SetPhoneEventImpl> get copyWith =>
      __$$SetPhoneEventImplCopyWithImpl<_$SetPhoneEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function(String phone) setPhone,
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validatePhone,
  }) {
    return setPhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function(String phone)? setPhone,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validatePhone,
  }) {
    return setPhone?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function(String phone)? setPhone,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validatePhone,
    required TResult orElse(),
  }) {
    if (setPhone != null) {
      return setPhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidatePhoneEvent value) validatePhone,
  }) {
    return setPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_SetPhoneEvent value)? setPhone,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidatePhoneEvent value)? validatePhone,
  }) {
    return setPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidatePhoneEvent value)? validatePhone,
    required TResult orElse(),
  }) {
    if (setPhone != null) {
      return setPhone(this);
    }
    return orElse();
  }
}

abstract class _SetPhoneEvent implements DemoEvent {
  const factory _SetPhoneEvent(final String phone) = _$SetPhoneEventImpl;

  String get phone;

  /// Create a copy of DemoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPhoneEventImplCopyWith<_$SetPhoneEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateEmailEventImplCopyWith<$Res> {
  factory _$$ValidateEmailEventImplCopyWith(_$ValidateEmailEventImpl value,
          $Res Function(_$ValidateEmailEventImpl) then) =
      __$$ValidateEmailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateEmailEventImplCopyWithImpl<$Res>
    extends _$DemoEventCopyWithImpl<$Res, _$ValidateEmailEventImpl>
    implements _$$ValidateEmailEventImplCopyWith<$Res> {
  __$$ValidateEmailEventImplCopyWithImpl(_$ValidateEmailEventImpl _value,
      $Res Function(_$ValidateEmailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DemoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidateEmailEventImpl implements _ValidateEmailEvent {
  const _$ValidateEmailEventImpl();

  @override
  String toString() {
    return 'DemoEvent.validateEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateEmailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function(String phone) setPhone,
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validatePhone,
  }) {
    return validateEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function(String phone)? setPhone,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validatePhone,
  }) {
    return validateEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function(String phone)? setPhone,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validatePhone,
    required TResult orElse(),
  }) {
    if (validateEmail != null) {
      return validateEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidatePhoneEvent value) validatePhone,
  }) {
    return validateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_SetPhoneEvent value)? setPhone,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidatePhoneEvent value)? validatePhone,
  }) {
    return validateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidatePhoneEvent value)? validatePhone,
    required TResult orElse(),
  }) {
    if (validateEmail != null) {
      return validateEmail(this);
    }
    return orElse();
  }
}

abstract class _ValidateEmailEvent implements DemoEvent {
  const factory _ValidateEmailEvent() = _$ValidateEmailEventImpl;
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
    extends _$DemoEventCopyWithImpl<$Res, _$ValidatePasswordEventImpl>
    implements _$$ValidatePasswordEventImplCopyWith<$Res> {
  __$$ValidatePasswordEventImplCopyWithImpl(_$ValidatePasswordEventImpl _value,
      $Res Function(_$ValidatePasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DemoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidatePasswordEventImpl implements _ValidatePasswordEvent {
  const _$ValidatePasswordEventImpl();

  @override
  String toString() {
    return 'DemoEvent.validatePassword()';
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
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function(String phone) setPhone,
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validatePhone,
  }) {
    return validatePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function(String phone)? setPhone,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validatePhone,
  }) {
    return validatePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function(String phone)? setPhone,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validatePhone,
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
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidatePhoneEvent value) validatePhone,
  }) {
    return validatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_SetPhoneEvent value)? setPhone,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidatePhoneEvent value)? validatePhone,
  }) {
    return validatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidatePhoneEvent value)? validatePhone,
    required TResult orElse(),
  }) {
    if (validatePassword != null) {
      return validatePassword(this);
    }
    return orElse();
  }
}

abstract class _ValidatePasswordEvent implements DemoEvent {
  const factory _ValidatePasswordEvent() = _$ValidatePasswordEventImpl;
}

/// @nodoc
abstract class _$$ValidatePhoneEventImplCopyWith<$Res> {
  factory _$$ValidatePhoneEventImplCopyWith(_$ValidatePhoneEventImpl value,
          $Res Function(_$ValidatePhoneEventImpl) then) =
      __$$ValidatePhoneEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidatePhoneEventImplCopyWithImpl<$Res>
    extends _$DemoEventCopyWithImpl<$Res, _$ValidatePhoneEventImpl>
    implements _$$ValidatePhoneEventImplCopyWith<$Res> {
  __$$ValidatePhoneEventImplCopyWithImpl(_$ValidatePhoneEventImpl _value,
      $Res Function(_$ValidatePhoneEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DemoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidatePhoneEventImpl implements _ValidatePhoneEvent {
  const _$ValidatePhoneEventImpl();

  @override
  String toString() {
    return 'DemoEvent.validatePhone()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidatePhoneEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function(String phone) setPhone,
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validatePhone,
  }) {
    return validatePhone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function(String phone)? setPhone,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validatePhone,
  }) {
    return validatePhone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function(String phone)? setPhone,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validatePhone,
    required TResult orElse(),
  }) {
    if (validatePhone != null) {
      return validatePhone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidatePhoneEvent value) validatePhone,
  }) {
    return validatePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_SetPhoneEvent value)? setPhone,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidatePhoneEvent value)? validatePhone,
  }) {
    return validatePhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidatePhoneEvent value)? validatePhone,
    required TResult orElse(),
  }) {
    if (validatePhone != null) {
      return validatePhone(this);
    }
    return orElse();
  }
}

abstract class _ValidatePhoneEvent implements DemoEvent {
  const factory _ValidatePhoneEvent() = _$ValidatePhoneEventImpl;
}

/// @nodoc
mixin _$DemoState {
  EmailInput get email => throw _privateConstructorUsedError;
  PasswordInput get password => throw _privateConstructorUsedError;
  PhoneInput get phone => throw _privateConstructorUsedError;
  String? get emailErrorMessage => throw _privateConstructorUsedError;
  String? get passwordErrorMessage => throw _privateConstructorUsedError;
  String? get phoneErrorMessage => throw _privateConstructorUsedError;

  /// Create a copy of DemoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DemoStateCopyWith<DemoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemoStateCopyWith<$Res> {
  factory $DemoStateCopyWith(DemoState value, $Res Function(DemoState) then) =
      _$DemoStateCopyWithImpl<$Res, DemoState>;
  @useResult
  $Res call(
      {EmailInput email,
      PasswordInput password,
      PhoneInput phone,
      String? emailErrorMessage,
      String? passwordErrorMessage,
      String? phoneErrorMessage});
}

/// @nodoc
class _$DemoStateCopyWithImpl<$Res, $Val extends DemoState>
    implements $DemoStateCopyWith<$Res> {
  _$DemoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DemoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? phone = null,
    Object? emailErrorMessage = freezed,
    Object? passwordErrorMessage = freezed,
    Object? phoneErrorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneInput,
      emailErrorMessage: freezed == emailErrorMessage
          ? _value.emailErrorMessage
          : emailErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordErrorMessage: freezed == passwordErrorMessage
          ? _value.passwordErrorMessage
          : passwordErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneErrorMessage: freezed == phoneErrorMessage
          ? _value.phoneErrorMessage
          : phoneErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DemoStateImplCopyWith<$Res>
    implements $DemoStateCopyWith<$Res> {
  factory _$$DemoStateImplCopyWith(
          _$DemoStateImpl value, $Res Function(_$DemoStateImpl) then) =
      __$$DemoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailInput email,
      PasswordInput password,
      PhoneInput phone,
      String? emailErrorMessage,
      String? passwordErrorMessage,
      String? phoneErrorMessage});
}

/// @nodoc
class __$$DemoStateImplCopyWithImpl<$Res>
    extends _$DemoStateCopyWithImpl<$Res, _$DemoStateImpl>
    implements _$$DemoStateImplCopyWith<$Res> {
  __$$DemoStateImplCopyWithImpl(
      _$DemoStateImpl _value, $Res Function(_$DemoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DemoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? phone = null,
    Object? emailErrorMessage = freezed,
    Object? passwordErrorMessage = freezed,
    Object? phoneErrorMessage = freezed,
  }) {
    return _then(_$DemoStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneInput,
      emailErrorMessage: freezed == emailErrorMessage
          ? _value.emailErrorMessage
          : emailErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordErrorMessage: freezed == passwordErrorMessage
          ? _value.passwordErrorMessage
          : passwordErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneErrorMessage: freezed == phoneErrorMessage
          ? _value.phoneErrorMessage
          : phoneErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DemoStateImpl implements _DemoState {
  const _$DemoStateImpl(
      {this.email = const EmailInput.pure(),
      this.password = const PasswordInput.pure(),
      this.phone = const PhoneInput.pure(),
      this.emailErrorMessage = null,
      this.passwordErrorMessage = null,
      this.phoneErrorMessage = null});

  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final PasswordInput password;
  @override
  @JsonKey()
  final PhoneInput phone;
  @override
  @JsonKey()
  final String? emailErrorMessage;
  @override
  @JsonKey()
  final String? passwordErrorMessage;
  @override
  @JsonKey()
  final String? phoneErrorMessage;

  @override
  String toString() {
    return 'DemoState(email: $email, password: $password, phone: $phone, emailErrorMessage: $emailErrorMessage, passwordErrorMessage: $passwordErrorMessage, phoneErrorMessage: $phoneErrorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemoStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.emailErrorMessage, emailErrorMessage) ||
                other.emailErrorMessage == emailErrorMessage) &&
            (identical(other.passwordErrorMessage, passwordErrorMessage) ||
                other.passwordErrorMessage == passwordErrorMessage) &&
            (identical(other.phoneErrorMessage, phoneErrorMessage) ||
                other.phoneErrorMessage == phoneErrorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, phone,
      emailErrorMessage, passwordErrorMessage, phoneErrorMessage);

  /// Create a copy of DemoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DemoStateImplCopyWith<_$DemoStateImpl> get copyWith =>
      __$$DemoStateImplCopyWithImpl<_$DemoStateImpl>(this, _$identity);
}

abstract class _DemoState implements DemoState {
  const factory _DemoState(
      {final EmailInput email,
      final PasswordInput password,
      final PhoneInput phone,
      final String? emailErrorMessage,
      final String? passwordErrorMessage,
      final String? phoneErrorMessage}) = _$DemoStateImpl;

  @override
  EmailInput get email;
  @override
  PasswordInput get password;
  @override
  PhoneInput get phone;
  @override
  String? get emailErrorMessage;
  @override
  String? get passwordErrorMessage;
  @override
  String? get phoneErrorMessage;

  /// Create a copy of DemoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DemoStateImplCopyWith<_$DemoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
