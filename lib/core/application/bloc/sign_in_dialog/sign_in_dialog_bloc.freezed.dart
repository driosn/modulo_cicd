// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_dialog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInDialogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validateForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidateFormEvent value) validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidateFormEvent value)? validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidateFormEvent value)? validateForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInDialogEventCopyWith<$Res> {
  factory $SignInDialogEventCopyWith(
          SignInDialogEvent value, $Res Function(SignInDialogEvent) then) =
      _$SignInDialogEventCopyWithImpl<$Res, SignInDialogEvent>;
}

/// @nodoc
class _$SignInDialogEventCopyWithImpl<$Res, $Val extends SignInDialogEvent>
    implements $SignInDialogEventCopyWith<$Res> {
  _$SignInDialogEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInDialogEvent
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
    extends _$SignInDialogEventCopyWithImpl<$Res, _$SetEmailEventImpl>
    implements _$$SetEmailEventImplCopyWith<$Res> {
  __$$SetEmailEventImplCopyWithImpl(
      _$SetEmailEventImpl _value, $Res Function(_$SetEmailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInDialogEvent
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
    return 'SignInDialogEvent.setEmail(email: $email)';
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

  /// Create a copy of SignInDialogEvent
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
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validateForm,
  }) {
    return setEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validateForm,
  }) {
    return setEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validateForm,
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
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidateFormEvent value) validateForm,
  }) {
    return setEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidateFormEvent value)? validateForm,
  }) {
    return setEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidateFormEvent value)? validateForm,
    required TResult orElse(),
  }) {
    if (setEmail != null) {
      return setEmail(this);
    }
    return orElse();
  }
}

abstract class _SetEmailEvent implements SignInDialogEvent {
  const factory _SetEmailEvent(final String email) = _$SetEmailEventImpl;

  String get email;

  /// Create a copy of SignInDialogEvent
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
    extends _$SignInDialogEventCopyWithImpl<$Res, _$SetPasswordEventImpl>
    implements _$$SetPasswordEventImplCopyWith<$Res> {
  __$$SetPasswordEventImplCopyWithImpl(_$SetPasswordEventImpl _value,
      $Res Function(_$SetPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInDialogEvent
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
    return 'SignInDialogEvent.setPassword(password: $password)';
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

  /// Create a copy of SignInDialogEvent
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
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validateForm,
  }) {
    return setPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validateForm,
  }) {
    return setPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validateForm,
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
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidateFormEvent value) validateForm,
  }) {
    return setPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidateFormEvent value)? validateForm,
  }) {
    return setPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidateFormEvent value)? validateForm,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(this);
    }
    return orElse();
  }
}

abstract class _SetPasswordEvent implements SignInDialogEvent {
  const factory _SetPasswordEvent(final String password) =
      _$SetPasswordEventImpl;

  String get password;

  /// Create a copy of SignInDialogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPasswordEventImplCopyWith<_$SetPasswordEventImpl> get copyWith =>
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
    extends _$SignInDialogEventCopyWithImpl<$Res, _$ValidateEmailEventImpl>
    implements _$$ValidateEmailEventImplCopyWith<$Res> {
  __$$ValidateEmailEventImplCopyWithImpl(_$ValidateEmailEventImpl _value,
      $Res Function(_$ValidateEmailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInDialogEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidateEmailEventImpl implements _ValidateEmailEvent {
  const _$ValidateEmailEventImpl();

  @override
  String toString() {
    return 'SignInDialogEvent.validateEmail()';
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
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validateForm,
  }) {
    return validateEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validateForm,
  }) {
    return validateEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validateForm,
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
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidateFormEvent value) validateForm,
  }) {
    return validateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidateFormEvent value)? validateForm,
  }) {
    return validateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidateFormEvent value)? validateForm,
    required TResult orElse(),
  }) {
    if (validateEmail != null) {
      return validateEmail(this);
    }
    return orElse();
  }
}

