// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StartRegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) setEmail,
    required TResult Function() validateEmail,
    required TResult Function() validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function()? validateEmail,
    TResult? Function()? validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function()? validateEmail,
    TResult Function()? validateForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetEmailEvent value) setEmail,
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidateFormEvent value) validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidateFormEvent value)? validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidateFormEvent value)? validateForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartRegistrationEventCopyWith<$Res> {
  factory $StartRegistrationEventCopyWith(StartRegistrationEvent value,
          $Res Function(StartRegistrationEvent) then) =
      _$StartRegistrationEventCopyWithImpl<$Res, StartRegistrationEvent>;
}

/// @nodoc
class _$StartRegistrationEventCopyWithImpl<$Res,
        $Val extends StartRegistrationEvent>
    implements $StartRegistrationEventCopyWith<$Res> {
  _$StartRegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartRegistrationEvent
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
    extends _$StartRegistrationEventCopyWithImpl<$Res, _$SetEmailEventImpl>
    implements _$$SetEmailEventImplCopyWith<$Res> {
  __$$SetEmailEventImplCopyWithImpl(
      _$SetEmailEventImpl _value, $Res Function(_$SetEmailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartRegistrationEvent
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
    return 'StartRegistrationEvent.setEmail(email: $email)';
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

  /// Create a copy of StartRegistrationEvent
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
    required TResult Function() validateEmail,
    required TResult Function() validateForm,
  }) {
    return setEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function()? validateEmail,
    TResult? Function()? validateForm,
  }) {
    return setEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function()? validateEmail,
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
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidateFormEvent value) validateForm,
  }) {
    return setEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidateFormEvent value)? validateForm,
  }) {
    return setEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidateFormEvent value)? validateForm,
    required TResult orElse(),
  }) {
    if (setEmail != null) {
      return setEmail(this);
    }
    return orElse();
  }
}

abstract class _SetEmailEvent implements StartRegistrationEvent {
  const factory _SetEmailEvent(final String email) = _$SetEmailEventImpl;

  String get email;

  /// Create a copy of StartRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetEmailEventImplCopyWith<_$SetEmailEventImpl> get copyWith =>
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
    extends _$StartRegistrationEventCopyWithImpl<$Res, _$ValidateEmailEventImpl>
    implements _$$ValidateEmailEventImplCopyWith<$Res> {
  __$$ValidateEmailEventImplCopyWithImpl(_$ValidateEmailEventImpl _value,
      $Res Function(_$ValidateEmailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidateEmailEventImpl implements _ValidateEmailEvent {
  const _$ValidateEmailEventImpl();

  @override
  String toString() {
    return 'StartRegistrationEvent.validateEmail()';
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
    required TResult Function() validateEmail,
    required TResult Function() validateForm,
  }) {
    return validateEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function()? validateEmail,
    TResult? Function()? validateForm,
  }) {
    return validateEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function()? validateEmail,
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
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidateFormEvent value) validateForm,
  }) {
    return validateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidateFormEvent value)? validateForm,
  }) {
    return validateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidateFormEvent value)? validateForm,
    required TResult orElse(),
  }) {
    if (validateEmail != null) {
      return validateEmail(this);
    }
    return orElse();
  }
}

abstract class _ValidateEmailEvent implements StartRegistrationEvent {
  const factory _ValidateEmailEvent() = _$ValidateEmailEventImpl;
}

/// @nodoc
abstract class _$$ValidateFormEventImplCopyWith<$Res> {
  factory _$$ValidateFormEventImplCopyWith(_$ValidateFormEventImpl value,
          $Res Function(_$ValidateFormEventImpl) then) =
      __$$ValidateFormEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateFormEventImplCopyWithImpl<$Res>
    extends _$StartRegistrationEventCopyWithImpl<$Res, _$ValidateFormEventImpl>
    implements _$$ValidateFormEventImplCopyWith<$Res> {
  __$$ValidateFormEventImplCopyWithImpl(_$ValidateFormEventImpl _value,
      $Res Function(_$ValidateFormEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartRegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidateFormEventImpl implements _ValidateFormEvent {
  const _$ValidateFormEventImpl();

  @override
  String toString() {
    return 'StartRegistrationEvent.validateForm()';
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
    required TResult Function() validateEmail,
    required TResult Function() validateForm,
  }) {
    return validateForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? setEmail,
    TResult? Function()? validateEmail,
    TResult? Function()? validateForm,
  }) {
    return validateForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? setEmail,
    TResult Function()? validateEmail,
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
    required TResult Function(_ValidateEmailEvent value) validateEmail,
    required TResult Function(_ValidateFormEvent value) validateForm,
  }) {
    return validateForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetEmailEvent value)? setEmail,
    TResult? Function(_ValidateEmailEvent value)? validateEmail,
    TResult? Function(_ValidateFormEvent value)? validateForm,
  }) {
    return validateForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetEmailEvent value)? setEmail,
    TResult Function(_ValidateEmailEvent value)? validateEmail,
    TResult Function(_ValidateFormEvent value)? validateForm,
    required TResult orElse(),
  }) {
    if (validateForm != null) {
      return validateForm(this);
    }
    return orElse();
  }
}

