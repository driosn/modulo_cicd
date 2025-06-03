// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_preference_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguagePreferenceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Language selectedLanguage) setSelectedLanguage,
    required TResult Function() setIsSelectedLanguage,
    required TResult Function(String residentUserId) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Language selectedLanguage)? setSelectedLanguage,
    TResult? Function()? setIsSelectedLanguage,
    TResult? Function(String residentUserId)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Language selectedLanguage)? setSelectedLanguage,
    TResult Function()? setIsSelectedLanguage,
    TResult Function(String residentUserId)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetSelectedLanguage value) setSelectedLanguage,
    required TResult Function(_SetIsSelectedLanguage value)
        setIsSelectedLanguage,
    required TResult Function(_UpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetSelectedLanguage value)? setSelectedLanguage,
    TResult? Function(_SetIsSelectedLanguage value)? setIsSelectedLanguage,
    TResult? Function(_UpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetSelectedLanguage value)? setSelectedLanguage,
    TResult Function(_SetIsSelectedLanguage value)? setIsSelectedLanguage,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagePreferenceEventCopyWith<$Res> {
  factory $LanguagePreferenceEventCopyWith(LanguagePreferenceEvent value,
          $Res Function(LanguagePreferenceEvent) then) =
      _$LanguagePreferenceEventCopyWithImpl<$Res, LanguagePreferenceEvent>;
}

/// @nodoc
class _$LanguagePreferenceEventCopyWithImpl<$Res,
        $Val extends LanguagePreferenceEvent>
    implements $LanguagePreferenceEventCopyWith<$Res> {
  _$LanguagePreferenceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguagePreferenceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetSelectedLanguageImplCopyWith<$Res> {
  factory _$$SetSelectedLanguageImplCopyWith(_$SetSelectedLanguageImpl value,
          $Res Function(_$SetSelectedLanguageImpl) then) =
      __$$SetSelectedLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Language selectedLanguage});
}

/// @nodoc
class __$$SetSelectedLanguageImplCopyWithImpl<$Res>
    extends _$LanguagePreferenceEventCopyWithImpl<$Res,
        _$SetSelectedLanguageImpl>
    implements _$$SetSelectedLanguageImplCopyWith<$Res> {
  __$$SetSelectedLanguageImplCopyWithImpl(_$SetSelectedLanguageImpl _value,
      $Res Function(_$SetSelectedLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguagePreferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLanguage = null,
  }) {
    return _then(_$SetSelectedLanguageImpl(
      null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc

class _$SetSelectedLanguageImpl implements _SetSelectedLanguage {
  const _$SetSelectedLanguageImpl(this.selectedLanguage);

  @override
  final Language selectedLanguage;

  @override
  String toString() {
    return 'LanguagePreferenceEvent.setSelectedLanguage(selectedLanguage: $selectedLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedLanguageImpl &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLanguage);

  /// Create a copy of LanguagePreferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedLanguageImplCopyWith<_$SetSelectedLanguageImpl> get copyWith =>
      __$$SetSelectedLanguageImplCopyWithImpl<_$SetSelectedLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Language selectedLanguage) setSelectedLanguage,
    required TResult Function() setIsSelectedLanguage,
    required TResult Function(String residentUserId) update,
  }) {
    return setSelectedLanguage(selectedLanguage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Language selectedLanguage)? setSelectedLanguage,
    TResult? Function()? setIsSelectedLanguage,
    TResult? Function(String residentUserId)? update,
  }) {
    return setSelectedLanguage?.call(selectedLanguage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Language selectedLanguage)? setSelectedLanguage,
    TResult Function()? setIsSelectedLanguage,
    TResult Function(String residentUserId)? update,
    required TResult orElse(),
  }) {
    if (setSelectedLanguage != null) {
      return setSelectedLanguage(selectedLanguage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetSelectedLanguage value) setSelectedLanguage,
    required TResult Function(_SetIsSelectedLanguage value)
        setIsSelectedLanguage,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return setSelectedLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetSelectedLanguage value)? setSelectedLanguage,
    TResult? Function(_SetIsSelectedLanguage value)? setIsSelectedLanguage,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return setSelectedLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetSelectedLanguage value)? setSelectedLanguage,
    TResult Function(_SetIsSelectedLanguage value)? setIsSelectedLanguage,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (setSelectedLanguage != null) {
      return setSelectedLanguage(this);
    }
    return orElse();
  }
}

abstract class _SetSelectedLanguage implements LanguagePreferenceEvent {
  const factory _SetSelectedLanguage(final Language selectedLanguage) =
      _$SetSelectedLanguageImpl;

