// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BillingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyId, String residentId) getBillings,
    required TResult Function(String billingId, String billingLabel)
        getBillingPDF,
    required TResult Function() restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyId, String residentId)? getBillings,
    TResult? Function(String billingId, String billingLabel)? getBillingPDF,
    TResult? Function()? restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyId, String residentId)? getBillings,
    TResult Function(String billingId, String billingLabel)? getBillingPDF,
    TResult Function()? restart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBillingsEvent value) getBillings,
    required TResult Function(_GetBillingPDFEvent value) getBillingPDF,
    required TResult Function(_RestartBillingsEvent value) restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBillingsEvent value)? getBillings,
    TResult? Function(_GetBillingPDFEvent value)? getBillingPDF,
    TResult? Function(_RestartBillingsEvent value)? restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBillingsEvent value)? getBillings,
    TResult Function(_GetBillingPDFEvent value)? getBillingPDF,
    TResult Function(_RestartBillingsEvent value)? restart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingsEventCopyWith<$Res> {
  factory $BillingsEventCopyWith(
          BillingsEvent value, $Res Function(BillingsEvent) then) =
      _$BillingsEventCopyWithImpl<$Res, BillingsEvent>;
}

/// @nodoc
class _$BillingsEventCopyWithImpl<$Res, $Val extends BillingsEvent>
    implements $BillingsEventCopyWith<$Res> {
  _$BillingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetBillingsEventImplCopyWith<$Res> {
  factory _$$GetBillingsEventImplCopyWith(_$GetBillingsEventImpl value,
          $Res Function(_$GetBillingsEventImpl) then) =
      __$$GetBillingsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String companyId, String residentId});
}

/// @nodoc
class __$$GetBillingsEventImplCopyWithImpl<$Res>
    extends _$BillingsEventCopyWithImpl<$Res, _$GetBillingsEventImpl>
    implements _$$GetBillingsEventImplCopyWith<$Res> {
  __$$GetBillingsEventImplCopyWithImpl(_$GetBillingsEventImpl _value,
      $Res Function(_$GetBillingsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? residentId = null,
  }) {
    return _then(_$GetBillingsEventImpl(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetBillingsEventImpl
    with DiagnosticableTreeMixin
    implements _GetBillingsEvent {
  const _$GetBillingsEventImpl(
      {required this.companyId, required this.residentId});

  @override
  final String companyId;
  @override
  final String residentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BillingsEvent.getBillings(companyId: $companyId, residentId: $residentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BillingsEvent.getBillings'))
      ..add(DiagnosticsProperty('companyId', companyId))
      ..add(DiagnosticsProperty('residentId', residentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBillingsEventImpl &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyId, residentId);

  /// Create a copy of BillingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBillingsEventImplCopyWith<_$GetBillingsEventImpl> get copyWith =>
      __$$GetBillingsEventImplCopyWithImpl<_$GetBillingsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyId, String residentId) getBillings,
    required TResult Function(String billingId, String billingLabel)
        getBillingPDF,
    required TResult Function() restart,
  }) {
    return getBillings(companyId, residentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyId, String residentId)? getBillings,
    TResult? Function(String billingId, String billingLabel)? getBillingPDF,
    TResult? Function()? restart,
  }) {
    return getBillings?.call(companyId, residentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyId, String residentId)? getBillings,
    TResult Function(String billingId, String billingLabel)? getBillingPDF,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (getBillings != null) {
      return getBillings(companyId, residentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBillingsEvent value) getBillings,
    required TResult Function(_GetBillingPDFEvent value) getBillingPDF,
    required TResult Function(_RestartBillingsEvent value) restart,
  }) {
    return getBillings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBillingsEvent value)? getBillings,
    TResult? Function(_GetBillingPDFEvent value)? getBillingPDF,
    TResult? Function(_RestartBillingsEvent value)? restart,
  }) {
    return getBillings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBillingsEvent value)? getBillings,
    TResult Function(_GetBillingPDFEvent value)? getBillingPDF,
    TResult Function(_RestartBillingsEvent value)? restart,
    required TResult orElse(),
  }) {
    if (getBillings != null) {
      return getBillings(this);
    }
    return orElse();
  }
}

