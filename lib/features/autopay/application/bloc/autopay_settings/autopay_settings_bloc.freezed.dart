// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autopay_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AutoPaySettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) fetch,
    required TResult Function(String residentId) fetchAfterUpdate,
    required TResult Function() load,
    required TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)
        update,
    required TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)
        reset,
    required TResult Function() resetStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? fetch,
    TResult? Function(String residentId)? fetchAfterUpdate,
    TResult? Function()? load,
    TResult? Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult? Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult? Function()? resetStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? fetch,
    TResult Function(String residentId)? fetchAfterUpdate,
    TResult Function()? load,
    TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult Function()? resetStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAutoPaySettingsEvent value) fetch,
    required TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)
        fetchAfterUpdate,
    required TResult Function(_LoadAutoPaySettingsEvent value) load,
    required TResult Function(_UpdateAutoPaySettingsEvent value) update,
    required TResult Function(_ResetAutoPaySettingsEvent value) reset,
    required TResult Function(_ResetStatusAutoPaySettingsEvent value)
        resetStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult? Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult? Function(_LoadAutoPaySettingsEvent value)? load,
    TResult? Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult? Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult? Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult Function(_LoadAutoPaySettingsEvent value)? load,
    TResult Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoPaySettingsEventCopyWith<$Res> {
  factory $AutoPaySettingsEventCopyWith(AutoPaySettingsEvent value,
          $Res Function(AutoPaySettingsEvent) then) =
      _$AutoPaySettingsEventCopyWithImpl<$Res, AutoPaySettingsEvent>;
}

/// @nodoc
class _$AutoPaySettingsEventCopyWithImpl<$Res,
        $Val extends AutoPaySettingsEvent>
    implements $AutoPaySettingsEventCopyWith<$Res> {
  _$AutoPaySettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAutoPaySettingsEventImplCopyWith<$Res> {
  factory _$$FetchAutoPaySettingsEventImplCopyWith(
          _$FetchAutoPaySettingsEventImpl value,
          $Res Function(_$FetchAutoPaySettingsEventImpl) then) =
      __$$FetchAutoPaySettingsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String residentId});
}