abstract class _ValidateFormEvent implements StartRegistrationEvent {
  const factory _ValidateFormEvent() = _$ValidateFormEventImpl;
}

/// @nodoc
mixin _$StartRegistrationState {
  EmailInput get email => throw _privateConstructorUsedError;
  String? get emailErrorMessage => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;

  /// Create a copy of StartRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartRegistrationStateCopyWith<StartRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartRegistrationStateCopyWith<$Res> {
  factory $StartRegistrationStateCopyWith(StartRegistrationState value,
          $Res Function(StartRegistrationState) then) =
      _$StartRegistrationStateCopyWithImpl<$Res, StartRegistrationState>;
  @useResult
  $Res call({EmailInput email, String? emailErrorMessage, bool isFormValid});
}

/// @nodoc
class _$StartRegistrationStateCopyWithImpl<$Res,
        $Val extends StartRegistrationState>
    implements $StartRegistrationStateCopyWith<$Res> {
  _$StartRegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailErrorMessage = freezed,
    Object? isFormValid = null,
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
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartRegistrationStateImplCopyWith<$Res>
    implements $StartRegistrationStateCopyWith<$Res> {
  factory _$$StartRegistrationStateImplCopyWith(
          _$StartRegistrationStateImpl value,
          $Res Function(_$StartRegistrationStateImpl) then) =
      __$$StartRegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmailInput email, String? emailErrorMessage, bool isFormValid});
}

/// @nodoc
class __$$StartRegistrationStateImplCopyWithImpl<$Res>
    extends _$StartRegistrationStateCopyWithImpl<$Res,
        _$StartRegistrationStateImpl>
    implements _$$StartRegistrationStateImplCopyWith<$Res> {
  __$$StartRegistrationStateImplCopyWithImpl(
      _$StartRegistrationStateImpl _value,
      $Res Function(_$StartRegistrationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailErrorMessage = freezed,
    Object? isFormValid = null,
  }) {
    return _then(_$StartRegistrationStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      emailErrorMessage: freezed == emailErrorMessage
          ? _value.emailErrorMessage
          : emailErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartRegistrationStateImpl implements _StartRegistrationState {
  const _$StartRegistrationStateImpl(
      {this.email = const EmailInput.pure(),
      this.emailErrorMessage = null,
      this.isFormValid = false});

  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final String? emailErrorMessage;
  @override
  @JsonKey()
  final bool isFormValid;

  @override
  String toString() {
    return 'StartRegistrationState(email: $email, emailErrorMessage: $emailErrorMessage, isFormValid: $isFormValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartRegistrationStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailErrorMessage, emailErrorMessage) ||
                other.emailErrorMessage == emailErrorMessage) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, emailErrorMessage, isFormValid);

  /// Create a copy of StartRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartRegistrationStateImplCopyWith<_$StartRegistrationStateImpl>
      get copyWith => __$$StartRegistrationStateImplCopyWithImpl<
          _$StartRegistrationStateImpl>(this, _$identity);
}

abstract class _StartRegistrationState implements StartRegistrationState {
  const factory _StartRegistrationState(
      {final EmailInput email,
      final String? emailErrorMessage,
      final bool isFormValid}) = _$StartRegistrationStateImpl;

  @override
  EmailInput get email;
  @override
  String? get emailErrorMessage;
  @override
  bool get isFormValid;

  /// Create a copy of StartRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartRegistrationStateImplCopyWith<_$StartRegistrationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
