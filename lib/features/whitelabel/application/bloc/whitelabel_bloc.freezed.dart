// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'whitelabel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WhitelabelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? corePropertyId, int? coreCompanyId)
        getWhitelabel,
    required TResult Function() resetWhitelabel,
    required TResult Function(int? corePropertyId, int? coreCompanyId)
        setupWhitelabel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? corePropertyId, int? coreCompanyId)? getWhitelabel,
    TResult? Function()? resetWhitelabel,
    TResult? Function(int? corePropertyId, int? coreCompanyId)? setupWhitelabel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? corePropertyId, int? coreCompanyId)? getWhitelabel,
    TResult Function()? resetWhitelabel,
    TResult Function(int? corePropertyId, int? coreCompanyId)? setupWhitelabel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWhitelabelEvent value) getWhitelabel,
    required TResult Function(_ResetWhitelabelEvent value) resetWhitelabel,
    required TResult Function(_SetupWhitelabelEvent value) setupWhitelabel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWhitelabelEvent value)? getWhitelabel,
    TResult? Function(_ResetWhitelabelEvent value)? resetWhitelabel,
    TResult? Function(_SetupWhitelabelEvent value)? setupWhitelabel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWhitelabelEvent value)? getWhitelabel,
    TResult Function(_ResetWhitelabelEvent value)? resetWhitelabel,
    TResult Function(_SetupWhitelabelEvent value)? setupWhitelabel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhitelabelEventCopyWith<$Res> {
  factory $WhitelabelEventCopyWith(
          WhitelabelEvent value, $Res Function(WhitelabelEvent) then) =
      _$WhitelabelEventCopyWithImpl<$Res, WhitelabelEvent>;
}

/// @nodoc
class _$WhitelabelEventCopyWithImpl<$Res, $Val extends WhitelabelEvent>
    implements $WhitelabelEventCopyWith<$Res> {
  _$WhitelabelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WhitelabelEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetWhitelabelEventImplCopyWith<$Res> {
  factory _$$GetWhitelabelEventImplCopyWith(_$GetWhitelabelEventImpl value,
          $Res Function(_$GetWhitelabelEventImpl) then) =
      __$$GetWhitelabelEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? corePropertyId, int? coreCompanyId});
}