/// @nodoc
class __$$FetchAutoPaySettingsEventImplCopyWithImpl<$Res>
    extends _$AutoPaySettingsEventCopyWithImpl<$Res,
        _$FetchAutoPaySettingsEventImpl>
    implements _$$FetchAutoPaySettingsEventImplCopyWith<$Res> {
  __$$FetchAutoPaySettingsEventImplCopyWithImpl(
      _$FetchAutoPaySettingsEventImpl _value,
      $Res Function(_$FetchAutoPaySettingsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
  }) {
    return _then(_$FetchAutoPaySettingsEventImpl(
      null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAutoPaySettingsEventImpl implements _FetchAutoPaySettingsEvent {
  const _$FetchAutoPaySettingsEventImpl(this.residentId);

  @override
  final String residentId;

  @override
  String toString() {
    return 'AutoPaySettingsEvent.fetch(residentId: $residentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAutoPaySettingsEventImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, residentId);

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAutoPaySettingsEventImplCopyWith<_$FetchAutoPaySettingsEventImpl>
      get copyWith => __$$FetchAutoPaySettingsEventImplCopyWithImpl<
          _$FetchAutoPaySettingsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) fetch,
    required TResult Function(String residentId) fetchAfterUpdate,
    required TResult Function() load,
    required TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)
        update,
    required TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)
        reset,
    required TResult Function() resetStatus,
  }) {
    return fetch(residentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? fetch,
    TResult? Function(String residentId)? fetchAfterUpdate,
    TResult? Function()? load,
    TResult? Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult? Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult? Function()? resetStatus,
  }) {
    return fetch?.call(residentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? fetch,
    TResult Function(String residentId)? fetchAfterUpdate,
    TResult Function()? load,
    TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult Function()? resetStatus,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(residentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAutoPaySettingsEvent value) fetch,
    required TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)
        fetchAfterUpdate,
    required TResult Function(_LoadAutoPaySettingsEvent value) load,
    required TResult Function(_UpdateAutoPaySettingsEvent value) update,
    required TResult Function(_ResetAutoPaySettingsEvent value) reset,
    required TResult Function(_ResetStatusAutoPaySettingsEvent value)
        resetStatus,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult? Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult? Function(_LoadAutoPaySettingsEvent value)? load,
    TResult? Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult? Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult? Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult Function(_LoadAutoPaySettingsEvent value)? load,
    TResult Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchAutoPaySettingsEvent implements AutoPaySettingsEvent {
  const factory _FetchAutoPaySettingsEvent(final String residentId) =
      _$FetchAutoPaySettingsEventImpl;

  String get residentId;

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchAutoPaySettingsEventImplCopyWith<_$FetchAutoPaySettingsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAfterUpdateAutoPaySettingsEventImplCopyWith<$Res> {
  factory _$$FetchAfterUpdateAutoPaySettingsEventImplCopyWith(
          _$FetchAfterUpdateAutoPaySettingsEventImpl value,
          $Res Function(_$FetchAfterUpdateAutoPaySettingsEventImpl) then) =
      __$$FetchAfterUpdateAutoPaySettingsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String residentId});
}

/// @nodoc
class __$$FetchAfterUpdateAutoPaySettingsEventImplCopyWithImpl<$Res>
    extends _$AutoPaySettingsEventCopyWithImpl<$Res,
        _$FetchAfterUpdateAutoPaySettingsEventImpl>
    implements _$$FetchAfterUpdateAutoPaySettingsEventImplCopyWith<$Res> {
  __$$FetchAfterUpdateAutoPaySettingsEventImplCopyWithImpl(
      _$FetchAfterUpdateAutoPaySettingsEventImpl _value,
      $Res Function(_$FetchAfterUpdateAutoPaySettingsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
  }) {
    return _then(_$FetchAfterUpdateAutoPaySettingsEventImpl(
      null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchAfterUpdateAutoPaySettingsEventImpl
    implements _FetchAfterUpdateAutoPaySettingsEvent {
  const _$FetchAfterUpdateAutoPaySettingsEventImpl(this.residentId);

  @override
  final String residentId;

  @override
  String toString() {
    return 'AutoPaySettingsEvent.fetchAfterUpdate(residentId: $residentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAfterUpdateAutoPaySettingsEventImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, residentId);

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAfterUpdateAutoPaySettingsEventImplCopyWith<
          _$FetchAfterUpdateAutoPaySettingsEventImpl>
      get copyWith => __$$FetchAfterUpdateAutoPaySettingsEventImplCopyWithImpl<
          _$FetchAfterUpdateAutoPaySettingsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) fetch,
    required TResult Function(String residentId) fetchAfterUpdate,
    required TResult Function() load,
    required TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)
        update,
    required TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)
        reset,
    required TResult Function() resetStatus,
  }) {
    return fetchAfterUpdate(residentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? fetch,
    TResult? Function(String residentId)? fetchAfterUpdate,
    TResult? Function()? load,
    TResult? Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult? Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult? Function()? resetStatus,
  }) {
    return fetchAfterUpdate?.call(residentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? fetch,
    TResult Function(String residentId)? fetchAfterUpdate,
    TResult Function()? load,
    TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult Function()? resetStatus,
    required TResult orElse(),
  }) {
    if (fetchAfterUpdate != null) {
      return fetchAfterUpdate(residentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAutoPaySettingsEvent value) fetch,
    required TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)
        fetchAfterUpdate,
    required TResult Function(_LoadAutoPaySettingsEvent value) load,
    required TResult Function(_UpdateAutoPaySettingsEvent value) update,
    required TResult Function(_ResetAutoPaySettingsEvent value) reset,
    required TResult Function(_ResetStatusAutoPaySettingsEvent value)
        resetStatus,
  }) {
    return fetchAfterUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult? Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult? Function(_LoadAutoPaySettingsEvent value)? load,
    TResult? Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult? Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult? Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
  }) {
    return fetchAfterUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult Function(_LoadAutoPaySettingsEvent value)? load,
    TResult Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
    required TResult orElse(),
  }) {
    if (fetchAfterUpdate != null) {
      return fetchAfterUpdate(this);
    }
    return orElse();
  }
}

