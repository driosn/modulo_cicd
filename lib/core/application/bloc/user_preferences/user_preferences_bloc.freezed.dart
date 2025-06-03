// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preferences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPreferencesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLanguage,
    required TResult Function(Language selectedLanguage,
            bool setStorageLanguage, VoidCallback onLanguageSet)
        setLanguage,
    required TResult Function() restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLanguage,
    TResult? Function(Language selectedLanguage, bool setStorageLanguage,
            VoidCallback onLanguageSet)?
        setLanguage,
    TResult? Function()? restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLanguage,
    TResult Function(Language selectedLanguage, bool setStorageLanguage,
            VoidCallback onLanguageSet)?
        setLanguage,
    TResult Function()? restart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPreferencesEventLoadLanguage value)
        loadLanguage,
    required TResult Function(UserPreferencesEventSetLanguage value)
        setLanguage,
    required TResult Function(UserPreferencesEventRestart value) restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserPreferencesEventLoadLanguage value)? loadLanguage,
    TResult? Function(UserPreferencesEventSetLanguage value)? setLanguage,
    TResult? Function(UserPreferencesEventRestart value)? restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPreferencesEventLoadLanguage value)? loadLanguage,
    TResult Function(UserPreferencesEventSetLanguage value)? setLanguage,
    TResult Function(UserPreferencesEventRestart value)? restart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferencesEventCopyWith<$Res> {
  factory $UserPreferencesEventCopyWith(UserPreferencesEvent value,
          $Res Function(UserPreferencesEvent) then) =
      _$UserPreferencesEventCopyWithImpl<$Res, UserPreferencesEvent>;
}

/// @nodoc
class _$UserPreferencesEventCopyWithImpl<$Res,
        $Val extends UserPreferencesEvent>
    implements $UserPreferencesEventCopyWith<$Res> {
  _$UserPreferencesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserPreferencesEventLoadLanguageImplCopyWith<$Res> {
  factory _$$UserPreferencesEventLoadLanguageImplCopyWith(
          _$UserPreferencesEventLoadLanguageImpl value,
          $Res Function(_$UserPreferencesEventLoadLanguageImpl) then) =
      __$$UserPreferencesEventLoadLanguageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserPreferencesEventLoadLanguageImplCopyWithImpl<$Res>
    extends _$UserPreferencesEventCopyWithImpl<$Res,
        _$UserPreferencesEventLoadLanguageImpl>
    implements _$$UserPreferencesEventLoadLanguageImplCopyWith<$Res> {
  __$$UserPreferencesEventLoadLanguageImplCopyWithImpl(
      _$UserPreferencesEventLoadLanguageImpl _value,
      $Res Function(_$UserPreferencesEventLoadLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserPreferencesEventLoadLanguageImpl
    with DiagnosticableTreeMixin
    implements UserPreferencesEventLoadLanguage {
  const _$UserPreferencesEventLoadLanguageImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserPreferencesEvent.loadLanguage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'UserPreferencesEvent.loadLanguage'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreferencesEventLoadLanguageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLanguage,
    required TResult Function(Language selectedLanguage,
            bool setStorageLanguage, VoidCallback onLanguageSet)
        setLanguage,
    required TResult Function() restart,
  }) {
    return loadLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLanguage,
    TResult? Function(Language selectedLanguage, bool setStorageLanguage,
            VoidCallback onLanguageSet)?
        setLanguage,
    TResult? Function()? restart,
  }) {
    return loadLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLanguage,
    TResult Function(Language selectedLanguage, bool setStorageLanguage,
            VoidCallback onLanguageSet)?
        setLanguage,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (loadLanguage != null) {
      return loadLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPreferencesEventLoadLanguage value)
        loadLanguage,
    required TResult Function(UserPreferencesEventSetLanguage value)
        setLanguage,
    required TResult Function(UserPreferencesEventRestart value) restart,
  }) {
    return loadLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserPreferencesEventLoadLanguage value)? loadLanguage,
    TResult? Function(UserPreferencesEventSetLanguage value)? setLanguage,
    TResult? Function(UserPreferencesEventRestart value)? restart,
  }) {
    return loadLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPreferencesEventLoadLanguage value)? loadLanguage,
    TResult Function(UserPreferencesEventSetLanguage value)? setLanguage,
    TResult Function(UserPreferencesEventRestart value)? restart,
    required TResult orElse(),
  }) {
    if (loadLanguage != null) {
      return loadLanguage(this);
    }
    return orElse();
  }
}

