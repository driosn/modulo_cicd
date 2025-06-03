// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendPaymentEvent {
  double get amount => throw _privateConstructorUsedError;
  PayToType get payToType => throw _privateConstructorUsedError;
  bool get processAdditionalPayment => throw _privateConstructorUsedError;
  String get referenceId => throw _privateConstructorUsedError;
  String get referenceTitle => throw _privateConstructorUsedError;
  String get residentId => throw _privateConstructorUsedError;
  String get residentUserId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double amount,
            PayToType payToType,
            bool processAdditionalPayment,
            String referenceId,
            String referenceTitle,
            String residentId,
            String residentUserId)
        sendPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            double amount,
            PayToType payToType,
            bool processAdditionalPayment,
            String referenceId,
            String referenceTitle,
            String residentId,
            String residentUserId)?
        sendPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            double amount,
            PayToType payToType,
            bool processAdditionalPayment,
            String referenceId,
            String referenceTitle,
            String residentId,
            String residentUserId)?
        sendPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPayment value) sendPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPayment value)? sendPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPayment value)? sendPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SendPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendPaymentEventCopyWith<SendPaymentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPaymentEventCopyWith<$Res> {
  factory $SendPaymentEventCopyWith(
          SendPaymentEvent value, $Res Function(SendPaymentEvent) then) =
      _$SendPaymentEventCopyWithImpl<$Res, SendPaymentEvent>;
  @useResult
  $Res call(
      {double amount,
      PayToType payToType,
      bool processAdditionalPayment,
      String referenceId,
      String referenceTitle,
      String residentId,
      String residentUserId});

  $PayToTypeCopyWith<$Res> get payToType;
}

/// @nodoc
class _$SendPaymentEventCopyWithImpl<$Res, $Val extends SendPaymentEvent>
    implements $SendPaymentEventCopyWith<$Res> {
  _$SendPaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? payToType = null,
    Object? processAdditionalPayment = null,
    Object? referenceId = null,
    Object? referenceTitle = null,
    Object? residentId = null,
    Object? residentUserId = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      payToType: null == payToType
          ? _value.payToType
          : payToType // ignore: cast_nullable_to_non_nullable
              as PayToType,
      processAdditionalPayment: null == processAdditionalPayment
          ? _value.processAdditionalPayment
          : processAdditionalPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      referenceTitle: null == referenceTitle
          ? _value.referenceTitle
          : referenceTitle // ignore: cast_nullable_to_non_nullable
              as String,
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of SendPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayToTypeCopyWith<$Res> get payToType {
    return $PayToTypeCopyWith<$Res>(_value.payToType, (value) {
      return _then(_value.copyWith(payToType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendPaymentImplCopyWith<$Res>
    implements $SendPaymentEventCopyWith<$Res> {
  factory _$$SendPaymentImplCopyWith(
          _$SendPaymentImpl value, $Res Function(_$SendPaymentImpl) then) =
      __$$SendPaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double amount,
      PayToType payToType,
      bool processAdditionalPayment,
      String referenceId,
      String referenceTitle,
      String residentId,
      String residentUserId});

  @override
  $PayToTypeCopyWith<$Res> get payToType;
}

/// @nodoc
class __$$SendPaymentImplCopyWithImpl<$Res>
    extends _$SendPaymentEventCopyWithImpl<$Res, _$SendPaymentImpl>
    implements _$$SendPaymentImplCopyWith<$Res> {
  __$$SendPaymentImplCopyWithImpl(
      _$SendPaymentImpl _value, $Res Function(_$SendPaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? payToType = null,
    Object? processAdditionalPayment = null,
    Object? referenceId = null,
    Object? referenceTitle = null,
    Object? residentId = null,
    Object? residentUserId = null,
  }) {
    return _then(_$SendPaymentImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      payToType: null == payToType
          ? _value.payToType
          : payToType // ignore: cast_nullable_to_non_nullable
              as PayToType,
      processAdditionalPayment: null == processAdditionalPayment
          ? _value.processAdditionalPayment
          : processAdditionalPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      referenceTitle: null == referenceTitle
          ? _value.referenceTitle
          : referenceTitle // ignore: cast_nullable_to_non_nullable
              as String,
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendPaymentImpl implements _SendPayment {
  const _$SendPaymentImpl(
      {required this.amount,
      required this.payToType,
      required this.processAdditionalPayment,
      required this.referenceId,
      required this.referenceTitle,
      required this.residentId,
      required this.residentUserId});

  @override
  final double amount;
  @override
  final PayToType payToType;
  @override
  final bool processAdditionalPayment;
  @override
  final String referenceId;
  @override
  final String referenceTitle;
  @override
  final String residentId;
  @override
  final String residentUserId;

  @override
  String toString() {
    return 'SendPaymentEvent.sendPayment(amount: $amount, payToType: $payToType, processAdditionalPayment: $processAdditionalPayment, referenceId: $referenceId, referenceTitle: $referenceTitle, residentId: $residentId, residentUserId: $residentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPaymentImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.payToType, payToType) ||
                other.payToType == payToType) &&
            (identical(
                    other.processAdditionalPayment, processAdditionalPayment) ||
                other.processAdditionalPayment == processAdditionalPayment) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.referenceTitle, referenceTitle) ||
                other.referenceTitle == referenceTitle) &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId) &&
            (identical(other.residentUserId, residentUserId) ||
                other.residentUserId == residentUserId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      amount,
      payToType,
      processAdditionalPayment,
      referenceId,
      referenceTitle,
      residentId,
      residentUserId);

  /// Create a copy of SendPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPaymentImplCopyWith<_$SendPaymentImpl> get copyWith =>
      __$$SendPaymentImplCopyWithImpl<_$SendPaymentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double amount,
            PayToType payToType,
            bool processAdditionalPayment,
            String referenceId,
            String referenceTitle,
            String residentId,
            String residentUserId)
        sendPayment,
  }) {
    return sendPayment(amount, payToType, processAdditionalPayment, referenceId,
        referenceTitle, residentId, residentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            double amount,
            PayToType payToType,
            bool processAdditionalPayment,
            String referenceId,
            String referenceTitle,
            String residentId,
            String residentUserId)?
        sendPayment,
  }) {
    return sendPayment?.call(amount, payToType, processAdditionalPayment,
        referenceId, referenceTitle, residentId, residentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            double amount,
            PayToType payToType,
            bool processAdditionalPayment,
            String referenceId,
            String referenceTitle,
            String residentId,
            String residentUserId)?
        sendPayment,
    required TResult orElse(),
  }) {
    if (sendPayment != null) {
      return sendPayment(amount, payToType, processAdditionalPayment,
          referenceId, referenceTitle, residentId, residentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPayment value) sendPayment,
  }) {
    return sendPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendPayment value)? sendPayment,
  }) {
    return sendPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPayment value)? sendPayment,
    required TResult orElse(),
  }) {
    if (sendPayment != null) {
      return sendPayment(this);
    }
    return orElse();
  }
}