abstract class _FetchAfterUpdateAutoPaySettingsEvent
    implements AutoPaySettingsEvent {
  const factory _FetchAfterUpdateAutoPaySettingsEvent(final String residentId) =
      _$FetchAfterUpdateAutoPaySettingsEventImpl;

  String get residentId;

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchAfterUpdateAutoPaySettingsEventImplCopyWith<
          _$FetchAfterUpdateAutoPaySettingsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAutoPaySettingsEventImplCopyWith<$Res> {
  factory _$$LoadAutoPaySettingsEventImplCopyWith(
          _$LoadAutoPaySettingsEventImpl value,
          $Res Function(_$LoadAutoPaySettingsEventImpl) then) =
      __$$LoadAutoPaySettingsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAutoPaySettingsEventImplCopyWithImpl<$Res>
    extends _$AutoPaySettingsEventCopyWithImpl<$Res,
        _$LoadAutoPaySettingsEventImpl>
    implements _$$LoadAutoPaySettingsEventImplCopyWith<$Res> {
  __$$LoadAutoPaySettingsEventImplCopyWithImpl(
      _$LoadAutoPaySettingsEventImpl _value,
      $Res Function(_$LoadAutoPaySettingsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadAutoPaySettingsEventImpl implements _LoadAutoPaySettingsEvent {
  const _$LoadAutoPaySettingsEventImpl();

  @override
  String toString() {
    return 'AutoPaySettingsEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAutoPaySettingsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) fetch,
    required TResult Function(String residentId) fetchAfterUpdate,
    required TResult Function() load,
    required TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)
        update,
    required TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)
        reset,
    required TResult Function() resetStatus,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? fetch,
    TResult? Function(String residentId)? fetchAfterUpdate,
    TResult? Function()? load,
    TResult? Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult? Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult? Function()? resetStatus,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? fetch,
    TResult Function(String residentId)? fetchAfterUpdate,
    TResult Function()? load,
    TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult Function()? resetStatus,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAutoPaySettingsEvent value) fetch,
    required TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)
        fetchAfterUpdate,
    required TResult Function(_LoadAutoPaySettingsEvent value) load,
    required TResult Function(_UpdateAutoPaySettingsEvent value) update,
    required TResult Function(_ResetAutoPaySettingsEvent value) reset,
    required TResult Function(_ResetStatusAutoPaySettingsEvent value)
        resetStatus,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult? Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult? Function(_LoadAutoPaySettingsEvent value)? load,
    TResult? Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult? Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult? Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult Function(_LoadAutoPaySettingsEvent value)? load,
    TResult Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadAutoPaySettingsEvent implements AutoPaySettingsEvent {
  const factory _LoadAutoPaySettingsEvent() = _$LoadAutoPaySettingsEventImpl;
}

/// @nodoc
abstract class _$$UpdateAutoPaySettingsEventImplCopyWith<$Res> {
  factory _$$UpdateAutoPaySettingsEventImplCopyWith(
          _$UpdateAutoPaySettingsEventImpl value,
          $Res Function(_$UpdateAutoPaySettingsEventImpl) then) =
      __$$UpdateAutoPaySettingsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String residentId,
      String autopayId,
      OptionInfo paymentDate,
      DollarInput withdrawalAmount,
      WithdrawalAmountOption withdrawalAmountOption,
      String referenceId,
      String residentUserId});

  $OptionInfoCopyWith<$Res> get paymentDate;
}

/// @nodoc
class __$$UpdateAutoPaySettingsEventImplCopyWithImpl<$Res>
    extends _$AutoPaySettingsEventCopyWithImpl<$Res,
        _$UpdateAutoPaySettingsEventImpl>
    implements _$$UpdateAutoPaySettingsEventImplCopyWith<$Res> {
  __$$UpdateAutoPaySettingsEventImplCopyWithImpl(
      _$UpdateAutoPaySettingsEventImpl _value,
      $Res Function(_$UpdateAutoPaySettingsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
    Object? autopayId = null,
    Object? paymentDate = null,
    Object? withdrawalAmount = null,
    Object? withdrawalAmountOption = null,
    Object? referenceId = null,
    Object? residentUserId = null,
  }) {
    return _then(_$UpdateAutoPaySettingsEventImpl(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
      autopayId: null == autopayId
          ? _value.autopayId
          : autopayId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as OptionInfo,
      withdrawalAmount: null == withdrawalAmount
          ? _value.withdrawalAmount
          : withdrawalAmount // ignore: cast_nullable_to_non_nullable
              as DollarInput,
      withdrawalAmountOption: null == withdrawalAmountOption
          ? _value.withdrawalAmountOption
          : withdrawalAmountOption // ignore: cast_nullable_to_non_nullable
              as WithdrawalAmountOption,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OptionInfoCopyWith<$Res> get paymentDate {
    return $OptionInfoCopyWith<$Res>(_value.paymentDate, (value) {
      return _then(_value.copyWith(paymentDate: value));
    });
  }
}

/// @nodoc

class _$UpdateAutoPaySettingsEventImpl implements _UpdateAutoPaySettingsEvent {
  const _$UpdateAutoPaySettingsEventImpl(
      {required this.residentId,
      required this.autopayId,
      required this.paymentDate,
      required this.withdrawalAmount,
      required this.withdrawalAmountOption,
      required this.referenceId,
      required this.residentUserId});

  @override
  final String residentId;
  @override
  final String autopayId;
  @override
  final OptionInfo paymentDate;
  @override
  final DollarInput withdrawalAmount;
  @override
  final WithdrawalAmountOption withdrawalAmountOption;
  @override
  final String referenceId;
  @override
  final String residentUserId;

  @override
  String toString() {
    return 'AutoPaySettingsEvent.update(residentId: $residentId, autopayId: $autopayId, paymentDate: $paymentDate, withdrawalAmount: $withdrawalAmount, withdrawalAmountOption: $withdrawalAmountOption, referenceId: $referenceId, residentUserId: $residentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAutoPaySettingsEventImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId) &&
            (identical(other.autopayId, autopayId) ||
                other.autopayId == autopayId) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.withdrawalAmount, withdrawalAmount) ||
                other.withdrawalAmount == withdrawalAmount) &&
            (identical(other.withdrawalAmountOption, withdrawalAmountOption) ||
                other.withdrawalAmountOption == withdrawalAmountOption) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.residentUserId, residentUserId) ||
                other.residentUserId == residentUserId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      residentId,
      autopayId,
      paymentDate,
      withdrawalAmount,
      withdrawalAmountOption,
      referenceId,
      residentUserId);

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAutoPaySettingsEventImplCopyWith<_$UpdateAutoPaySettingsEventImpl>
      get copyWith => __$$UpdateAutoPaySettingsEventImplCopyWithImpl<
          _$UpdateAutoPaySettingsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) fetch,
    required TResult Function(String residentId) fetchAfterUpdate,
    required TResult Function() load,
    required TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)
        update,
    required TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)
        reset,
    required TResult Function() resetStatus,
  }) {
    return update(residentId, autopayId, paymentDate, withdrawalAmount,
        withdrawalAmountOption, referenceId, residentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? fetch,
    TResult? Function(String residentId)? fetchAfterUpdate,
    TResult? Function()? load,
    TResult? Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult? Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult? Function()? resetStatus,
  }) {
    return update?.call(residentId, autopayId, paymentDate, withdrawalAmount,
        withdrawalAmountOption, referenceId, residentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? fetch,
    TResult Function(String residentId)? fetchAfterUpdate,
    TResult Function()? load,
    TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult Function()? resetStatus,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(residentId, autopayId, paymentDate, withdrawalAmount,
          withdrawalAmountOption, referenceId, residentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAutoPaySettingsEvent value) fetch,
    required TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)
        fetchAfterUpdate,
    required TResult Function(_LoadAutoPaySettingsEvent value) load,
    required TResult Function(_UpdateAutoPaySettingsEvent value) update,
    required TResult Function(_ResetAutoPaySettingsEvent value) reset,
    required TResult Function(_ResetStatusAutoPaySettingsEvent value)
        resetStatus,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult? Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult? Function(_LoadAutoPaySettingsEvent value)? load,
    TResult? Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult? Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult? Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult Function(_LoadAutoPaySettingsEvent value)? load,
    TResult Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateAutoPaySettingsEvent implements AutoPaySettingsEvent {
  const factory _UpdateAutoPaySettingsEvent(
      {required final String residentId,
      required final String autopayId,
      required final OptionInfo paymentDate,
      required final DollarInput withdrawalAmount,
      required final WithdrawalAmountOption withdrawalAmountOption,
      required final String referenceId,
      required final String residentUserId}) = _$UpdateAutoPaySettingsEventImpl;

  String get residentId;
  String get autopayId;
  OptionInfo get paymentDate;
  DollarInput get withdrawalAmount;
  WithdrawalAmountOption get withdrawalAmountOption;
  String get referenceId;
  String get residentUserId;

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAutoPaySettingsEventImplCopyWith<_$UpdateAutoPaySettingsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetAutoPaySettingsEventImplCopyWith<$Res> {
  factory _$$ResetAutoPaySettingsEventImplCopyWith(
          _$ResetAutoPaySettingsEventImpl value,
          $Res Function(_$ResetAutoPaySettingsEventImpl) then) =
      __$$ResetAutoPaySettingsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String residentId,
      String referenceId,
      int paymentDay,
      AutoPayOptionTypes autopayOptionType,
      String autopayId,
      String residentUserId});
}

