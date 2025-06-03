// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) getPayments,
    required TResult Function() restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? getPayments,
    TResult? Function()? restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? getPayments,
    TResult Function()? restart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentsEvent value) getPayments,
    required TResult Function(_RestartPaymentsEvent value) restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentsEvent value)? getPayments,
    TResult? Function(_RestartPaymentsEvent value)? restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentsEvent value)? getPayments,
    TResult Function(_RestartPaymentsEvent value)? restart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsEventCopyWith<$Res> {
  factory $PaymentsEventCopyWith(
          PaymentsEvent value, $Res Function(PaymentsEvent) then) =
      _$PaymentsEventCopyWithImpl<$Res, PaymentsEvent>;
}

/// @nodoc
class _$PaymentsEventCopyWithImpl<$Res, $Val extends PaymentsEvent>
    implements $PaymentsEventCopyWith<$Res> {
  _$PaymentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPaymentsEventImplCopyWith<$Res> {
  factory _$$GetPaymentsEventImplCopyWith(_$GetPaymentsEventImpl value,
          $Res Function(_$GetPaymentsEventImpl) then) =
      __$$GetPaymentsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String propertyId});
}

/// @nodoc
class __$$GetPaymentsEventImplCopyWithImpl<$Res>
    extends _$PaymentsEventCopyWithImpl<$Res, _$GetPaymentsEventImpl>
    implements _$$GetPaymentsEventImplCopyWith<$Res> {
  __$$GetPaymentsEventImplCopyWithImpl(_$GetPaymentsEventImpl _value,
      $Res Function(_$GetPaymentsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
  }) {
    return _then(_$GetPaymentsEventImpl(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymentsEventImpl
    with DiagnosticableTreeMixin
    implements _GetPaymentsEvent {
  const _$GetPaymentsEventImpl({required this.propertyId});

  @override
  final String propertyId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentsEvent.getPayments(propertyId: $propertyId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentsEvent.getPayments'))
      ..add(DiagnosticsProperty('propertyId', propertyId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentsEventImpl &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertyId);

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentsEventImplCopyWith<_$GetPaymentsEventImpl> get copyWith =>
      __$$GetPaymentsEventImplCopyWithImpl<_$GetPaymentsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) getPayments,
    required TResult Function() restart,
  }) {
    return getPayments(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? getPayments,
    TResult? Function()? restart,
  }) {
    return getPayments?.call(propertyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? getPayments,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (getPayments != null) {
      return getPayments(propertyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentsEvent value) getPayments,
    required TResult Function(_RestartPaymentsEvent value) restart,
  }) {
    return getPayments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentsEvent value)? getPayments,
    TResult? Function(_RestartPaymentsEvent value)? restart,
  }) {
    return getPayments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentsEvent value)? getPayments,
    TResult Function(_RestartPaymentsEvent value)? restart,
    required TResult orElse(),
  }) {
    if (getPayments != null) {
      return getPayments(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentsEvent implements PaymentsEvent {
  const factory _GetPaymentsEvent({required final String propertyId}) =
      _$GetPaymentsEventImpl;

  String get propertyId;

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPaymentsEventImplCopyWith<_$GetPaymentsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestartPaymentsEventImplCopyWith<$Res> {
  factory _$$RestartPaymentsEventImplCopyWith(_$RestartPaymentsEventImpl value,
          $Res Function(_$RestartPaymentsEventImpl) then) =
      __$$RestartPaymentsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestartPaymentsEventImplCopyWithImpl<$Res>
    extends _$PaymentsEventCopyWithImpl<$Res, _$RestartPaymentsEventImpl>
    implements _$$RestartPaymentsEventImplCopyWith<$Res> {
  __$$RestartPaymentsEventImplCopyWithImpl(_$RestartPaymentsEventImpl _value,
      $Res Function(_$RestartPaymentsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartPaymentsEventImpl
    with DiagnosticableTreeMixin
    implements _RestartPaymentsEvent {
  const _$RestartPaymentsEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentsEvent.restart()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PaymentsEvent.restart'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestartPaymentsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId) getPayments,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId)? getPayments,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId)? getPayments,
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
    required TResult Function(_GetPaymentsEvent value) getPayments,
    required TResult Function(_RestartPaymentsEvent value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentsEvent value)? getPayments,
    TResult? Function(_RestartPaymentsEvent value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentsEvent value)? getPayments,
    TResult Function(_RestartPaymentsEvent value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class _RestartPaymentsEvent implements PaymentsEvent {
  const factory _RestartPaymentsEvent() = _$RestartPaymentsEventImpl;
}

/// @nodoc
mixin _$PaymentsState {
  Payments get paymentHistory => throw _privateConstructorUsedError;
  PaymentsStatus get paymentsStatus => throw _privateConstructorUsedError;

  /// Create a copy of PaymentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentsStateCopyWith<PaymentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsStateCopyWith<$Res> {
  factory $PaymentsStateCopyWith(
          PaymentsState value, $Res Function(PaymentsState) then) =
      _$PaymentsStateCopyWithImpl<$Res, PaymentsState>;
  @useResult
  $Res call({Payments paymentHistory, PaymentsStatus paymentsStatus});
}

/// @nodoc
class _$PaymentsStateCopyWithImpl<$Res, $Val extends PaymentsState>
    implements $PaymentsStateCopyWith<$Res> {
  _$PaymentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentHistory = null,
    Object? paymentsStatus = null,
  }) {
    return _then(_value.copyWith(
      paymentHistory: null == paymentHistory
          ? _value.paymentHistory
          : paymentHistory // ignore: cast_nullable_to_non_nullable
              as Payments,
      paymentsStatus: null == paymentsStatus
          ? _value.paymentsStatus
          : paymentsStatus // ignore: cast_nullable_to_non_nullable
              as PaymentsStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentsStateImplCopyWith<$Res>
    implements $PaymentsStateCopyWith<$Res> {
  factory _$$PaymentsStateImplCopyWith(
          _$PaymentsStateImpl value, $Res Function(_$PaymentsStateImpl) then) =
      __$$PaymentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Payments paymentHistory, PaymentsStatus paymentsStatus});
}

/// @nodoc
class __$$PaymentsStateImplCopyWithImpl<$Res>
    extends _$PaymentsStateCopyWithImpl<$Res, _$PaymentsStateImpl>
    implements _$$PaymentsStateImplCopyWith<$Res> {
  __$$PaymentsStateImplCopyWithImpl(
      _$PaymentsStateImpl _value, $Res Function(_$PaymentsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentHistory = null,
    Object? paymentsStatus = null,
  }) {
    return _then(_$PaymentsStateImpl(
      paymentHistory: null == paymentHistory
          ? _value.paymentHistory
          : paymentHistory // ignore: cast_nullable_to_non_nullable
              as Payments,
      paymentsStatus: null == paymentsStatus
          ? _value.paymentsStatus
          : paymentsStatus // ignore: cast_nullable_to_non_nullable
              as PaymentsStatus,
    ));
  }
}

/// @nodoc

class _$PaymentsStateImpl
    with DiagnosticableTreeMixin
    implements _PaymentsState {
  const _$PaymentsStateImpl(
      {this.paymentHistory = Payments.empty,
      this.paymentsStatus = PaymentsStatus.initial});

  @override
  @JsonKey()
  final Payments paymentHistory;
  @override
  @JsonKey()
  final PaymentsStatus paymentsStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentsState(paymentHistory: $paymentHistory, paymentsStatus: $paymentsStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentsState'))
      ..add(DiagnosticsProperty('paymentHistory', paymentHistory))
      ..add(DiagnosticsProperty('paymentsStatus', paymentsStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentsStateImpl &&
            (identical(other.paymentHistory, paymentHistory) ||
                other.paymentHistory == paymentHistory) &&
            (identical(other.paymentsStatus, paymentsStatus) ||
                other.paymentsStatus == paymentsStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentHistory, paymentsStatus);

  /// Create a copy of PaymentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentsStateImplCopyWith<_$PaymentsStateImpl> get copyWith =>
      __$$PaymentsStateImplCopyWithImpl<_$PaymentsStateImpl>(this, _$identity);
}

abstract class _PaymentsState implements PaymentsState {
  const factory _PaymentsState(
      {final Payments paymentHistory,
      final PaymentsStatus paymentsStatus}) = _$PaymentsStateImpl;

  @override
  Payments get paymentHistory;
  @override
  PaymentsStatus get paymentsStatus;

  /// Create a copy of PaymentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentsStateImplCopyWith<_$PaymentsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