abstract class _SendPayment implements SendPaymentEvent {
  const factory _SendPayment(
      {required final double amount,
      required final PayToType payToType,
      required final bool processAdditionalPayment,
      required final String referenceId,
      required final String referenceTitle,
      required final String residentId,
      required final String residentUserId}) = _$SendPaymentImpl;

  @override
  double get amount;
  @override
  PayToType get payToType;
  @override
  bool get processAdditionalPayment;
  @override
  String get referenceId;
  @override
  String get referenceTitle;
  @override
  String get residentId;
  @override
  String get residentUserId;

  /// Create a copy of SendPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendPaymentImplCopyWith<_$SendPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendPaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(
            MAError error, MakeAPaymentError? makeAPaymentError)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPaymentStateCopyWith<$Res> {
  factory $SendPaymentStateCopyWith(
          SendPaymentState value, $Res Function(SendPaymentState) then) =
      _$SendPaymentStateCopyWithImpl<$Res, SendPaymentState>;
}

/// @nodoc
class _$SendPaymentStateCopyWithImpl<$Res, $Val extends SendPaymentState>
    implements $SendPaymentStateCopyWith<$Res> {
  _$SendPaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendPaymentState
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
    extends _$SendPaymentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendPaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SendPaymentState.initial()';
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
    required TResult Function() success,
    required TResult Function(
            MAError error, MakeAPaymentError? makeAPaymentError)
        failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failure,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SendPaymentState {
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
    extends _$SendPaymentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendPaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SendPaymentState.loading()';
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
    required TResult Function() success,
    required TResult Function(
            MAError error, MakeAPaymentError? makeAPaymentError)
        failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failure,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SendPaymentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SendPaymentStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendPaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'SendPaymentState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(
            MAError error, MakeAPaymentError? makeAPaymentError)
        failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SendPaymentState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MAError error, MakeAPaymentError? makeAPaymentError});

  $MAErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$SendPaymentStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? makeAPaymentError = freezed,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MAError,
      freezed == makeAPaymentError
          ? _value.makeAPaymentError
          : makeAPaymentError // ignore: cast_nullable_to_non_nullable
              as MakeAPaymentError?,
    ));
  }

  /// Create a copy of SendPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MAErrorCopyWith<$Res> get error {
    return $MAErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.error, this.makeAPaymentError);

  @override
  final MAError error;
  @override
  final MakeAPaymentError? makeAPaymentError;

  @override
  String toString() {
    return 'SendPaymentState.failure(error: $error, makeAPaymentError: $makeAPaymentError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.makeAPaymentError, makeAPaymentError) ||
                other.makeAPaymentError == makeAPaymentError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, makeAPaymentError);

  /// Create a copy of SendPaymentState
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
    required TResult Function() success,
    required TResult Function(
            MAError error, MakeAPaymentError? makeAPaymentError)
        failure,
  }) {
    return failure(error, makeAPaymentError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failure,
  }) {
    return failure?.call(error, makeAPaymentError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error, makeAPaymentError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SendPaymentState {
  const factory _Failure(
          final MAError error, final MakeAPaymentError? makeAPaymentError) =
      _$FailureImpl;

  MAError get error;
  MakeAPaymentError? get makeAPaymentError;

  /// Create a copy of SendPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