abstract class UserPreferencesEventLoadLanguage
    implements UserPreferencesEvent {
  const factory UserPreferencesEventLoadLanguage() =
      _$UserPreferencesEventLoadLanguageImpl;
}

/// @nodoc
abstract class _$$UserPreferencesEventSetLanguageImplCopyWith<$Res> {
  factory _$$UserPreferencesEventSetLanguageImplCopyWith(
          _$UserPreferencesEventSetLanguageImpl value,
          $Res Function(_$UserPreferencesEventSetLanguageImpl) then) =
      __$$UserPreferencesEventSetLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Language selectedLanguage,
      bool setStorageLanguage,
      VoidCallback onLanguageSet});
}

/// @nodoc
class __$$UserPreferencesEventSetLanguageImplCopyWithImpl<$Res>
    extends _$UserPreferencesEventCopyWithImpl<$Res,
        _$UserPreferencesEventSetLanguageImpl>
    implements _$$UserPreferencesEventSetLanguageImplCopyWith<$Res> {
  __$$UserPreferencesEventSetLanguageImplCopyWithImpl(
      _$UserPreferencesEventSetLanguageImpl _value,
      $Res Function(_$UserPreferencesEventSetLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLanguage = null,
    Object? setStorageLanguage = null,
    Object? onLanguageSet = null,
  }) {
    return _then(_$UserPreferencesEventSetLanguageImpl(
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      setStorageLanguage: null == setStorageLanguage
          ? _value.setStorageLanguage
          : setStorageLanguage // ignore: cast_nullable_to_non_nullable
              as bool,
      onLanguageSet: null == onLanguageSet
          ? _value.onLanguageSet
          : onLanguageSet // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$UserPreferencesEventSetLanguageImpl
    with DiagnosticableTreeMixin
    implements UserPreferencesEventSetLanguage {
  const _$UserPreferencesEventSetLanguageImpl(
      {required this.selectedLanguage,
      required this.setStorageLanguage,
      required this.onLanguageSet});

  @override
  final Language selectedLanguage;
  @override
  final bool setStorageLanguage;
  @override
  final VoidCallback onLanguageSet;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserPreferencesEvent.setLanguage(selectedLanguage: $selectedLanguage, setStorageLanguage: $setStorageLanguage, onLanguageSet: $onLanguageSet)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserPreferencesEvent.setLanguage'))
      ..add(DiagnosticsProperty('selectedLanguage', selectedLanguage))
      ..add(DiagnosticsProperty('setStorageLanguage', setStorageLanguage))
      ..add(DiagnosticsProperty('onLanguageSet', onLanguageSet));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreferencesEventSetLanguageImpl &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage) &&
            (identical(other.setStorageLanguage, setStorageLanguage) ||
                other.setStorageLanguage == setStorageLanguage) &&
            (identical(other.onLanguageSet, onLanguageSet) ||
                other.onLanguageSet == onLanguageSet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedLanguage, setStorageLanguage, onLanguageSet);

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPreferencesEventSetLanguageImplCopyWith<
          _$UserPreferencesEventSetLanguageImpl>
      get copyWith => __$$UserPreferencesEventSetLanguageImplCopyWithImpl<
          _$UserPreferencesEventSetLanguageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLanguage,
    required TResult Function(Language selectedLanguage,
            bool setStorageLanguage, VoidCallback onLanguageSet)
        setLanguage,
    required TResult Function() restart,
  }) {
    return setLanguage(selectedLanguage, setStorageLanguage, onLanguageSet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLanguage,
    TResult? Function(Language selectedLanguage, bool setStorageLanguage,
            VoidCallback onLanguageSet)?
        setLanguage,
    TResult? Function()? restart,
  }) {
    return setLanguage?.call(
        selectedLanguage, setStorageLanguage, onLanguageSet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLanguage,
    TResult Function(Language selectedLanguage, bool setStorageLanguage,
            VoidCallback onLanguageSet)?
        setLanguage,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (setLanguage != null) {
      return setLanguage(selectedLanguage, setStorageLanguage, onLanguageSet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPreferencesEventLoadLanguage value)
        loadLanguage,
    required TResult Function(UserPreferencesEventSetLanguage value)
        setLanguage,
    required TResult Function(UserPreferencesEventRestart value) restart,
  }) {
    return setLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserPreferencesEventLoadLanguage value)? loadLanguage,
    TResult? Function(UserPreferencesEventSetLanguage value)? setLanguage,
    TResult? Function(UserPreferencesEventRestart value)? restart,
  }) {
    return setLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPreferencesEventLoadLanguage value)? loadLanguage,
    TResult Function(UserPreferencesEventSetLanguage value)? setLanguage,
    TResult Function(UserPreferencesEventRestart value)? restart,
    required TResult orElse(),
  }) {
    if (setLanguage != null) {
      return setLanguage(this);
    }
    return orElse();
  }
}