/// @nodoc
class __$$ResetAutoPaySettingsEventImplCopyWithImpl<$Res>
    extends _$AutoPaySettingsEventCopyWithImpl<$Res,
        _$ResetAutoPaySettingsEventImpl>
    implements _$$ResetAutoPaySettingsEventImplCopyWith<$Res> {
  __$$ResetAutoPaySettingsEventImplCopyWithImpl(
      _$ResetAutoPaySettingsEventImpl _value,
      $Res Function(_$ResetAutoPaySettingsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
    Object? referenceId = null,
    Object? paymentDay = null,
    Object? autopayOptionType = null,
    Object? autopayId = null,
    Object? residentUserId = null,
  }) {
    return _then(_$ResetAutoPaySettingsEventImpl(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentDay: null == paymentDay
          ? _value.paymentDay
          : paymentDay // ignore: cast_nullable_to_non_nullable
              as int,
      autopayOptionType: null == autopayOptionType
          ? _value.autopayOptionType
          : autopayOptionType // ignore: cast_nullable_to_non_nullable
              as AutoPayOptionTypes,
      autopayId: null == autopayId
          ? _value.autopayId
          : autopayId // ignore: cast_nullable_to_non_nullable
              as String,
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetAutoPaySettingsEventImpl implements _ResetAutoPaySettingsEvent {
  const _$ResetAutoPaySettingsEventImpl(
      {required this.residentId,
      required this.referenceId,
      required this.paymentDay,
      required this.autopayOptionType,
      required this.autopayId,
      required this.residentUserId});

  @override
  final String residentId;
  @override
  final String referenceId;
  @override
  final int paymentDay;
  @override
  final AutoPayOptionTypes autopayOptionType;
  @override
  final String autopayId;
  @override
  final String residentUserId;

  @override
  String toString() {
    return 'AutoPaySettingsEvent.reset(residentId: $residentId, referenceId: $referenceId, paymentDay: $paymentDay, autopayOptionType: $autopayOptionType, autopayId: $autopayId, residentUserId: $residentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetAutoPaySettingsEventImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.paymentDay, paymentDay) ||
                other.paymentDay == paymentDay) &&
            (identical(other.autopayOptionType, autopayOptionType) ||
                other.autopayOptionType == autopayOptionType) &&
            (identical(other.autopayId, autopayId) ||
                other.autopayId == autopayId) &&
            (identical(other.residentUserId, residentUserId) ||
                other.residentUserId == residentUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, residentId, referenceId,
      paymentDay, autopayOptionType, autopayId, residentUserId);

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetAutoPaySettingsEventImplCopyWith<_$ResetAutoPaySettingsEventImpl>
      get copyWith => __$$ResetAutoPaySettingsEventImplCopyWithImpl<
          _$ResetAutoPaySettingsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) fetch,
    required TResult Function(String residentId) fetchAfterUpdate,
    required TResult Function() load,
    required TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)
        update,
    required TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)
        reset,
    required TResult Function() resetStatus,
  }) {
    return reset(residentId, referenceId, paymentDay, autopayOptionType,
        autopayId, residentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? fetch,
    TResult? Function(String residentId)? fetchAfterUpdate,
    TResult? Function()? load,
    TResult? Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult? Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult? Function()? resetStatus,
  }) {
    return reset?.call(residentId, referenceId, paymentDay, autopayOptionType,
        autopayId, residentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? fetch,
    TResult Function(String residentId)? fetchAfterUpdate,
    TResult Function()? load,
    TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult Function()? resetStatus,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(residentId, referenceId, paymentDay, autopayOptionType,
          autopayId, residentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAutoPaySettingsEvent value) fetch,
    required TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)
        fetchAfterUpdate,
    required TResult Function(_LoadAutoPaySettingsEvent value) load,
    required TResult Function(_UpdateAutoPaySettingsEvent value) update,
    required TResult Function(_ResetAutoPaySettingsEvent value) reset,
    required TResult Function(_ResetStatusAutoPaySettingsEvent value)
        resetStatus,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult? Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult? Function(_LoadAutoPaySettingsEvent value)? load,
    TResult? Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult? Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult? Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult Function(_LoadAutoPaySettingsEvent value)? load,
    TResult Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetAutoPaySettingsEvent implements AutoPaySettingsEvent {
  const factory _ResetAutoPaySettingsEvent(
      {required final String residentId,
      required final String referenceId,
      required final int paymentDay,
      required final AutoPayOptionTypes autopayOptionType,
      required final String autopayId,
      required final String residentUserId}) = _$ResetAutoPaySettingsEventImpl;

  String get residentId;
  String get referenceId;
  int get paymentDay;
  AutoPayOptionTypes get autopayOptionType;
  String get autopayId;
  String get residentUserId;

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetAutoPaySettingsEventImplCopyWith<_$ResetAutoPaySettingsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStatusAutoPaySettingsEventImplCopyWith<$Res> {
  factory _$$ResetStatusAutoPaySettingsEventImplCopyWith(
          _$ResetStatusAutoPaySettingsEventImpl value,
          $Res Function(_$ResetStatusAutoPaySettingsEventImpl) then) =
      __$$ResetStatusAutoPaySettingsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStatusAutoPaySettingsEventImplCopyWithImpl<$Res>
    extends _$AutoPaySettingsEventCopyWithImpl<$Res,
        _$ResetStatusAutoPaySettingsEventImpl>
    implements _$$ResetStatusAutoPaySettingsEventImplCopyWith<$Res> {
  __$$ResetStatusAutoPaySettingsEventImplCopyWithImpl(
      _$ResetStatusAutoPaySettingsEventImpl _value,
      $Res Function(_$ResetStatusAutoPaySettingsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetStatusAutoPaySettingsEventImpl
    implements _ResetStatusAutoPaySettingsEvent {
  const _$ResetStatusAutoPaySettingsEventImpl();

  @override
  String toString() {
    return 'AutoPaySettingsEvent.resetStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetStatusAutoPaySettingsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) fetch,
    required TResult Function(String residentId) fetchAfterUpdate,
    required TResult Function() load,
    required TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)
        update,
    required TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)
        reset,
    required TResult Function() resetStatus,
  }) {
    return resetStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? fetch,
    TResult? Function(String residentId)? fetchAfterUpdate,
    TResult? Function()? load,
    TResult? Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult? Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult? Function()? resetStatus,
  }) {
    return resetStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? fetch,
    TResult Function(String residentId)? fetchAfterUpdate,
    TResult Function()? load,
    TResult Function(
            String residentId,
            String autopayId,
            OptionInfo paymentDate,
            DollarInput withdrawalAmount,
            WithdrawalAmountOption withdrawalAmountOption,
            String referenceId,
            String residentUserId)?
        update,
    TResult Function(
            String residentId,
            String referenceId,
            int paymentDay,
            AutoPayOptionTypes autopayOptionType,
            String autopayId,
            String residentUserId)?
        reset,
    TResult Function()? resetStatus,
    required TResult orElse(),
  }) {
    if (resetStatus != null) {
      return resetStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAutoPaySettingsEvent value) fetch,
    required TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)
        fetchAfterUpdate,
    required TResult Function(_LoadAutoPaySettingsEvent value) load,
    required TResult Function(_UpdateAutoPaySettingsEvent value) update,
    required TResult Function(_ResetAutoPaySettingsEvent value) reset,
    required TResult Function(_ResetStatusAutoPaySettingsEvent value)
        resetStatus,
  }) {
    return resetStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult? Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult? Function(_LoadAutoPaySettingsEvent value)? load,
    TResult? Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult? Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult? Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
  }) {
    return resetStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAutoPaySettingsEvent value)? fetch,
    TResult Function(_FetchAfterUpdateAutoPaySettingsEvent value)?
        fetchAfterUpdate,
    TResult Function(_LoadAutoPaySettingsEvent value)? load,
    TResult Function(_UpdateAutoPaySettingsEvent value)? update,
    TResult Function(_ResetAutoPaySettingsEvent value)? reset,
    TResult Function(_ResetStatusAutoPaySettingsEvent value)? resetStatus,
    required TResult orElse(),
  }) {
    if (resetStatus != null) {
      return resetStatus(this);
    }
    return orElse();
  }
}