abstract class _GetBillingsEvent implements BillingsEvent {
  const factory _GetBillingsEvent(
      {required final String companyId,
      required final String residentId}) = _$GetBillingsEventImpl;

  String get companyId;
  String get residentId;

  /// Create a copy of BillingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBillingsEventImplCopyWith<_$GetBillingsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBillingPDFEventImplCopyWith<$Res> {
  factory _$$GetBillingPDFEventImplCopyWith(_$GetBillingPDFEventImpl value,
          $Res Function(_$GetBillingPDFEventImpl) then) =
      __$$GetBillingPDFEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String billingId, String billingLabel});
}

/// @nodoc
class __$$GetBillingPDFEventImplCopyWithImpl<$Res>
    extends _$BillingsEventCopyWithImpl<$Res, _$GetBillingPDFEventImpl>
    implements _$$GetBillingPDFEventImplCopyWith<$Res> {
  __$$GetBillingPDFEventImplCopyWithImpl(_$GetBillingPDFEventImpl _value,
      $Res Function(_$GetBillingPDFEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billingId = null,
    Object? billingLabel = null,
  }) {
    return _then(_$GetBillingPDFEventImpl(
      null == billingId
          ? _value.billingId
          : billingId // ignore: cast_nullable_to_non_nullable
              as String,
      null == billingLabel
          ? _value.billingLabel
          : billingLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetBillingPDFEventImpl
    with DiagnosticableTreeMixin
    implements _GetBillingPDFEvent {
  const _$GetBillingPDFEventImpl(this.billingId, this.billingLabel);

  @override
  final String billingId;
  @override
  final String billingLabel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BillingsEvent.getBillingPDF(billingId: $billingId, billingLabel: $billingLabel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BillingsEvent.getBillingPDF'))
      ..add(DiagnosticsProperty('billingId', billingId))
      ..add(DiagnosticsProperty('billingLabel', billingLabel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBillingPDFEventImpl &&
            (identical(other.billingId, billingId) ||
                other.billingId == billingId) &&
            (identical(other.billingLabel, billingLabel) ||
                other.billingLabel == billingLabel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, billingId, billingLabel);

  /// Create a copy of BillingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBillingPDFEventImplCopyWith<_$GetBillingPDFEventImpl> get copyWith =>
      __$$GetBillingPDFEventImplCopyWithImpl<_$GetBillingPDFEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyId, String residentId) getBillings,
    required TResult Function(String billingId, String billingLabel)
        getBillingPDF,
    required TResult Function() restart,
  }) {
    return getBillingPDF(billingId, billingLabel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyId, String residentId)? getBillings,
    TResult? Function(String billingId, String billingLabel)? getBillingPDF,
    TResult? Function()? restart,
  }) {
    return getBillingPDF?.call(billingId, billingLabel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyId, String residentId)? getBillings,
    TResult Function(String billingId, String billingLabel)? getBillingPDF,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (getBillingPDF != null) {
      return getBillingPDF(billingId, billingLabel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBillingsEvent value) getBillings,
    required TResult Function(_GetBillingPDFEvent value) getBillingPDF,
    required TResult Function(_RestartBillingsEvent value) restart,
  }) {
    return getBillingPDF(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBillingsEvent value)? getBillings,
    TResult? Function(_GetBillingPDFEvent value)? getBillingPDF,
    TResult? Function(_RestartBillingsEvent value)? restart,
  }) {
    return getBillingPDF?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBillingsEvent value)? getBillings,
    TResult Function(_GetBillingPDFEvent value)? getBillingPDF,
    TResult Function(_RestartBillingsEvent value)? restart,
    required TResult orElse(),
  }) {
    if (getBillingPDF != null) {
      return getBillingPDF(this);
    }
    return orElse();
  }
}

abstract class _GetBillingPDFEvent implements BillingsEvent {
  const factory _GetBillingPDFEvent(
          final String billingId, final String billingLabel) =
      _$GetBillingPDFEventImpl;

  String get billingId;
  String get billingLabel;

