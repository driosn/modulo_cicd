// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setup_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetupPaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount) setAmount,
    required TResult Function(PaymentAmountType paymentAmountType)
        setPaymentAmountType,
    required TResult Function(MPPaymentMethodType paymentMethodType)
        setPaymentMethodType,
    required TResult Function(bool processAdditionalPayment)
        validateSetupPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amount)? setAmount,
    TResult? Function(PaymentAmountType paymentAmountType)?
        setPaymentAmountType,
    TResult? Function(MPPaymentMethodType paymentMethodType)?
        setPaymentMethodType,
    TResult? Function(bool processAdditionalPayment)? validateSetupPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount)? setAmount,
    TResult Function(PaymentAmountType paymentAmountType)? setPaymentAmountType,
    TResult Function(MPPaymentMethodType paymentMethodType)?
        setPaymentMethodType,
    TResult Function(bool processAdditionalPayment)? validateSetupPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetAmount value) setAmount,
    required TResult Function(_SetPaymentAmountType value) setPaymentAmountType,
    required TResult Function(_SetPaymentMethodType value) setPaymentMethodType,
    required TResult Function(_ValidateSetupPayment value) validateSetupPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetAmount value)? setAmount,
    TResult? Function(_SetPaymentAmountType value)? setPaymentAmountType,
    TResult? Function(_SetPaymentMethodType value)? setPaymentMethodType,
    TResult? Function(_ValidateSetupPayment value)? validateSetupPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetAmount value)? setAmount,
    TResult Function(_SetPaymentAmountType value)? setPaymentAmountType,
    TResult Function(_SetPaymentMethodType value)? setPaymentMethodType,
    TResult Function(_ValidateSetupPayment value)? validateSetupPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupPaymentEventCopyWith<$Res> {
  factory $SetupPaymentEventCopyWith(
          SetupPaymentEvent value, $Res Function(SetupPaymentEvent) then) =
      _$SetupPaymentEventCopyWithImpl<$Res, SetupPaymentEvent>;
}

/// @nodoc
class _$SetupPaymentEventCopyWithImpl<$Res, $Val extends SetupPaymentEvent>
    implements $SetupPaymentEventCopyWith<$Res> {
  _$SetupPaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetAmountImplCopyWith<$Res> {
  factory _$$SetAmountImplCopyWith(
          _$SetAmountImpl value, $Res Function(_$SetAmountImpl) then) =
      __$$SetAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$SetAmountImplCopyWithImpl<$Res>
    extends _$SetupPaymentEventCopyWithImpl<$Res, _$SetAmountImpl>
    implements _$$SetAmountImplCopyWith<$Res> {
  __$$SetAmountImplCopyWithImpl(
      _$SetAmountImpl _value, $Res Function(_$SetAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$SetAmountImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetAmountImpl implements _SetAmount {
  const _$SetAmountImpl(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'SetupPaymentEvent.setAmount(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAmountImplCopyWith<_$SetAmountImpl> get copyWith =>
      __$$SetAmountImplCopyWithImpl<_$SetAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount) setAmount,
    required TResult Function(PaymentAmountType paymentAmountType)
        setPaymentAmountType,
    required TResult Function(MPPaymentMethodType paymentMethodType)
        setPaymentMethodType,
    required TResult Function(bool processAdditionalPayment)
        validateSetupPayment,
  }) {
    return setAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amount)? setAmount,
    TResult? Function(PaymentAmountType paymentAmountType)?
        setPaymentAmountType,
    TResult? Function(MPPaymentMethodType paymentMethodType)?
        setPaymentMethodType,
    TResult? Function(bool processAdditionalPayment)? validateSetupPayment,
  }) {
    return setAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount)? setAmount,
    TResult Function(PaymentAmountType paymentAmountType)? setPaymentAmountType,
    TResult Function(MPPaymentMethodType paymentMethodType)?
        setPaymentMethodType,
    TResult Function(bool processAdditionalPayment)? validateSetupPayment,
    required TResult orElse(),
  }) {
    if (setAmount != null) {
      return setAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetAmount value) setAmount,
    required TResult Function(_SetPaymentAmountType value) setPaymentAmountType,
    required TResult Function(_SetPaymentMethodType value) setPaymentMethodType,
    required TResult Function(_ValidateSetupPayment value) validateSetupPayment,
  }) {
    return setAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetAmount value)? setAmount,
    TResult? Function(_SetPaymentAmountType value)? setPaymentAmountType,
    TResult? Function(_SetPaymentMethodType value)? setPaymentMethodType,
    TResult? Function(_ValidateSetupPayment value)? validateSetupPayment,
  }) {
    return setAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetAmount value)? setAmount,
    TResult Function(_SetPaymentAmountType value)? setPaymentAmountType,
    TResult Function(_SetPaymentMethodType value)? setPaymentMethodType,
    TResult Function(_ValidateSetupPayment value)? validateSetupPayment,
    required TResult orElse(),
  }) {
    if (setAmount != null) {
      return setAmount(this);
    }
    return orElse();
  }
}