abstract class _ResetStatusAutoPaySettingsEvent
    implements AutoPaySettingsEvent {
  const factory _ResetStatusAutoPaySettingsEvent() =
      _$ResetStatusAutoPaySettingsEventImpl;
}

/// @nodoc
mixin _$AutoPaySettingsState {
  bool get isAutoPayActive => throw _privateConstructorUsedError;
  AutoPaySettingsStatus get status => throw _privateConstructorUsedError;
  List<AutoPaySettings> get autopaySettingsList =>
      throw _privateConstructorUsedError;
  AutoPayUpdateSettings? get updateResult => throw _privateConstructorUsedError;

  /// Create a copy of AutoPaySettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoPaySettingsStateCopyWith<AutoPaySettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoPaySettingsStateCopyWith<$Res> {
  factory $AutoPaySettingsStateCopyWith(AutoPaySettingsState value,
          $Res Function(AutoPaySettingsState) then) =
      _$AutoPaySettingsStateCopyWithImpl<$Res, AutoPaySettingsState>;
  @useResult
  $Res call(
      {bool isAutoPayActive,
      AutoPaySettingsStatus status,
      List<AutoPaySettings> autopaySettingsList,
      AutoPayUpdateSettings? updateResult});

  $AutoPaySettingsStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AutoPaySettingsStateCopyWithImpl<$Res,
        $Val extends AutoPaySettingsState>
    implements $AutoPaySettingsStateCopyWith<$Res> {
  _$AutoPaySettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoPaySettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAutoPayActive = null,
    Object? status = null,
    Object? autopaySettingsList = null,
    Object? updateResult = freezed,
  }) {
    return _then(_value.copyWith(
      isAutoPayActive: null == isAutoPayActive
          ? _value.isAutoPayActive
          : isAutoPayActive // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AutoPaySettingsStatus,
      autopaySettingsList: null == autopaySettingsList
          ? _value.autopaySettingsList
          : autopaySettingsList // ignore: cast_nullable_to_non_nullable
              as List<AutoPaySettings>,
      updateResult: freezed == updateResult
          ? _value.updateResult
          : updateResult // ignore: cast_nullable_to_non_nullable
              as AutoPayUpdateSettings?,
    ) as $Val);
  }

  /// Create a copy of AutoPaySettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoPaySettingsStatusCopyWith<$Res> get status {
    return $AutoPaySettingsStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AutoPaySettingsStateImplCopyWith<$Res>
    implements $AutoPaySettingsStateCopyWith<$Res> {
  factory _$$AutoPaySettingsStateImplCopyWith(_$AutoPaySettingsStateImpl value,
          $Res Function(_$AutoPaySettingsStateImpl) then) =
      __$$AutoPaySettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAutoPayActive,
      AutoPaySettingsStatus status,
      List<AutoPaySettings> autopaySettingsList,
      AutoPayUpdateSettings? updateResult});

  @override
  $AutoPaySettingsStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$AutoPaySettingsStateImplCopyWithImpl<$Res>
    extends _$AutoPaySettingsStateCopyWithImpl<$Res, _$AutoPaySettingsStateImpl>
    implements _$$AutoPaySettingsStateImplCopyWith<$Res> {
  __$$AutoPaySettingsStateImplCopyWithImpl(_$AutoPaySettingsStateImpl _value,
      $Res Function(_$AutoPaySettingsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAutoPayActive = null,
    Object? status = null,
    Object? autopaySettingsList = null,
    Object? updateResult = freezed,
  }) {
    return _then(_$AutoPaySettingsStateImpl(
      isAutoPayActive: null == isAutoPayActive
          ? _value.isAutoPayActive
          : isAutoPayActive // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AutoPaySettingsStatus,
      autopaySettingsList: null == autopaySettingsList
          ? _value._autopaySettingsList
          : autopaySettingsList // ignore: cast_nullable_to_non_nullable
              as List<AutoPaySettings>,
      updateResult: freezed == updateResult
          ? _value.updateResult
          : updateResult // ignore: cast_nullable_to_non_nullable
              as AutoPayUpdateSettings?,
    ));
  }
}