/// @nodoc
class __$$GetWhitelabelEventImplCopyWithImpl<$Res>
    extends _$WhitelabelEventCopyWithImpl<$Res, _$GetWhitelabelEventImpl>
    implements _$$GetWhitelabelEventImplCopyWith<$Res> {
  __$$GetWhitelabelEventImplCopyWithImpl(_$GetWhitelabelEventImpl _value,
      $Res Function(_$GetWhitelabelEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhitelabelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? corePropertyId = freezed,
    Object? coreCompanyId = freezed,
  }) {
    return _then(_$GetWhitelabelEventImpl(
      corePropertyId: freezed == corePropertyId
          ? _value.corePropertyId
          : corePropertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      coreCompanyId: freezed == coreCompanyId
          ? _value.coreCompanyId
          : coreCompanyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetWhitelabelEventImpl
    with DiagnosticableTreeMixin
    implements _GetWhitelabelEvent {
  const _$GetWhitelabelEventImpl({this.corePropertyId, this.coreCompanyId});

  @override
  final int? corePropertyId;
  @override
  final int? coreCompanyId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WhitelabelEvent.getWhitelabel(corePropertyId: $corePropertyId, coreCompanyId: $coreCompanyId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WhitelabelEvent.getWhitelabel'))
      ..add(DiagnosticsProperty('corePropertyId', corePropertyId))
      ..add(DiagnosticsProperty('coreCompanyId', coreCompanyId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWhitelabelEventImpl &&
            (identical(other.corePropertyId, corePropertyId) ||
                other.corePropertyId == corePropertyId) &&
            (identical(other.coreCompanyId, coreCompanyId) ||
                other.coreCompanyId == coreCompanyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, corePropertyId, coreCompanyId);

  /// Create a copy of WhitelabelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWhitelabelEventImplCopyWith<_$GetWhitelabelEventImpl> get copyWith =>
      __$$GetWhitelabelEventImplCopyWithImpl<_$GetWhitelabelEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? corePropertyId, int? coreCompanyId)
        getWhitelabel,
    required TResult Function() resetWhitelabel,
    required TResult Function(int? corePropertyId, int? coreCompanyId)
        setupWhitelabel,
  }) {
    return getWhitelabel(corePropertyId, coreCompanyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? corePropertyId, int? coreCompanyId)? getWhitelabel,
    TResult? Function()? resetWhitelabel,
    TResult? Function(int? corePropertyId, int? coreCompanyId)? setupWhitelabel,
  }) {
    return getWhitelabel?.call(corePropertyId, coreCompanyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? corePropertyId, int? coreCompanyId)? getWhitelabel,
    TResult Function()? resetWhitelabel,
    TResult Function(int? corePropertyId, int? coreCompanyId)? setupWhitelabel,
    required TResult orElse(),
  }) {
    if (getWhitelabel != null) {
      return getWhitelabel(corePropertyId, coreCompanyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWhitelabelEvent value) getWhitelabel,
    required TResult Function(_ResetWhitelabelEvent value) resetWhitelabel,
    required TResult Function(_SetupWhitelabelEvent value) setupWhitelabel,
  }) {
    return getWhitelabel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWhitelabelEvent value)? getWhitelabel,
    TResult? Function(_ResetWhitelabelEvent value)? resetWhitelabel,
    TResult? Function(_SetupWhitelabelEvent value)? setupWhitelabel,
  }) {
    return getWhitelabel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWhitelabelEvent value)? getWhitelabel,
    TResult Function(_ResetWhitelabelEvent value)? resetWhitelabel,
    TResult Function(_SetupWhitelabelEvent value)? setupWhitelabel,
    required TResult orElse(),
  }) {
    if (getWhitelabel != null) {
      return getWhitelabel(this);
    }
    return orElse();
  }
}

abstract class _GetWhitelabelEvent implements WhitelabelEvent {
  const factory _GetWhitelabelEvent(
      {final int? corePropertyId,
      final int? coreCompanyId}) = _$GetWhitelabelEventImpl;

  int? get corePropertyId;
  int? get coreCompanyId;

  /// Create a copy of WhitelabelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetWhitelabelEventImplCopyWith<_$GetWhitelabelEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetWhitelabelEventImplCopyWith<$Res> {
  factory _$$ResetWhitelabelEventImplCopyWith(_$ResetWhitelabelEventImpl value,
          $Res Function(_$ResetWhitelabelEventImpl) then) =
      __$$ResetWhitelabelEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetWhitelabelEventImplCopyWithImpl<$Res>
    extends _$WhitelabelEventCopyWithImpl<$Res, _$ResetWhitelabelEventImpl>
    implements _$$ResetWhitelabelEventImplCopyWith<$Res> {
  __$$ResetWhitelabelEventImplCopyWithImpl(_$ResetWhitelabelEventImpl _value,
      $Res Function(_$ResetWhitelabelEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhitelabelEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetWhitelabelEventImpl
    with DiagnosticableTreeMixin
    implements _ResetWhitelabelEvent {
  const _$ResetWhitelabelEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WhitelabelEvent.resetWhitelabel()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'WhitelabelEvent.resetWhitelabel'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetWhitelabelEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? corePropertyId, int? coreCompanyId)
        getWhitelabel,
    required TResult Function() resetWhitelabel,
    required TResult Function(int? corePropertyId, int? coreCompanyId)
        setupWhitelabel,
  }) {
    return resetWhitelabel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? corePropertyId, int? coreCompanyId)? getWhitelabel,
    TResult? Function()? resetWhitelabel,
    TResult? Function(int? corePropertyId, int? coreCompanyId)? setupWhitelabel,
  }) {
    return resetWhitelabel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? corePropertyId, int? coreCompanyId)? getWhitelabel,
    TResult Function()? resetWhitelabel,
    TResult Function(int? corePropertyId, int? coreCompanyId)? setupWhitelabel,
    required TResult orElse(),
  }) {
    if (resetWhitelabel != null) {
      return resetWhitelabel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWhitelabelEvent value) getWhitelabel,
    required TResult Function(_ResetWhitelabelEvent value) resetWhitelabel,
    required TResult Function(_SetupWhitelabelEvent value) setupWhitelabel,
  }) {
    return resetWhitelabel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWhitelabelEvent value)? getWhitelabel,
    TResult? Function(_ResetWhitelabelEvent value)? resetWhitelabel,
    TResult? Function(_SetupWhitelabelEvent value)? setupWhitelabel,
  }) {
    return resetWhitelabel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWhitelabelEvent value)? getWhitelabel,
    TResult Function(_ResetWhitelabelEvent value)? resetWhitelabel,
    TResult Function(_SetupWhitelabelEvent value)? setupWhitelabel,
    required TResult orElse(),
  }) {
    if (resetWhitelabel != null) {
      return resetWhitelabel(this);
    }
    return orElse();
  }
}