abstract class _SetAmount implements SetupPaymentEvent {
  const factory _SetAmount(final String amount) = _$SetAmountImpl;

  String get amount;

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetAmountImplCopyWith<_$SetAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPaymentAmountTypeImplCopyWith<$Res> {
  factory _$$SetPaymentAmountTypeImplCopyWith(_$SetPaymentAmountTypeImpl value,
          $Res Function(_$SetPaymentAmountTypeImpl) then) =
      __$$SetPaymentAmountTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentAmountType paymentAmountType});
}

/// @nodoc
class __$$SetPaymentAmountTypeImplCopyWithImpl<$Res>
    extends _$SetupPaymentEventCopyWithImpl<$Res, _$SetPaymentAmountTypeImpl>
    implements _$$SetPaymentAmountTypeImplCopyWith<$Res> {
  __$$SetPaymentAmountTypeImplCopyWithImpl(_$SetPaymentAmountTypeImpl _value,
      $Res Function(_$SetPaymentAmountTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmountType = null,
  }) {
    return _then(_$SetPaymentAmountTypeImpl(
      null == paymentAmountType
          ? _value.paymentAmountType
          : paymentAmountType // ignore: cast_nullable_to_non_nullable
              as PaymentAmountType,
    ));
  }
}

/// @nodoc

class _$SetPaymentAmountTypeImpl implements _SetPaymentAmountType {
  const _$SetPaymentAmountTypeImpl(this.paymentAmountType);

  @override
  final PaymentAmountType paymentAmountType;