/// @nodoc

class _$AutoPaySettingsStateImpl implements _AutoPaySettingsState {
  const _$AutoPaySettingsStateImpl(
      {this.isAutoPayActive = false,
      this.status = const AutoPaySettingsStatus.initial(),
      final List<AutoPaySettings> autopaySettingsList = const [],
      this.updateResult = null})
      : _autopaySettingsList = autopaySettingsList;

  @override
  @JsonKey()
  final bool isAutoPayActive;
  @override
  @JsonKey()
  final AutoPaySettingsStatus status;
  final List<AutoPaySettings> _autopaySettingsList;
  @override
  @JsonKey()
  List<AutoPaySettings> get autopaySettingsList {
    if (_autopaySettingsList is EqualUnmodifiableListView)
      return _autopaySettingsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_autopaySettingsList);
  }

  @override
  @JsonKey()
  final AutoPayUpdateSettings? updateResult;

  @override
  String toString() {
    return 'AutoPaySettingsState(isAutoPayActive: $isAutoPayActive, status: $status, autopaySettingsList: $autopaySettingsList, updateResult: $updateResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoPaySettingsStateImpl &&
            (identical(other.isAutoPayActive, isAutoPayActive) ||
                other.isAutoPayActive == isAutoPayActive) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._autopaySettingsList, _autopaySettingsList) &&
            (identical(other.updateResult, updateResult) ||
                other.updateResult == updateResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAutoPayActive, status,
      const DeepCollectionEquality().hash(_autopaySettingsList), updateResult);

  /// Create a copy of AutoPaySettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoPaySettingsStateImplCopyWith<_$AutoPaySettingsStateImpl>
      get copyWith =>
          __$$AutoPaySettingsStateImplCopyWithImpl<_$AutoPaySettingsStateImpl>(
              this, _$identity);
}