abstract class _ResetWhitelabelEvent implements WhitelabelEvent {
  const factory _ResetWhitelabelEvent() = _$ResetWhitelabelEventImpl;
}

/// @nodoc
abstract class _$$SetupWhitelabelEventImplCopyWith<$Res> {
  factory _$$SetupWhitelabelEventImplCopyWith(_$SetupWhitelabelEventImpl value,
          $Res Function(_$SetupWhitelabelEventImpl) then) =
      __$$SetupWhitelabelEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? corePropertyId, int? coreCompanyId});
}

/// @nodoc
class __$$SetupWhitelabelEventImplCopyWithImpl<$Res>
    extends _$WhitelabelEventCopyWithImpl<$Res, _$SetupWhitelabelEventImpl>
    implements _$$SetupWhitelabelEventImplCopyWith<$Res> {
  __$$SetupWhitelabelEventImplCopyWithImpl(_$SetupWhitelabelEventImpl _value,
      $Res Function(_$SetupWhitelabelEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhitelabelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? corePropertyId = freezed,
    Object? coreCompanyId = freezed,
  }) {
    return _then(_$SetupWhitelabelEventImpl(
      corePropertyId: freezed == corePropertyId
          ? _value.corePropertyId
          : corePropertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      coreCompanyId: freezed == coreCompanyId
          ? _value.coreCompanyId
          : coreCompanyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SetupWhitelabelEventImpl
    with DiagnosticableTreeMixin
    implements _SetupWhitelabelEvent {
  const _$SetupWhitelabelEventImpl({this.corePropertyId, this.coreCompanyId});

  @override
  final int? corePropertyId;
  @override
  final int? coreCompanyId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WhitelabelEvent.setupWhitelabel(corePropertyId: $corePropertyId, coreCompanyId: $coreCompanyId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WhitelabelEvent.setupWhitelabel'))
      ..add(DiagnosticsProperty('corePropertyId', corePropertyId))
      ..add(DiagnosticsProperty('coreCompanyId', coreCompanyId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupWhitelabelEventImpl &&
            (identical(other.corePropertyId, corePropertyId) ||
                other.corePropertyId == corePropertyId) &&
            (identical(other.coreCompanyId, coreCompanyId) ||
                other.coreCompanyId == coreCompanyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, corePropertyId, coreCompanyId);

  /// Create a copy of WhitelabelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetupWhitelabelEventImplCopyWith<_$SetupWhitelabelEventImpl>
      get copyWith =>
          __$$SetupWhitelabelEventImplCopyWithImpl<_$SetupWhitelabelEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? corePropertyId, int? coreCompanyId)
        getWhitelabel,
    required TResult Function() resetWhitelabel,
    required TResult Function(int? corePropertyId, int? coreCompanyId)
        setupWhitelabel,
  }) {
    return setupWhitelabel(corePropertyId, coreCompanyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? corePropertyId, int? coreCompanyId)? getWhitelabel,
    TResult? Function()? resetWhitelabel,
    TResult? Function(int? corePropertyId, int? coreCompanyId)? setupWhitelabel,
  }) {
    return setupWhitelabel?.call(corePropertyId, coreCompanyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? corePropertyId, int? coreCompanyId)? getWhitelabel,
    TResult Function()? resetWhitelabel,
    TResult Function(int? corePropertyId, int? coreCompanyId)? setupWhitelabel,
    required TResult orElse(),
  }) {
    if (setupWhitelabel != null) {
      return setupWhitelabel(corePropertyId, coreCompanyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWhitelabelEvent value) getWhitelabel,
    required TResult Function(_ResetWhitelabelEvent value) resetWhitelabel,
    required TResult Function(_SetupWhitelabelEvent value) setupWhitelabel,
  }) {
    return setupWhitelabel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWhitelabelEvent value)? getWhitelabel,
    TResult? Function(_ResetWhitelabelEvent value)? resetWhitelabel,
    TResult? Function(_SetupWhitelabelEvent value)? setupWhitelabel,
  }) {
    return setupWhitelabel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWhitelabelEvent value)? getWhitelabel,
    TResult Function(_ResetWhitelabelEvent value)? resetWhitelabel,
    TResult Function(_SetupWhitelabelEvent value)? setupWhitelabel,
    required TResult orElse(),
  }) {
    if (setupWhitelabel != null) {
      return setupWhitelabel(this);
    }
    return orElse();
  }
}