  @override
  String toString() {
    return 'SetupPaymentEvent.setPaymentAmountType(paymentAmountType: $paymentAmountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPaymentAmountTypeImpl &&
            (identical(other.paymentAmountType, paymentAmountType) ||
                other.paymentAmountType == paymentAmountType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentAmountType);

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPaymentAmountTypeImplCopyWith<_$SetPaymentAmountTypeImpl>
      get copyWith =>
          __$$SetPaymentAmountTypeImplCopyWithImpl<_$SetPaymentAmountTypeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount) setAmount,
    required TResult Function(PaymentAmountType paymentAmountType)
        setPaymentAmountType,
    required TResult Function(MPPaymentMethodType paymentMethodType)
        setPaymentMethodType,
    required TResult Function(bool processAdditionalPayment)
        validateSetupPayment,
  }) {
    return setPaymentAmountType(paymentAmountType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amount)? setAmount,
    TResult? Function(PaymentAmountType paymentAmountType)?
        setPaymentAmountType,
    TResult? Function(MPPaymentMethodType paymentMethodType)?
        setPaymentMethodType,
    TResult? Function(bool processAdditionalPayment)? validateSetupPayment,
  }) {
    return setPaymentAmountType?.call(paymentAmountType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount)? setAmount,
    TResult Function(PaymentAmountType paymentAmountType)? setPaymentAmountType,
    TResult Function(MPPaymentMethodType paymentMethodType)?
        setPaymentMethodType,
    TResult Function(bool processAdditionalPayment)? validateSetupPayment,
    required TResult orElse(),
  }) {
    if (setPaymentAmountType != null) {
      return setPaymentAmountType(paymentAmountType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetAmount value) setAmount,
    required TResult Function(_SetPaymentAmountType value) setPaymentAmountType,
    required TResult Function(_SetPaymentMethodType value) setPaymentMethodType,
    required TResult Function(_ValidateSetupPayment value) validateSetupPayment,
  }) {
    return setPaymentAmountType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetAmount value)? setAmount,
    TResult? Function(_SetPaymentAmountType value)? setPaymentAmountType,
    TResult? Function(_SetPaymentMethodType value)? setPaymentMethodType,
    TResult? Function(_ValidateSetupPayment value)? validateSetupPayment,
  }) {
    return setPaymentAmountType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetAmount value)? setAmount,
    TResult Function(_SetPaymentAmountType value)? setPaymentAmountType,
    TResult Function(_SetPaymentMethodType value)? setPaymentMethodType,
    TResult Function(_ValidateSetupPayment value)? validateSetupPayment,
    required TResult orElse(),
  }) {
    if (setPaymentAmountType != null) {
      return setPaymentAmountType(this);
    }
    return orElse();
  }
}

abstract class _SetPaymentAmountType implements SetupPaymentEvent {
  const factory _SetPaymentAmountType(
      final PaymentAmountType paymentAmountType) = _$SetPaymentAmountTypeImpl;

  PaymentAmountType get paymentAmountType;

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPaymentAmountTypeImplCopyWith<_$SetPaymentAmountTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPaymentMethodTypeImplCopyWith<$Res> {
  factory _$$SetPaymentMethodTypeImplCopyWith(_$SetPaymentMethodTypeImpl value,
          $Res Function(_$SetPaymentMethodTypeImpl) then) =
      __$$SetPaymentMethodTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MPPaymentMethodType paymentMethodType});
}

/// @nodoc
class __$$SetPaymentMethodTypeImplCopyWithImpl<$Res>
    extends _$SetupPaymentEventCopyWithImpl<$Res, _$SetPaymentMethodTypeImpl>
    implements _$$SetPaymentMethodTypeImplCopyWith<$Res> {
  __$$SetPaymentMethodTypeImplCopyWithImpl(_$SetPaymentMethodTypeImpl _value,
      $Res Function(_$SetPaymentMethodTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodType = null,
  }) {
    return _then(_$SetPaymentMethodTypeImpl(
      null == paymentMethodType
          ? _value.paymentMethodType
          : paymentMethodType // ignore: cast_nullable_to_non_nullable
              as MPPaymentMethodType,
    ));
  }
}

/// @nodoc

class _$SetPaymentMethodTypeImpl implements _SetPaymentMethodType {
  const _$SetPaymentMethodTypeImpl(this.paymentMethodType);

  @override
  final MPPaymentMethodType paymentMethodType;