  Language get selectedLanguage;

  /// Create a copy of LanguagePreferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetSelectedLanguageImplCopyWith<_$SetSelectedLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetIsSelectedLanguageImplCopyWith<$Res> {
  factory _$$SetIsSelectedLanguageImplCopyWith(
          _$SetIsSelectedLanguageImpl value,
          $Res Function(_$SetIsSelectedLanguageImpl) then) =
      __$$SetIsSelectedLanguageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetIsSelectedLanguageImplCopyWithImpl<$Res>
    extends _$LanguagePreferenceEventCopyWithImpl<$Res,
        _$SetIsSelectedLanguageImpl>
    implements _$$SetIsSelectedLanguageImplCopyWith<$Res> {
  __$$SetIsSelectedLanguageImplCopyWithImpl(_$SetIsSelectedLanguageImpl _value,
      $Res Function(_$SetIsSelectedLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguagePreferenceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetIsSelectedLanguageImpl implements _SetIsSelectedLanguage {
  const _$SetIsSelectedLanguageImpl();

  @override
  String toString() {
    return 'LanguagePreferenceEvent.setIsSelectedLanguage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIsSelectedLanguageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Language selectedLanguage) setSelectedLanguage,
    required TResult Function() setIsSelectedLanguage,
    required TResult Function(String residentUserId) update,
  }) {
    return setIsSelectedLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Language selectedLanguage)? setSelectedLanguage,
    TResult? Function()? setIsSelectedLanguage,
    TResult? Function(String residentUserId)? update,
  }) {
    return setIsSelectedLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Language selectedLanguage)? setSelectedLanguage,
    TResult Function()? setIsSelectedLanguage,
    TResult Function(String residentUserId)? update,
    required TResult orElse(),
  }) {
    if (setIsSelectedLanguage != null) {
      return setIsSelectedLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetSelectedLanguage value) setSelectedLanguage,
    required TResult Function(_SetIsSelectedLanguage value)
        setIsSelectedLanguage,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return setIsSelectedLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetSelectedLanguage value)? setSelectedLanguage,
    TResult? Function(_SetIsSelectedLanguage value)? setIsSelectedLanguage,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return setIsSelectedLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetSelectedLanguage value)? setSelectedLanguage,
    TResult Function(_SetIsSelectedLanguage value)? setIsSelectedLanguage,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (setIsSelectedLanguage != null) {
      return setIsSelectedLanguage(this);
    }
    return orElse();
  }
}

abstract class _SetIsSelectedLanguage implements LanguagePreferenceEvent {
  const factory _SetIsSelectedLanguage() = _$SetIsSelectedLanguageImpl;
}

/// @nodoc
abstract class _$$UpdateEventImplCopyWith<$Res> {
  factory _$$UpdateEventImplCopyWith(
          _$UpdateEventImpl value, $Res Function(_$UpdateEventImpl) then) =
      __$$UpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String residentUserId});
}