abstract class UserPreferencesEventSetLanguage implements UserPreferencesEvent {
  const factory UserPreferencesEventSetLanguage(
          {required final Language selectedLanguage,
          required final bool setStorageLanguage,
          required final VoidCallback onLanguageSet}) =
      _$UserPreferencesEventSetLanguageImpl;

  Language get selectedLanguage;
  bool get setStorageLanguage;
  VoidCallback get onLanguageSet;

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPreferencesEventSetLanguageImplCopyWith<
          _$UserPreferencesEventSetLanguageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserPreferencesEventRestartImplCopyWith<$Res> {
  factory _$$UserPreferencesEventRestartImplCopyWith(
          _$UserPreferencesEventRestartImpl value,
          $Res Function(_$UserPreferencesEventRestartImpl) then) =
      __$$UserPreferencesEventRestartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserPreferencesEventRestartImplCopyWithImpl<$Res>
    extends _$UserPreferencesEventCopyWithImpl<$Res,
        _$UserPreferencesEventRestartImpl>
    implements _$$UserPreferencesEventRestartImplCopyWith<$Res> {
  __$$UserPreferencesEventRestartImplCopyWithImpl(
      _$UserPreferencesEventRestartImpl _value,
      $Res Function(_$UserPreferencesEventRestartImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPreferencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserPreferencesEventRestartImpl
    with DiagnosticableTreeMixin
    implements UserPreferencesEventRestart {
  const _$UserPreferencesEventRestartImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserPreferencesEvent.restart()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserPreferencesEvent.restart'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreferencesEventRestartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadLanguage,
    required TResult Function(Language selectedLanguage,
            bool setStorageLanguage, VoidCallback onLanguageSet)
        setLanguage,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadLanguage,
    TResult? Function(Language selectedLanguage, bool setStorageLanguage,
            VoidCallback onLanguageSet)?
        setLanguage,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadLanguage,
    TResult Function(Language selectedLanguage, bool setStorageLanguage,
            VoidCallback onLanguageSet)?
        setLanguage,
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
    required TResult Function(UserPreferencesEventLoadLanguage value)
        loadLanguage,
    required TResult Function(UserPreferencesEventSetLanguage value)
        setLanguage,
    required TResult Function(UserPreferencesEventRestart value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserPreferencesEventLoadLanguage value)? loadLanguage,
    TResult? Function(UserPreferencesEventSetLanguage value)? setLanguage,
    TResult? Function(UserPreferencesEventRestart value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPreferencesEventLoadLanguage value)? loadLanguage,
    TResult Function(UserPreferencesEventSetLanguage value)? setLanguage,
    TResult Function(UserPreferencesEventRestart value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class UserPreferencesEventRestart implements UserPreferencesEvent {
  const factory UserPreferencesEventRestart() =
      _$UserPreferencesEventRestartImpl;
}

/// @nodoc
mixin _$UserPreferencesState {
  Language get selectedLanguage => throw _privateConstructorUsedError;
  LanguageSelectionStatus get languageSelectionStatus =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPreferencesStateCopyWith<UserPreferencesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreferencesStateCopyWith<$Res> {
  factory $UserPreferencesStateCopyWith(UserPreferencesState value,
          $Res Function(UserPreferencesState) then) =
      _$UserPreferencesStateCopyWithImpl<$Res, UserPreferencesState>;
  @useResult
  $Res call(
      {Language selectedLanguage,
      LanguageSelectionStatus languageSelectionStatus});
}

/// @nodoc
class _$UserPreferencesStateCopyWithImpl<$Res,
        $Val extends UserPreferencesState>
    implements $UserPreferencesStateCopyWith<$Res> {
  _$UserPreferencesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLanguage = null,
    Object? languageSelectionStatus = null,
  }) {
    return _then(_value.copyWith(
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      languageSelectionStatus: null == languageSelectionStatus
          ? _value.languageSelectionStatus
          : languageSelectionStatus // ignore: cast_nullable_to_non_nullable
              as LanguageSelectionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPreferencesStateImplCopyWith<$Res>
    implements $UserPreferencesStateCopyWith<$Res> {
  factory _$$UserPreferencesStateImplCopyWith(_$UserPreferencesStateImpl value,
          $Res Function(_$UserPreferencesStateImpl) then) =
      __$$UserPreferencesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Language selectedLanguage,
      LanguageSelectionStatus languageSelectionStatus});
}

/// @nodoc
class __$$UserPreferencesStateImplCopyWithImpl<$Res>
    extends _$UserPreferencesStateCopyWithImpl<$Res, _$UserPreferencesStateImpl>
    implements _$$UserPreferencesStateImplCopyWith<$Res> {
  __$$UserPreferencesStateImplCopyWithImpl(_$UserPreferencesStateImpl _value,
      $Res Function(_$UserPreferencesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLanguage = null,
    Object? languageSelectionStatus = null,
  }) {
    return _then(_$UserPreferencesStateImpl(
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      languageSelectionStatus: null == languageSelectionStatus
          ? _value.languageSelectionStatus
          : languageSelectionStatus // ignore: cast_nullable_to_non_nullable
              as LanguageSelectionStatus,
    ));
  }
}

/// @nodoc

class _$UserPreferencesStateImpl
    with DiagnosticableTreeMixin
    implements _UserPreferencesState {
  const _$UserPreferencesStateImpl(
      {this.selectedLanguage = Language.english,
      this.languageSelectionStatus = LanguageSelectionStatus.initial});

  @override
  @JsonKey()
  final Language selectedLanguage;
  @override
  @JsonKey()
  final LanguageSelectionStatus languageSelectionStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserPreferencesState(selectedLanguage: $selectedLanguage, languageSelectionStatus: $languageSelectionStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserPreferencesState'))
      ..add(DiagnosticsProperty('selectedLanguage', selectedLanguage))
      ..add(DiagnosticsProperty(
          'languageSelectionStatus', languageSelectionStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreferencesStateImpl &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage) &&
            (identical(
                    other.languageSelectionStatus, languageSelectionStatus) ||
                other.languageSelectionStatus == languageSelectionStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedLanguage, languageSelectionStatus);

  /// Create a copy of UserPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPreferencesStateImplCopyWith<_$UserPreferencesStateImpl>
      get copyWith =>
          __$$UserPreferencesStateImplCopyWithImpl<_$UserPreferencesStateImpl>(
              this, _$identity);
}

abstract class _UserPreferencesState implements UserPreferencesState {
  const factory _UserPreferencesState(
          {final Language selectedLanguage,
          final LanguageSelectionStatus languageSelectionStatus}) =
      _$UserPreferencesStateImpl;

  @override
  Language get selectedLanguage;
  @override
  LanguageSelectionStatus get languageSelectionStatus;

  /// Create a copy of UserPreferencesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPreferencesStateImplCopyWith<_$UserPreferencesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