  @override
  String toString() {
    return 'SetupPaymentEvent.setPaymentMethodType(paymentMethodType: $paymentMethodType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPaymentMethodTypeImpl &&
            (identical(other.paymentMethodType, paymentMethodType) ||
                other.paymentMethodType == paymentMethodType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethodType);

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPaymentMethodTypeImplCopyWith<_$SetPaymentMethodTypeImpl>
      get copyWith =>
          __$$SetPaymentMethodTypeImplCopyWithImpl<_$SetPaymentMethodTypeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount) setAmount,
    required TResult Function(PaymentAmountType paymentAmountType)
        setPaymentAmountType,
    required TResult Function(MPPaymentMethodType paymentMethodType)
        setPaymentMethodType,
    required TResult Function(bool processAdditionalPayment)
        validateSetupPayment,
  }) {
    return setPaymentMethodType(paymentMethodType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amount)? setAmount,
    TResult? Function(PaymentAmountType paymentAmountType)?
        setPaymentAmountType,
    TResult? Function(MPPaymentMethodType paymentMethodType)?
        setPaymentMethodType,
    TResult? Function(bool processAdditionalPayment)? validateSetupPayment,
  }) {
    return setPaymentMethodType?.call(paymentMethodType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount)? setAmount,
    TResult Function(PaymentAmountType paymentAmountType)? setPaymentAmountType,
    TResult Function(MPPaymentMethodType paymentMethodType)?
        setPaymentMethodType,
    TResult Function(bool processAdditionalPayment)? validateSetupPayment,
    required TResult orElse(),
  }) {
    if (setPaymentMethodType != null) {
      return setPaymentMethodType(paymentMethodType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetAmount value) setAmount,
    required TResult Function(_SetPaymentAmountType value) setPaymentAmountType,
    required TResult Function(_SetPaymentMethodType value) setPaymentMethodType,
    required TResult Function(_ValidateSetupPayment value) validateSetupPayment,
  }) {
    return setPaymentMethodType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetAmount value)? setAmount,
    TResult? Function(_SetPaymentAmountType value)? setPaymentAmountType,
    TResult? Function(_SetPaymentMethodType value)? setPaymentMethodType,
    TResult? Function(_ValidateSetupPayment value)? validateSetupPayment,
  }) {
    return setPaymentMethodType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetAmount value)? setAmount,
    TResult Function(_SetPaymentAmountType value)? setPaymentAmountType,
    TResult Function(_SetPaymentMethodType value)? setPaymentMethodType,
    TResult Function(_ValidateSetupPayment value)? validateSetupPayment,
    required TResult orElse(),
  }) {
    if (setPaymentMethodType != null) {
      return setPaymentMethodType(this);
    }
    return orElse();
  }
}

abstract class _SetPaymentMethodType implements SetupPaymentEvent {
  const factory _SetPaymentMethodType(
      final MPPaymentMethodType paymentMethodType) = _$SetPaymentMethodTypeImpl;

  MPPaymentMethodType get paymentMethodType;

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPaymentMethodTypeImplCopyWith<_$SetPaymentMethodTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateSetupPaymentImplCopyWith<$Res> {
  factory _$$ValidateSetupPaymentImplCopyWith(_$ValidateSetupPaymentImpl value,
          $Res Function(_$ValidateSetupPaymentImpl) then) =
      __$$ValidateSetupPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool processAdditionalPayment});
}