/// @nodoc
class __$$UpdateEventImplCopyWithImpl<$Res>
    extends _$LanguagePreferenceEventCopyWithImpl<$Res, _$UpdateEventImpl>
    implements _$$UpdateEventImplCopyWith<$Res> {
  __$$UpdateEventImplCopyWithImpl(
      _$UpdateEventImpl _value, $Res Function(_$UpdateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguagePreferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentUserId = null,
  }) {
    return _then(_$UpdateEventImpl(
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateEventImpl implements _UpdateEvent {
  const _$UpdateEventImpl({required this.residentUserId});

  @override
  final String residentUserId;

  @override
  String toString() {
    return 'LanguagePreferenceEvent.update(residentUserId: $residentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEventImpl &&
            (identical(other.residentUserId, residentUserId) ||
                other.residentUserId == residentUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, residentUserId);

  /// Create a copy of LanguagePreferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      __$$UpdateEventImplCopyWithImpl<_$UpdateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Language selectedLanguage) setSelectedLanguage,
    required TResult Function() setIsSelectedLanguage,
    required TResult Function(String residentUserId) update,
  }) {
    return update(residentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Language selectedLanguage)? setSelectedLanguage,
    TResult? Function()? setIsSelectedLanguage,
    TResult? Function(String residentUserId)? update,
  }) {
    return update?.call(residentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Language selectedLanguage)? setSelectedLanguage,
    TResult Function()? setIsSelectedLanguage,
    TResult Function(String residentUserId)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(residentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetSelectedLanguage value) setSelectedLanguage,
    required TResult Function(_SetIsSelectedLanguage value)
        setIsSelectedLanguage,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetSelectedLanguage value)? setSelectedLanguage,
    TResult? Function(_SetIsSelectedLanguage value)? setIsSelectedLanguage,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetSelectedLanguage value)? setSelectedLanguage,
    TResult Function(_SetIsSelectedLanguage value)? setIsSelectedLanguage,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent implements LanguagePreferenceEvent {
  const factory _UpdateEvent({required final String residentUserId}) =
      _$UpdateEventImpl;

  String get residentUserId;

  /// Create a copy of LanguagePreferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LanguagePreferenceState {
  Language get selectedLanguage => throw _privateConstructorUsedError;
  LanguagePreferenceUpdateStatus get updateStatus =>
      throw _privateConstructorUsedError;
  bool get isLanguageSelected => throw _privateConstructorUsedError;

  /// Create a copy of LanguagePreferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguagePreferenceStateCopyWith<LanguagePreferenceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagePreferenceStateCopyWith<$Res> {
  factory $LanguagePreferenceStateCopyWith(LanguagePreferenceState value,
          $Res Function(LanguagePreferenceState) then) =
      _$LanguagePreferenceStateCopyWithImpl<$Res, LanguagePreferenceState>;
  @useResult
  $Res call(
      {Language selectedLanguage,
      LanguagePreferenceUpdateStatus updateStatus,
      bool isLanguageSelected});

  $LanguagePreferenceUpdateStatusCopyWith<$Res> get updateStatus;
}

/// @nodoc
class _$LanguagePreferenceStateCopyWithImpl<$Res,
        $Val extends LanguagePreferenceState>
    implements $LanguagePreferenceStateCopyWith<$Res> {
  _$LanguagePreferenceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguagePreferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLanguage = null,
    Object? updateStatus = null,
    Object? isLanguageSelected = null,
  }) {
    return _then(_value.copyWith(
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      updateStatus: null == updateStatus
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as LanguagePreferenceUpdateStatus,
      isLanguageSelected: null == isLanguageSelected
          ? _value.isLanguageSelected
          : isLanguageSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of LanguagePreferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguagePreferenceUpdateStatusCopyWith<$Res> get updateStatus {
    return $LanguagePreferenceUpdateStatusCopyWith<$Res>(_value.updateStatus,
        (value) {
      return _then(_value.copyWith(updateStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LanguagePreferenceStateImplCopyWith<$Res>
    implements $LanguagePreferenceStateCopyWith<$Res> {
  factory _$$LanguagePreferenceStateImplCopyWith(
          _$LanguagePreferenceStateImpl value,
          $Res Function(_$LanguagePreferenceStateImpl) then) =
      __$$LanguagePreferenceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Language selectedLanguage,
      LanguagePreferenceUpdateStatus updateStatus,
      bool isLanguageSelected});

  @override
  $LanguagePreferenceUpdateStatusCopyWith<$Res> get updateStatus;
}

/// @nodoc
class __$$LanguagePreferenceStateImplCopyWithImpl<$Res>
    extends _$LanguagePreferenceStateCopyWithImpl<$Res,
        _$LanguagePreferenceStateImpl>
    implements _$$LanguagePreferenceStateImplCopyWith<$Res> {
  __$$LanguagePreferenceStateImplCopyWithImpl(
      _$LanguagePreferenceStateImpl _value,
      $Res Function(_$LanguagePreferenceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguagePreferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLanguage = null,
    Object? updateStatus = null,
    Object? isLanguageSelected = null,
  }) {
    return _then(_$LanguagePreferenceStateImpl(
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      updateStatus: null == updateStatus
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as LanguagePreferenceUpdateStatus,
      isLanguageSelected: null == isLanguageSelected
          ? _value.isLanguageSelected
          : isLanguageSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LanguagePreferenceStateImpl implements _LanguagePreferenceState {
  const _$LanguagePreferenceStateImpl(
      {this.selectedLanguage = Language.english,
      this.updateStatus = const _Initial(),
      this.isLanguageSelected = false});

  @override
  @JsonKey()
  final Language selectedLanguage;
  @override
  @JsonKey()
  final LanguagePreferenceUpdateStatus updateStatus;
  @override
  @JsonKey()
  final bool isLanguageSelected;

  @override
  String toString() {
    return 'LanguagePreferenceState(selectedLanguage: $selectedLanguage, updateStatus: $updateStatus, isLanguageSelected: $isLanguageSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguagePreferenceStateImpl &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage) &&
            (identical(other.updateStatus, updateStatus) ||
                other.updateStatus == updateStatus) &&
            (identical(other.isLanguageSelected, isLanguageSelected) ||
                other.isLanguageSelected == isLanguageSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedLanguage, updateStatus, isLanguageSelected);

  /// Create a copy of LanguagePreferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguagePreferenceStateImplCopyWith<_$LanguagePreferenceStateImpl>
      get copyWith => __$$LanguagePreferenceStateImplCopyWithImpl<
          _$LanguagePreferenceStateImpl>(this, _$identity);
}

abstract class _LanguagePreferenceState implements LanguagePreferenceState {
  const factory _LanguagePreferenceState(
      {final Language selectedLanguage,
      final LanguagePreferenceUpdateStatus updateStatus,
      final bool isLanguageSelected}) = _$LanguagePreferenceStateImpl;

  @override
  Language get selectedLanguage;
  @override
  LanguagePreferenceUpdateStatus get updateStatus;
  @override
  bool get isLanguageSelected;

  /// Create a copy of LanguagePreferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguagePreferenceStateImplCopyWith<_$LanguagePreferenceStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LanguagePreferenceUpdateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updating,
    required TResult Function() success,
    required TResult Function(MAError error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
    TResult Function()? success,
    TResult Function(MAError error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updating value)? updating,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updating value)? updating,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagePreferenceUpdateStatusCopyWith<$Res> {
  factory $LanguagePreferenceUpdateStatusCopyWith(
          LanguagePreferenceUpdateStatus value,
          $Res Function(LanguagePreferenceUpdateStatus) then) =
      _$LanguagePreferenceUpdateStatusCopyWithImpl<$Res,
          LanguagePreferenceUpdateStatus>;
}

/// @nodoc
class _$LanguagePreferenceUpdateStatusCopyWithImpl<$Res,
        $Val extends LanguagePreferenceUpdateStatus>
    implements $LanguagePreferenceUpdateStatusCopyWith<$Res> {
  _$LanguagePreferenceUpdateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguagePreferenceUpdateStatus
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
    extends _$LanguagePreferenceUpdateStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguagePreferenceUpdateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LanguagePreferenceUpdateStatus.initial()';
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
    required TResult Function() updating,
    required TResult Function() success,
    required TResult Function(MAError error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
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
    required TResult Function(_Updating value) updating,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updating value)? updating,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updating value)? updating,
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

abstract class _Initial implements LanguagePreferenceUpdateStatus {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UpdatingImplCopyWith<$Res> {
  factory _$$UpdatingImplCopyWith(
          _$UpdatingImpl value, $Res Function(_$UpdatingImpl) then) =
      __$$UpdatingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatingImplCopyWithImpl<$Res>
    extends _$LanguagePreferenceUpdateStatusCopyWithImpl<$Res, _$UpdatingImpl>
    implements _$$UpdatingImplCopyWith<$Res> {
  __$$UpdatingImplCopyWithImpl(
      _$UpdatingImpl _value, $Res Function(_$UpdatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguagePreferenceUpdateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdatingImpl implements _Updating {
  const _$UpdatingImpl();

  @override
  String toString() {
    return 'LanguagePreferenceUpdateStatus.updating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updating,
    required TResult Function() success,
    required TResult Function(MAError error) failure,
  }) {
    return updating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) {
    return updating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
    TResult Function()? success,
    TResult Function(MAError error)? failure,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updating value)? updating,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updating value)? updating,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class _Updating implements LanguagePreferenceUpdateStatus {
  const factory _Updating() = _$UpdatingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LanguagePreferenceUpdateStatusCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguagePreferenceUpdateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'LanguagePreferenceUpdateStatus.success()';
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
    required TResult Function() updating,
    required TResult Function() success,
    required TResult Function(MAError error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
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
    required TResult Function(_Updating value) updating,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updating value)? updating,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updating value)? updating,
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

abstract class _Success implements LanguagePreferenceUpdateStatus {
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
    extends _$LanguagePreferenceUpdateStatusCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguagePreferenceUpdateStatus
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

  /// Create a copy of LanguagePreferenceUpdateStatus
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
    return 'LanguagePreferenceUpdateStatus.failure(error: $error)';
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

  /// Create a copy of LanguagePreferenceUpdateStatus
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
    required TResult Function() updating,
    required TResult Function() success,
    required TResult Function(MAError error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
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
    required TResult Function(_Updating value) updating,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updating value)? updating,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updating value)? updating,
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

abstract class _Failure implements LanguagePreferenceUpdateStatus {
  const factory _Failure(final MAError error) = _$FailureImpl;

  MAError get error;

  /// Create a copy of LanguagePreferenceUpdateStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