  /// Create a copy of BillingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBillingPDFEventImplCopyWith<_$GetBillingPDFEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestartBillingsEventImplCopyWith<$Res> {
  factory _$$RestartBillingsEventImplCopyWith(_$RestartBillingsEventImpl value,
          $Res Function(_$RestartBillingsEventImpl) then) =
      __$$RestartBillingsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestartBillingsEventImplCopyWithImpl<$Res>
    extends _$BillingsEventCopyWithImpl<$Res, _$RestartBillingsEventImpl>
    implements _$$RestartBillingsEventImplCopyWith<$Res> {
  __$$RestartBillingsEventImplCopyWithImpl(_$RestartBillingsEventImpl _value,
      $Res Function(_$RestartBillingsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartBillingsEventImpl
    with DiagnosticableTreeMixin
    implements _RestartBillingsEvent {
  const _$RestartBillingsEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BillingsEvent.restart()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BillingsEvent.restart'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestartBillingsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyId, String residentId) getBillings,
    required TResult Function(String billingId, String billingLabel)
        getBillingPDF,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyId, String residentId)? getBillings,
    TResult? Function(String billingId, String billingLabel)? getBillingPDF,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyId, String residentId)? getBillings,
    TResult Function(String billingId, String billingLabel)? getBillingPDF,
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
    required TResult Function(_GetBillingsEvent value) getBillings,
    required TResult Function(_GetBillingPDFEvent value) getBillingPDF,
    required TResult Function(_RestartBillingsEvent value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBillingsEvent value)? getBillings,
    TResult? Function(_GetBillingPDFEvent value)? getBillingPDF,
    TResult? Function(_RestartBillingsEvent value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBillingsEvent value)? getBillings,
    TResult Function(_GetBillingPDFEvent value)? getBillingPDF,
    TResult Function(_RestartBillingsEvent value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class _RestartBillingsEvent implements BillingsEvent {
  const factory _RestartBillingsEvent() = _$RestartBillingsEventImpl;
}

/// @nodoc
mixin _$BillingsState {
  Billings get billingHistory => throw _privateConstructorUsedError;
  File? get billingPDF => throw _privateConstructorUsedError;
  BillingsStatus get billingsStatus => throw _privateConstructorUsedError;
  BillingsStatus get billingPDFStatus => throw _privateConstructorUsedError;
  String get billingLabel => throw _privateConstructorUsedError;

  /// Create a copy of BillingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingsStateCopyWith<BillingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingsStateCopyWith<$Res> {
  factory $BillingsStateCopyWith(
          BillingsState value, $Res Function(BillingsState) then) =
      _$BillingsStateCopyWithImpl<$Res, BillingsState>;
  @useResult
  $Res call(
      {Billings billingHistory,
      File? billingPDF,
      BillingsStatus billingsStatus,
      BillingsStatus billingPDFStatus,
      String billingLabel});
}

/// @nodoc
class _$BillingsStateCopyWithImpl<$Res, $Val extends BillingsState>
    implements $BillingsStateCopyWith<$Res> {
  _$BillingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billingHistory = null,
    Object? billingPDF = freezed,
    Object? billingsStatus = null,
    Object? billingPDFStatus = null,
    Object? billingLabel = null,
  }) {
    return _then(_value.copyWith(
      billingHistory: null == billingHistory
          ? _value.billingHistory
          : billingHistory // ignore: cast_nullable_to_non_nullable
              as Billings,
      billingPDF: freezed == billingPDF
          ? _value.billingPDF
          : billingPDF // ignore: cast_nullable_to_non_nullable
              as File?,
      billingsStatus: null == billingsStatus
          ? _value.billingsStatus
          : billingsStatus // ignore: cast_nullable_to_non_nullable
              as BillingsStatus,
      billingPDFStatus: null == billingPDFStatus
          ? _value.billingPDFStatus
          : billingPDFStatus // ignore: cast_nullable_to_non_nullable
              as BillingsStatus,
      billingLabel: null == billingLabel
          ? _value.billingLabel
          : billingLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingsStateImplCopyWith<$Res>
    implements $BillingsStateCopyWith<$Res> {
  factory _$$BillingsStateImplCopyWith(
          _$BillingsStateImpl value, $Res Function(_$BillingsStateImpl) then) =
      __$$BillingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Billings billingHistory,
      File? billingPDF,
      BillingsStatus billingsStatus,
      BillingsStatus billingPDFStatus,
      String billingLabel});
}

/// @nodoc
class __$$BillingsStateImplCopyWithImpl<$Res>
    extends _$BillingsStateCopyWithImpl<$Res, _$BillingsStateImpl>
    implements _$$BillingsStateImplCopyWith<$Res> {
  __$$BillingsStateImplCopyWithImpl(
      _$BillingsStateImpl _value, $Res Function(_$BillingsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billingHistory = null,
    Object? billingPDF = freezed,
    Object? billingsStatus = null,
    Object? billingPDFStatus = null,
    Object? billingLabel = null,
  }) {
    return _then(_$BillingsStateImpl(
      billingHistory: null == billingHistory
          ? _value.billingHistory
          : billingHistory // ignore: cast_nullable_to_non_nullable
              as Billings,
      billingPDF: freezed == billingPDF
          ? _value.billingPDF
          : billingPDF // ignore: cast_nullable_to_non_nullable
              as File?,
      billingsStatus: null == billingsStatus
          ? _value.billingsStatus
          : billingsStatus // ignore: cast_nullable_to_non_nullable
              as BillingsStatus,
      billingPDFStatus: null == billingPDFStatus
          ? _value.billingPDFStatus
          : billingPDFStatus // ignore: cast_nullable_to_non_nullable
              as BillingsStatus,
      billingLabel: null == billingLabel
          ? _value.billingLabel
          : billingLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BillingsStateImpl
    with DiagnosticableTreeMixin
    implements _BillingsState {
  const _$BillingsStateImpl(
      {this.billingHistory = Billings.empty,
      this.billingPDF,
      this.billingsStatus = BillingsStatus.initial,
      this.billingPDFStatus = BillingsStatus.initial,
      this.billingLabel = ""});

  @override
  @JsonKey()
  final Billings billingHistory;
  @override
  final File? billingPDF;
  @override
  @JsonKey()
  final BillingsStatus billingsStatus;
  @override
  @JsonKey()
  final BillingsStatus billingPDFStatus;
  @override
  @JsonKey()
  final String billingLabel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BillingsState(billingHistory: $billingHistory, billingPDF: $billingPDF, billingsStatus: $billingsStatus, billingPDFStatus: $billingPDFStatus, billingLabel: $billingLabel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BillingsState'))
      ..add(DiagnosticsProperty('billingHistory', billingHistory))
      ..add(DiagnosticsProperty('billingPDF', billingPDF))
      ..add(DiagnosticsProperty('billingsStatus', billingsStatus))
      ..add(DiagnosticsProperty('billingPDFStatus', billingPDFStatus))
      ..add(DiagnosticsProperty('billingLabel', billingLabel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingsStateImpl &&
            (identical(other.billingHistory, billingHistory) ||
                other.billingHistory == billingHistory) &&
            (identical(other.billingPDF, billingPDF) ||
                other.billingPDF == billingPDF) &&
            (identical(other.billingsStatus, billingsStatus) ||
                other.billingsStatus == billingsStatus) &&
            (identical(other.billingPDFStatus, billingPDFStatus) ||
                other.billingPDFStatus == billingPDFStatus) &&
            (identical(other.billingLabel, billingLabel) ||
                other.billingLabel == billingLabel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, billingHistory, billingPDF,
      billingsStatus, billingPDFStatus, billingLabel);

  /// Create a copy of BillingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingsStateImplCopyWith<_$BillingsStateImpl> get copyWith =>
      __$$BillingsStateImplCopyWithImpl<_$BillingsStateImpl>(this, _$identity);
}

abstract class _BillingsState implements BillingsState {
  const factory _BillingsState(
      {final Billings billingHistory,
      final File? billingPDF,
      final BillingsStatus billingsStatus,
      final BillingsStatus billingPDFStatus,
      final String billingLabel}) = _$BillingsStateImpl;

  @override
  Billings get billingHistory;
  @override
  File? get billingPDF;
  @override
  BillingsStatus get billingsStatus;
  @override
  BillingsStatus get billingPDFStatus;
  @override
  String get billingLabel;

  /// Create a copy of BillingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingsStateImplCopyWith<_$BillingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