/// @nodoc
class __$$ValidateSetupPaymentImplCopyWithImpl<$Res>
    extends _$SetupPaymentEventCopyWithImpl<$Res, _$ValidateSetupPaymentImpl>
    implements _$$ValidateSetupPaymentImplCopyWith<$Res> {
  __$$ValidateSetupPaymentImplCopyWithImpl(_$ValidateSetupPaymentImpl _value,
      $Res Function(_$ValidateSetupPaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processAdditionalPayment = null,
  }) {
    return _then(_$ValidateSetupPaymentImpl(
      processAdditionalPayment: null == processAdditionalPayment
          ? _value.processAdditionalPayment
          : processAdditionalPayment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ValidateSetupPaymentImpl implements _ValidateSetupPayment {
  const _$ValidateSetupPaymentImpl({required this.processAdditionalPayment});

  @override
  final bool processAdditionalPayment;

  @override
  String toString() {
    return 'SetupPaymentEvent.validateSetupPayment(processAdditionalPayment: $processAdditionalPayment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateSetupPaymentImpl &&
            (identical(
                    other.processAdditionalPayment, processAdditionalPayment) ||
                other.processAdditionalPayment == processAdditionalPayment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, processAdditionalPayment);

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateSetupPaymentImplCopyWith<_$ValidateSetupPaymentImpl>
      get copyWith =>
          __$$ValidateSetupPaymentImplCopyWithImpl<_$ValidateSetupPaymentImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String amount) setAmount,
    required TResult Function(PaymentAmountType paymentAmountType)
        setPaymentAmountType,
    required TResult Function(MPPaymentMethodType paymentMethodType)
        setPaymentMethodType,
    required TResult Function(bool processAdditionalPayment)
        validateSetupPayment,
  }) {
    return validateSetupPayment(processAdditionalPayment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String amount)? setAmount,
    TResult? Function(PaymentAmountType paymentAmountType)?
        setPaymentAmountType,
    TResult? Function(MPPaymentMethodType paymentMethodType)?
        setPaymentMethodType,
    TResult? Function(bool processAdditionalPayment)? validateSetupPayment,
  }) {
    return validateSetupPayment?.call(processAdditionalPayment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount)? setAmount,
    TResult Function(PaymentAmountType paymentAmountType)? setPaymentAmountType,
    TResult Function(MPPaymentMethodType paymentMethodType)?
        setPaymentMethodType,
    TResult Function(bool processAdditionalPayment)? validateSetupPayment,
    required TResult orElse(),
  }) {
    if (validateSetupPayment != null) {
      return validateSetupPayment(processAdditionalPayment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetAmount value) setAmount,
    required TResult Function(_SetPaymentAmountType value) setPaymentAmountType,
    required TResult Function(_SetPaymentMethodType value) setPaymentMethodType,
    required TResult Function(_ValidateSetupPayment value) validateSetupPayment,
  }) {
    return validateSetupPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetAmount value)? setAmount,
    TResult? Function(_SetPaymentAmountType value)? setPaymentAmountType,
    TResult? Function(_SetPaymentMethodType value)? setPaymentMethodType,
    TResult? Function(_ValidateSetupPayment value)? validateSetupPayment,
  }) {
    return validateSetupPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetAmount value)? setAmount,
    TResult Function(_SetPaymentAmountType value)? setPaymentAmountType,
    TResult Function(_SetPaymentMethodType value)? setPaymentMethodType,
    TResult Function(_ValidateSetupPayment value)? validateSetupPayment,
    required TResult orElse(),
  }) {
    if (validateSetupPayment != null) {
      return validateSetupPayment(this);
    }
    return orElse();
  }
}

abstract class _ValidateSetupPayment implements SetupPaymentEvent {
  const factory _ValidateSetupPayment(
          {required final bool processAdditionalPayment}) =
      _$ValidateSetupPaymentImpl;

  bool get processAdditionalPayment;

  /// Create a copy of SetupPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateSetupPaymentImplCopyWith<_$ValidateSetupPaymentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetupPaymentState {
  PaymentAmountType get paymentAmountType => throw _privateConstructorUsedError;
  dynamic get paymentMethodType => throw _privateConstructorUsedError;
  DollarInput get paymentAmount => throw _privateConstructorUsedError;
  String? get paymentAmountErrorMessage => throw _privateConstructorUsedError;
  SetupPaymentValidationStatus get setupPaymentValidationStatus =>
      throw _privateConstructorUsedError;
  bool get processAdditionalPayment => throw _privateConstructorUsedError;

  /// Create a copy of SetupPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetupPaymentStateCopyWith<SetupPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupPaymentStateCopyWith<$Res> {
  factory $SetupPaymentStateCopyWith(
          SetupPaymentState value, $Res Function(SetupPaymentState) then) =
      _$SetupPaymentStateCopyWithImpl<$Res, SetupPaymentState>;
  @useResult
  $Res call(
      {PaymentAmountType paymentAmountType,
      dynamic paymentMethodType,
      DollarInput paymentAmount,
      String? paymentAmountErrorMessage,
      SetupPaymentValidationStatus setupPaymentValidationStatus,
      bool processAdditionalPayment});