abstract class _AutoPaySettingsState implements AutoPaySettingsState {
  const factory _AutoPaySettingsState(
      {final bool isAutoPayActive,
      final AutoPaySettingsStatus status,
      final List<AutoPaySettings> autopaySettingsList,
      final AutoPayUpdateSettings? updateResult}) = _$AutoPaySettingsStateImpl;

  @override
  bool get isAutoPayActive;
  @override
  AutoPaySettingsStatus get status;
  @override
  List<AutoPaySettings> get autopaySettingsList;
  @override
  AutoPayUpdateSettings? get updateResult;

  /// Create a copy of AutoPaySettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoPaySettingsStateImplCopyWith<_$AutoPaySettingsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AutoPaySettingsStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(MAError error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(MAError error)? failure,
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
abstract class $AutoPaySettingsStatusCopyWith<$Res> {
  factory $AutoPaySettingsStatusCopyWith(AutoPaySettingsStatus value,
          $Res Function(AutoPaySettingsStatus) then) =
      _$AutoPaySettingsStatusCopyWithImpl<$Res, AutoPaySettingsStatus>;
}

/// @nodoc
class _$AutoPaySettingsStatusCopyWithImpl<$Res,
        $Val extends AutoPaySettingsStatus>
    implements $AutoPaySettingsStatusCopyWith<$Res> {
  _$AutoPaySettingsStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoPaySettingsStatus
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
    extends _$AutoPaySettingsStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AutoPaySettingsStatus.initial()';
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
    required TResult Function(MAError error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(MAError error)? failure,
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

abstract class _Initial implements AutoPaySettingsStatus {
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
    extends _$AutoPaySettingsStatusCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AutoPaySettingsStatus.loading()';
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
    required TResult Function(MAError error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(MAError error)? failure,
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

abstract class _Loading implements AutoPaySettingsStatus {
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
    extends _$AutoPaySettingsStatusCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'AutoPaySettingsStatus.success()';
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
    required TResult Function(MAError error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(MAError error)? failure,
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

abstract class _Success implements AutoPaySettingsStatus {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MAError error});

  $MAErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AutoPaySettingsStatusCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MAError,
    ));
  }

  /// Create a copy of AutoPaySettingsStatus
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
  const _$FailureImpl(this.error);

  @override
  final MAError error;

  @override
  String toString() {
    return 'AutoPaySettingsStatus.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AutoPaySettingsStatus
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
    required TResult Function(MAError error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(MAError error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
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

abstract class _Failure implements AutoPaySettingsStatus {
  const factory _Failure(final MAError error) = _$FailureImpl;

  MAError get error;

  /// Create a copy of AutoPaySettingsStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