abstract class _SetupWhitelabelEvent implements WhitelabelEvent {
  const factory _SetupWhitelabelEvent(
      {final int? corePropertyId,
      final int? coreCompanyId}) = _$SetupWhitelabelEventImpl;

  int? get corePropertyId;
  int? get coreCompanyId;

  /// Create a copy of WhitelabelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetupWhitelabelEventImplCopyWith<_$SetupWhitelabelEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WhitelabelState {
  Whitelabel get whitelabel => throw _privateConstructorUsedError;
  WhitelabelStatus get whitelabelStatus => throw _privateConstructorUsedError;

  /// Create a copy of WhitelabelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WhitelabelStateCopyWith<WhitelabelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhitelabelStateCopyWith<$Res> {
  factory $WhitelabelStateCopyWith(
          WhitelabelState value, $Res Function(WhitelabelState) then) =
      _$WhitelabelStateCopyWithImpl<$Res, WhitelabelState>;
  @useResult
  $Res call({Whitelabel whitelabel, WhitelabelStatus whitelabelStatus});

  $WhitelabelStatusCopyWith<$Res> get whitelabelStatus;
}

/// @nodoc
class _$WhitelabelStateCopyWithImpl<$Res, $Val extends WhitelabelState>
    implements $WhitelabelStateCopyWith<$Res> {
  _$WhitelabelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WhitelabelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whitelabel = null,
    Object? whitelabelStatus = null,
  }) {
    return _then(_value.copyWith(
      whitelabel: null == whitelabel
          ? _value.whitelabel
          : whitelabel // ignore: cast_nullable_to_non_nullable
              as Whitelabel,
      whitelabelStatus: null == whitelabelStatus
          ? _value.whitelabelStatus
          : whitelabelStatus // ignore: cast_nullable_to_non_nullable
              as WhitelabelStatus,
    ) as $Val);
  }

  /// Create a copy of WhitelabelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WhitelabelStatusCopyWith<$Res> get whitelabelStatus {
    return $WhitelabelStatusCopyWith<$Res>(_value.whitelabelStatus, (value) {
      return _then(_value.copyWith(whitelabelStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WhitelabelStateImplCopyWith<$Res>
    implements $WhitelabelStateCopyWith<$Res> {
  factory _$$WhitelabelStateImplCopyWith(_$WhitelabelStateImpl value,
          $Res Function(_$WhitelabelStateImpl) then) =
      __$$WhitelabelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Whitelabel whitelabel, WhitelabelStatus whitelabelStatus});

  @override
  $WhitelabelStatusCopyWith<$Res> get whitelabelStatus;
}

/// @nodoc
class __$$WhitelabelStateImplCopyWithImpl<$Res>
    extends _$WhitelabelStateCopyWithImpl<$Res, _$WhitelabelStateImpl>
    implements _$$WhitelabelStateImplCopyWith<$Res> {
  __$$WhitelabelStateImplCopyWithImpl(
      _$WhitelabelStateImpl _value, $Res Function(_$WhitelabelStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhitelabelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whitelabel = null,
    Object? whitelabelStatus = null,
  }) {
    return _then(_$WhitelabelStateImpl(
      whitelabel: null == whitelabel
          ? _value.whitelabel
          : whitelabel // ignore: cast_nullable_to_non_nullable
              as Whitelabel,
      whitelabelStatus: null == whitelabelStatus
          ? _value.whitelabelStatus
          : whitelabelStatus // ignore: cast_nullable_to_non_nullable
              as WhitelabelStatus,
    ));
  }
}

/// @nodoc

class _$WhitelabelStateImpl
    with DiagnosticableTreeMixin
    implements _WhitelabelState {
  const _$WhitelabelStateImpl(
      {this.whitelabel = Whitelabel.empty,
      this.whitelabelStatus = const _Initial()});

  @override
  @JsonKey()
  final Whitelabel whitelabel;
  @override
  @JsonKey()
  final WhitelabelStatus whitelabelStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WhitelabelState(whitelabel: $whitelabel, whitelabelStatus: $whitelabelStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WhitelabelState'))
      ..add(DiagnosticsProperty('whitelabel', whitelabel))
      ..add(DiagnosticsProperty('whitelabelStatus', whitelabelStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhitelabelStateImpl &&
            (identical(other.whitelabel, whitelabel) ||
                other.whitelabel == whitelabel) &&
            (identical(other.whitelabelStatus, whitelabelStatus) ||
                other.whitelabelStatus == whitelabelStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, whitelabel, whitelabelStatus);

  /// Create a copy of WhitelabelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WhitelabelStateImplCopyWith<_$WhitelabelStateImpl> get copyWith =>
      __$$WhitelabelStateImplCopyWithImpl<_$WhitelabelStateImpl>(
          this, _$identity);
}

abstract class _WhitelabelState implements WhitelabelState {
  const factory _WhitelabelState(
      {final Whitelabel whitelabel,
      final WhitelabelStatus whitelabelStatus}) = _$WhitelabelStateImpl;

  @override
  Whitelabel get whitelabel;
  @override
  WhitelabelStatus get whitelabelStatus;

  /// Create a copy of WhitelabelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WhitelabelStateImplCopyWith<_$WhitelabelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WhitelabelStatus {
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
abstract class $WhitelabelStatusCopyWith<$Res> {
  factory $WhitelabelStatusCopyWith(
          WhitelabelStatus value, $Res Function(WhitelabelStatus) then) =
      _$WhitelabelStatusCopyWithImpl<$Res, WhitelabelStatus>;
}

/// @nodoc
class _$WhitelabelStatusCopyWithImpl<$Res, $Val extends WhitelabelStatus>
    implements $WhitelabelStatusCopyWith<$Res> {
  _$WhitelabelStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WhitelabelStatus
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
    extends _$WhitelabelStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhitelabelStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WhitelabelStatus.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'WhitelabelStatus.initial'));
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

abstract class _Initial implements WhitelabelStatus {
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
    extends _$WhitelabelStatusCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhitelabelStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WhitelabelStatus.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'WhitelabelStatus.loading'));
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

abstract class _Loading implements WhitelabelStatus {
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
    extends _$WhitelabelStatusCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhitelabelStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements _Success {
  const _$SuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WhitelabelStatus.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'WhitelabelStatus.success'));
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

abstract class _Success implements WhitelabelStatus {
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
    extends _$WhitelabelStatusCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of WhitelabelStatus
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

  /// Create a copy of WhitelabelStatus
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

class _$FailureImpl with DiagnosticableTreeMixin implements _Failure {
  const _$FailureImpl(this.error);

  @override
  final MAError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WhitelabelStatus.failure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WhitelabelStatus.failure'))
      ..add(DiagnosticsProperty('error', error));
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

  /// Create a copy of WhitelabelStatus
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

abstract class _Failure implements WhitelabelStatus {
  const factory _Failure(final MAError error) = _$FailureImpl;

  MAError get error;

  /// Create a copy of WhitelabelStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