abstract class _ValidateEmailEvent implements SignInDialogEvent {
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
    extends _$SignInDialogEventCopyWithImpl<$Res, _$ValidatePasswordEventImpl>
    implements _$$ValidatePasswordEventImplCopyWith<$Res> {
  __$$ValidatePasswordEventImplCopyWithImpl(_$ValidatePasswordEventImpl _value,
      $Res Function(_$ValidatePasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInDialogEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidatePasswordEventImpl implements _ValidatePasswordEvent {
  const _$ValidatePasswordEventImpl();

  @override
  String toString() {
    return 'SignInDialogEvent.validatePassword()';
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
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validateForm,
  }) {
    return validatePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validateForm,
  }) {
    return validatePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validateForm,
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
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidateFormEvent value) validateForm,
  }) {
    return validatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidateFormEvent value)? validateForm,
  }) {
    return validatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidateFormEvent value)? validateForm,
    required TResult orElse(),
  }) {
    if (validatePassword != null) {
      return validatePassword(this);
    }
    return orElse();
  }
}

abstract class _ValidatePasswordEvent implements SignInDialogEvent {
  const factory _ValidatePasswordEvent() = _$ValidatePasswordEventImpl;
}

/// @nodoc
abstract class _$$ValidateFormEventImplCopyWith<$Res> {
  factory _$$ValidateFormEventImplCopyWith(_$ValidateFormEventImpl value,
          $Res Function(_$ValidateFormEventImpl) then) =
      __$$ValidateFormEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateFormEventImplCopyWithImpl<$Res>
    extends _$SignInDialogEventCopyWithImpl<$Res, _$ValidateFormEventImpl>
    implements _$$ValidateFormEventImplCopyWith<$Res> {
  __$$ValidateFormEventImplCopyWithImpl(_$ValidateFormEventImpl _value,
      $Res Function(_$ValidateFormEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInDialogEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidateFormEventImpl implements _ValidateFormEvent {
  const _$ValidateFormEventImpl();

  @override
  String toString() {
    return 'SignInDialogEvent.validateForm()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateFormEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function(String password) setPassword,
    required TResult Function() validateEmail,
    required TResult Function() validatePassword,
    required TResult Function() validateForm,
  }) {
    return validateForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function(String password)? setPassword,
    TResult? Function()? validateEmail,
    TResult? Function()? validatePassword,
    TResult? Function()? validateForm,
  }) {
    return validateForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function(String password)? setPassword,
    TResult Function()? validateEmail,
    TResult Function()? validatePassword,
    TResult Function()? validateForm,
    required TResult orElse(),
  }) {
    if (validateForm != null) {
      return validateForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_SetPasswordEvent value) setPassword,
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidatePasswordEvent value) validatePassword,
    required TResult Function(_ValidateFormEvent value) validateForm,
  }) {
    return validateForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_SetPasswordEvent value)? setPassword,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidatePasswordEvent value)? validatePassword,
    TResult? Function(_ValidateFormEvent value)? validateForm,
  }) {
    return validateForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_SetPasswordEvent value)? setPassword,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidatePasswordEvent value)? validatePassword,
    TResult Function(_ValidateFormEvent value)? validateForm,
    required TResult orElse(),
  }) {
    if (validateForm != null) {
      return validateForm(this);
    }
    return orElse();
  }
}

abstract class _ValidateFormEvent implements SignInDialogEvent {
  const factory _ValidateFormEvent() = _$ValidateFormEventImpl;
}

/// @nodoc
mixin _$SignInDialogState {
  EmailInput get email => throw _privateConstructorUsedError;
  String? get emailErrorMessage => throw _privateConstructorUsedError;
  PasswordInput get password => throw _privateConstructorUsedError;
  String? get passwordErrorMessage => throw _privateConstructorUsedError;
  bool get isAllFormValid => throw _privateConstructorUsedError;

  /// Create a copy of SignInDialogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInDialogStateCopyWith<SignInDialogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInDialogStateCopyWith<$Res> {
  factory $SignInDialogStateCopyWith(
          SignInDialogState value, $Res Function(SignInDialogState) then) =
      _$SignInDialogStateCopyWithImpl<$Res, SignInDialogState>;
  @useResult
  $Res call(
      {EmailInput email,
      String? emailErrorMessage,
      PasswordInput password,
      String? passwordErrorMessage,
      bool isAllFormValid});
}