  $SetupPaymentValidationStatusCopyWith<$Res> get setupPaymentValidationStatus;
}

/// @nodoc
class _$SetupPaymentStateCopyWithImpl<$Res, $Val extends SetupPaymentState>
    implements $SetupPaymentStateCopyWith<$Res> {
  _$SetupPaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetupPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmountType = null,
    Object? paymentMethodType = freezed,
    Object? paymentAmount = null,
    Object? paymentAmountErrorMessage = freezed,
    Object? setupPaymentValidationStatus = null,
    Object? processAdditionalPayment = null,
  }) {
    return _then(_value.copyWith(
      paymentAmountType: null == paymentAmountType
          ? _value.paymentAmountType
          : paymentAmountType // ignore: cast_nullable_to_non_nullable
              as PaymentAmountType,
      paymentMethodType: freezed == paymentMethodType
          ? _value.paymentMethodType
          : paymentMethodType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as DollarInput,
      paymentAmountErrorMessage: freezed == paymentAmountErrorMessage
          ? _value.paymentAmountErrorMessage
          : paymentAmountErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      setupPaymentValidationStatus: null == setupPaymentValidationStatus
          ? _value.setupPaymentValidationStatus
          : setupPaymentValidationStatus // ignore: cast_nullable_to_non_nullable
              as SetupPaymentValidationStatus,
      processAdditionalPayment: null == processAdditionalPayment
          ? _value.processAdditionalPayment
          : processAdditionalPayment // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of SetupPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SetupPaymentValidationStatusCopyWith<$Res> get setupPaymentValidationStatus {
    return $SetupPaymentValidationStatusCopyWith<$Res>(
        _value.setupPaymentValidationStatus, (value) {
      return _then(
          _value.copyWith(setupPaymentValidationStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetupPaymentStateImplCopyWith<$Res>
    implements $SetupPaymentStateCopyWith<$Res> {
  factory _$$SetupPaymentStateImplCopyWith(_$SetupPaymentStateImpl value,
          $Res Function(_$SetupPaymentStateImpl) then) =
      __$$SetupPaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentAmountType paymentAmountType,
      dynamic paymentMethodType,
      DollarInput paymentAmount,
      String? paymentAmountErrorMessage,
      SetupPaymentValidationStatus setupPaymentValidationStatus,
      bool processAdditionalPayment});

  @override
  $SetupPaymentValidationStatusCopyWith<$Res> get setupPaymentValidationStatus;
}

/// @nodoc
class __$$SetupPaymentStateImplCopyWithImpl<$Res>
    extends _$SetupPaymentStateCopyWithImpl<$Res, _$SetupPaymentStateImpl>
    implements _$$SetupPaymentStateImplCopyWith<$Res> {
  __$$SetupPaymentStateImplCopyWithImpl(_$SetupPaymentStateImpl _value,
      $Res Function(_$SetupPaymentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetupPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmountType = null,
    Object? paymentMethodType = freezed,
    Object? paymentAmount = null,
    Object? paymentAmountErrorMessage = freezed,
    Object? setupPaymentValidationStatus = null,
    Object? processAdditionalPayment = null,
  }) {
    return _then(_$SetupPaymentStateImpl(
      paymentAmountType: null == paymentAmountType
          ? _value.paymentAmountType
          : paymentAmountType // ignore: cast_nullable_to_non_nullable
              as PaymentAmountType,
      paymentMethodType: freezed == paymentMethodType
          ? _value.paymentMethodType!
          : paymentMethodType,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as DollarInput,
      paymentAmountErrorMessage: freezed == paymentAmountErrorMessage
          ? _value.paymentAmountErrorMessage
          : paymentAmountErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      setupPaymentValidationStatus: null == setupPaymentValidationStatus
          ? _value.setupPaymentValidationStatus
          : setupPaymentValidationStatus // ignore: cast_nullable_to_non_nullable
              as SetupPaymentValidationStatus,
      processAdditionalPayment: null == processAdditionalPayment
          ? _value.processAdditionalPayment
          : processAdditionalPayment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetupPaymentStateImpl implements _SetupPaymentState {
  const _$SetupPaymentStateImpl(
      {this.paymentAmountType = PaymentAmountType.currentRent,
      this.paymentMethodType = MPPaymentMethodType.none,
      this.paymentAmount = const DollarInput.pure(true),
      this.paymentAmountErrorMessage = null,
      this.setupPaymentValidationStatus =
          const SetupPaymentValidationStatus.initial(),
      this.processAdditionalPayment = false});

  @override
  @JsonKey()
  final PaymentAmountType paymentAmountType;
  @override
  @JsonKey()
  final dynamic paymentMethodType;
  @override
  @JsonKey()
  final DollarInput paymentAmount;
  @override
  @JsonKey()
  final String? paymentAmountErrorMessage;
  @override
  @JsonKey()
  final SetupPaymentValidationStatus setupPaymentValidationStatus;
  @override
  @JsonKey()
  final bool processAdditionalPayment;

  @override
  String toString() {
    return 'SetupPaymentState(paymentAmountType: $paymentAmountType, paymentMethodType: $paymentMethodType, paymentAmount: $paymentAmount, paymentAmountErrorMessage: $paymentAmountErrorMessage, setupPaymentValidationStatus: $setupPaymentValidationStatus, processAdditionalPayment: $processAdditionalPayment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupPaymentStateImpl &&
            (identical(other.paymentAmountType, paymentAmountType) ||
                other.paymentAmountType == paymentAmountType) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethodType, paymentMethodType) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentAmountErrorMessage,
                    paymentAmountErrorMessage) ||
                other.paymentAmountErrorMessage == paymentAmountErrorMessage) &&
            (identical(other.setupPaymentValidationStatus,
                    setupPaymentValidationStatus) ||
                other.setupPaymentValidationStatus ==
                    setupPaymentValidationStatus) &&
            (identical(
                    other.processAdditionalPayment, processAdditionalPayment) ||
                other.processAdditionalPayment == processAdditionalPayment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentAmountType,
      const DeepCollectionEquality().hash(paymentMethodType),
      paymentAmount,
      paymentAmountErrorMessage,
      setupPaymentValidationStatus,
      processAdditionalPayment);

  /// Create a copy of SetupPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetupPaymentStateImplCopyWith<_$SetupPaymentStateImpl> get copyWith =>
      __$$SetupPaymentStateImplCopyWithImpl<_$SetupPaymentStateImpl>(
          this, _$identity);
}

abstract class _SetupPaymentState implements SetupPaymentState {
  const factory _SetupPaymentState(
      {final PaymentAmountType paymentAmountType,
      final dynamic paymentMethodType,
      final DollarInput paymentAmount,
      final String? paymentAmountErrorMessage,
      final SetupPaymentValidationStatus setupPaymentValidationStatus,
      final bool processAdditionalPayment}) = _$SetupPaymentStateImpl;

  @override
  PaymentAmountType get paymentAmountType;
  @override
  dynamic get paymentMethodType;
  @override
  DollarInput get paymentAmount;
  @override
  String? get paymentAmountErrorMessage;
  @override
  SetupPaymentValidationStatus get setupPaymentValidationStatus;
  @override
  bool get processAdditionalPayment;

  /// Create a copy of SetupPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetupPaymentStateImplCopyWith<_$SetupPaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetupPaymentValidationStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valid,
    required TResult Function() notValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valid,
    TResult? Function()? notValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valid,
    TResult Function()? notValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Valid value) valid,
    required TResult Function(_NotValid value) notValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Valid value)? valid,
    TResult? Function(_NotValid value)? notValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Valid value)? valid,
    TResult Function(_NotValid value)? notValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupPaymentValidationStatusCopyWith<$Res> {
  factory $SetupPaymentValidationStatusCopyWith(
          SetupPaymentValidationStatus value,
          $Res Function(SetupPaymentValidationStatus) then) =
      _$SetupPaymentValidationStatusCopyWithImpl<$Res,
          SetupPaymentValidationStatus>;
}

/// @nodoc
class _$SetupPaymentValidationStatusCopyWithImpl<$Res,
        $Val extends SetupPaymentValidationStatus>
    implements $SetupPaymentValidationStatusCopyWith<$Res> {
  _$SetupPaymentValidationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetupPaymentValidationStatus
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
    extends _$SetupPaymentValidationStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetupPaymentValidationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SetupPaymentValidationStatus.initial()';
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
    required TResult Function() valid,
    required TResult Function() notValid,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valid,
    TResult? Function()? notValid,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valid,
    TResult Function()? notValid,
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
    required TResult Function(_Valid value) valid,
    required TResult Function(_NotValid value) notValid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Valid value)? valid,
    TResult? Function(_NotValid value)? notValid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Valid value)? valid,
    TResult Function(_NotValid value)? notValid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SetupPaymentValidationStatus {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ValidImplCopyWith<$Res> {
  factory _$$ValidImplCopyWith(
          _$ValidImpl value, $Res Function(_$ValidImpl) then) =
      __$$ValidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidImplCopyWithImpl<$Res>
    extends _$SetupPaymentValidationStatusCopyWithImpl<$Res, _$ValidImpl>
    implements _$$ValidImplCopyWith<$Res> {
  __$$ValidImplCopyWithImpl(
      _$ValidImpl _value, $Res Function(_$ValidImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetupPaymentValidationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidImpl implements _Valid {
  const _$ValidImpl();

  @override
  String toString() {
    return 'SetupPaymentValidationStatus.valid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valid,
    required TResult Function() notValid,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valid,
    TResult? Function()? notValid,
  }) {
    return valid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valid,
    TResult Function()? notValid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Valid value) valid,
    required TResult Function(_NotValid value) notValid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Valid value)? valid,
    TResult? Function(_NotValid value)? notValid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Valid value)? valid,
    TResult Function(_NotValid value)? notValid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _Valid implements SetupPaymentValidationStatus {
  const factory _Valid() = _$ValidImpl;
}

/// @nodoc
abstract class _$$NotValidImplCopyWith<$Res> {
  factory _$$NotValidImplCopyWith(
          _$NotValidImpl value, $Res Function(_$NotValidImpl) then) =
      __$$NotValidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotValidImplCopyWithImpl<$Res>
    extends _$SetupPaymentValidationStatusCopyWithImpl<$Res, _$NotValidImpl>
    implements _$$NotValidImplCopyWith<$Res> {
  __$$NotValidImplCopyWithImpl(
      _$NotValidImpl _value, $Res Function(_$NotValidImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetupPaymentValidationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotValidImpl implements _NotValid {
  const _$NotValidImpl();

  @override
  String toString() {
    return 'SetupPaymentValidationStatus.notValid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotValidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valid,
    required TResult Function() notValid,
  }) {
    return notValid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valid,
    TResult? Function()? notValid,
  }) {
    return notValid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valid,
    TResult Function()? notValid,
    required TResult orElse(),
  }) {
    if (notValid != null) {
      return notValid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Valid value) valid,
    required TResult Function(_NotValid value) notValid,
  }) {
    return notValid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Valid value)? valid,
    TResult? Function(_NotValid value)? notValid,
  }) {
    return notValid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Valid value)? valid,
    TResult Function(_NotValid value)? notValid,
    required TResult orElse(),
  }) {
    if (notValid != null) {
      return notValid(this);
    }
    return orElse();
  }
}

abstract class _NotValid implements SetupPaymentValidationStatus {
  const factory _NotValid() = _$NotValidImpl;
}