/// @nodoc
class _$SignInDialogStateCopyWithImpl<$Res, $Val extends SignInDialogState>
    implements $SignInDialogStateCopyWith<$Res> {
  _$SignInDialogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInDialogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailErrorMessage = freezed,
    Object? password = null,
    Object? passwordErrorMessage = freezed,
    Object? isAllFormValid = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      emailErrorMessage: freezed == emailErrorMessage
          ? _value.emailErrorMessage
          : emailErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      passwordErrorMessage: freezed == passwordErrorMessage
          ? _value.passwordErrorMessage
          : passwordErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isAllFormValid: null == isAllFormValid
          ? _value.isAllFormValid
          : isAllFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInDialogStateImplCopyWith<$Res>
    implements $SignInDialogStateCopyWith<$Res> {
  factory _$$SignInDialogStateImplCopyWith(_$SignInDialogStateImpl value,
          $Res Function(_$SignInDialogStateImpl) then) =
      __$$SignInDialogStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailInput email,
      String? emailErrorMessage,
      PasswordInput password,
      String? passwordErrorMessage,
      bool isAllFormValid});
}

/// @nodoc
class __$$SignInDialogStateImplCopyWithImpl<$Res>
    extends _$SignInDialogStateCopyWithImpl<$Res, _$SignInDialogStateImpl>
    implements _$$SignInDialogStateImplCopyWith<$Res> {
  __$$SignInDialogStateImplCopyWithImpl(_$SignInDialogStateImpl _value,
      $Res Function(_$SignInDialogStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInDialogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailErrorMessage = freezed,
    Object? password = null,
    Object? passwordErrorMessage = freezed,
    Object? isAllFormValid = null,
  }) {
    return _then(_$SignInDialogStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      emailErrorMessage: freezed == emailErrorMessage
          ? _value.emailErrorMessage
          : emailErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      passwordErrorMessage: freezed == passwordErrorMessage
          ? _value.passwordErrorMessage
          : passwordErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isAllFormValid: null == isAllFormValid
          ? _value.isAllFormValid
          : isAllFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignInDialogStateImpl implements _SignInDialogState {
  const _$SignInDialogStateImpl(
      {this.email = const EmailInput.pure(),
      this.emailErrorMessage = null,
      this.password = const PasswordInput.pure(),
      this.passwordErrorMessage = null,
      this.isAllFormValid = false});

  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final String? emailErrorMessage;
  @override
  @JsonKey()
  final PasswordInput password;
  @override
  @JsonKey()
  final String? passwordErrorMessage;
  @override
  @JsonKey()
  final bool isAllFormValid;

  @override
  String toString() {
    return 'SignInDialogState(email: $email, emailErrorMessage: $emailErrorMessage, password: $password, passwordErrorMessage: $passwordErrorMessage, isAllFormValid: $isAllFormValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInDialogStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailErrorMessage, emailErrorMessage) ||
                other.emailErrorMessage == emailErrorMessage) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordErrorMessage, passwordErrorMessage) ||
                other.passwordErrorMessage == passwordErrorMessage) &&
            (identical(other.isAllFormValid, isAllFormValid) ||
                other.isAllFormValid == isAllFormValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, emailErrorMessage,
      password, passwordErrorMessage, isAllFormValid);

  /// Create a copy of SignInDialogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInDialogStateImplCopyWith<_$SignInDialogStateImpl> get copyWith =>
      __$$SignInDialogStateImplCopyWithImpl<_$SignInDialogStateImpl>(
          this, _$identity);
}

abstract class _SignInDialogState implements SignInDialogState {
  const factory _SignInDialogState(
      {final EmailInput email,
      final String? emailErrorMessage,
      final PasswordInput password,
      final String? passwordErrorMessage,
      final bool isAllFormValid}) = _$SignInDialogStateImpl;

  @override
  EmailInput get email;
  @override
  String? get emailErrorMessage;
  @override
  PasswordInput get password;
  @override
  String? get passwordErrorMessage;
  @override
  bool get isAllFormValid;

  /// Create a copy of SignInDialogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInDialogStateImplCopyWith<_$SignInDialogStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
