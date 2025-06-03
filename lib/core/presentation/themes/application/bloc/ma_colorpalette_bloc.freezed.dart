// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ma_colorpalette_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MAColorpaletteEvent {
  ColorPalette get palette => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColorPalette palette) updateColorpalette,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ColorPalette palette)? updateColorpalette,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColorPalette palette)? updateColorpalette,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateMAColorpaletteEvent value)
        updateColorpalette,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateMAColorpaletteEvent value)? updateColorpalette,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateMAColorpaletteEvent value)? updateColorpalette,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MAColorpaletteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MAColorpaletteEventCopyWith<MAColorpaletteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MAColorpaletteEventCopyWith<$Res> {
  factory $MAColorpaletteEventCopyWith(
          MAColorpaletteEvent value, $Res Function(MAColorpaletteEvent) then) =
      _$MAColorpaletteEventCopyWithImpl<$Res, MAColorpaletteEvent>;
  @useResult
  $Res call({ColorPalette palette});
}

/// @nodoc
class _$MAColorpaletteEventCopyWithImpl<$Res, $Val extends MAColorpaletteEvent>
    implements $MAColorpaletteEventCopyWith<$Res> {
  _$MAColorpaletteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MAColorpaletteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? palette = null,
  }) {
    return _then(_value.copyWith(
      palette: null == palette
          ? _value.palette
          : palette // ignore: cast_nullable_to_non_nullable
              as ColorPalette,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateMAColorpaletteEventImplCopyWith<$Res>
    implements $MAColorpaletteEventCopyWith<$Res> {
  factory _$$UpdateMAColorpaletteEventImplCopyWith(
          _$UpdateMAColorpaletteEventImpl value,
          $Res Function(_$UpdateMAColorpaletteEventImpl) then) =
      __$$UpdateMAColorpaletteEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ColorPalette palette});
}

/// @nodoc
class __$$UpdateMAColorpaletteEventImplCopyWithImpl<$Res>
    extends _$MAColorpaletteEventCopyWithImpl<$Res,
        _$UpdateMAColorpaletteEventImpl>
    implements _$$UpdateMAColorpaletteEventImplCopyWith<$Res> {
  __$$UpdateMAColorpaletteEventImplCopyWithImpl(
      _$UpdateMAColorpaletteEventImpl _value,
      $Res Function(_$UpdateMAColorpaletteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MAColorpaletteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? palette = null,
  }) {
    return _then(_$UpdateMAColorpaletteEventImpl(
      null == palette
          ? _value.palette
          : palette // ignore: cast_nullable_to_non_nullable
              as ColorPalette,
    ));
  }
}

/// @nodoc

class _$UpdateMAColorpaletteEventImpl implements _UpdateMAColorpaletteEvent {
  const _$UpdateMAColorpaletteEventImpl(this.palette);

  @override
  final ColorPalette palette;

  @override
  String toString() {
    return 'MAColorpaletteEvent.updateColorpalette(palette: $palette)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMAColorpaletteEventImpl &&
            (identical(other.palette, palette) || other.palette == palette));
  }

  @override
  int get hashCode => Object.hash(runtimeType, palette);

  /// Create a copy of MAColorpaletteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMAColorpaletteEventImplCopyWith<_$UpdateMAColorpaletteEventImpl>
      get copyWith => __$$UpdateMAColorpaletteEventImplCopyWithImpl<
          _$UpdateMAColorpaletteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColorPalette palette) updateColorpalette,
  }) {
    return updateColorpalette(palette);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ColorPalette palette)? updateColorpalette,
  }) {
    return updateColorpalette?.call(palette);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColorPalette palette)? updateColorpalette,
    required TResult orElse(),
  }) {
    if (updateColorpalette != null) {
      return updateColorpalette(palette);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateMAColorpaletteEvent value)
        updateColorpalette,
  }) {
    return updateColorpalette(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateMAColorpaletteEvent value)? updateColorpalette,
  }) {
    return updateColorpalette?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateMAColorpaletteEvent value)? updateColorpalette,
    required TResult orElse(),
  }) {
    if (updateColorpalette != null) {
      return updateColorpalette(this);
    }
    return orElse();
  }
}

abstract class _UpdateMAColorpaletteEvent implements MAColorpaletteEvent {
  const factory _UpdateMAColorpaletteEvent(final ColorPalette palette) =
      _$UpdateMAColorpaletteEventImpl;

  @override
  ColorPalette get palette;

  /// Create a copy of MAColorpaletteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMAColorpaletteEventImplCopyWith<_$UpdateMAColorpaletteEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MAColorpaletteState {
  ColorPalette get palette => throw _privateConstructorUsedError;

  /// Create a copy of MAColorpaletteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MAColorpaletteStateCopyWith<MAColorpaletteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MAColorpaletteStateCopyWith<$Res> {
  factory $MAColorpaletteStateCopyWith(
          MAColorpaletteState value, $Res Function(MAColorpaletteState) then) =
      _$MAColorpaletteStateCopyWithImpl<$Res, MAColorpaletteState>;
  @useResult
  $Res call({ColorPalette palette});
}

/// @nodoc
class _$MAColorpaletteStateCopyWithImpl<$Res, $Val extends MAColorpaletteState>
    implements $MAColorpaletteStateCopyWith<$Res> {
  _$MAColorpaletteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MAColorpaletteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? palette = null,
  }) {
    return _then(_value.copyWith(
      palette: null == palette
          ? _value.palette
          : palette // ignore: cast_nullable_to_non_nullable
              as ColorPalette,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MAColorpaletteStateImplCopyWith<$Res>
    implements $MAColorpaletteStateCopyWith<$Res> {
  factory _$$MAColorpaletteStateImplCopyWith(_$MAColorpaletteStateImpl value,
          $Res Function(_$MAColorpaletteStateImpl) then) =
      __$$MAColorpaletteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ColorPalette palette});
}

/// @nodoc
class __$$MAColorpaletteStateImplCopyWithImpl<$Res>
    extends _$MAColorpaletteStateCopyWithImpl<$Res, _$MAColorpaletteStateImpl>
    implements _$$MAColorpaletteStateImplCopyWith<$Res> {
  __$$MAColorpaletteStateImplCopyWithImpl(_$MAColorpaletteStateImpl _value,
      $Res Function(_$MAColorpaletteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MAColorpaletteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? palette = null,
  }) {
    return _then(_$MAColorpaletteStateImpl(
      palette: null == palette
          ? _value.palette
          : palette // ignore: cast_nullable_to_non_nullable
              as ColorPalette,
    ));
  }
}

/// @nodoc

class _$MAColorpaletteStateImpl implements _MAColorpaletteState {
  _$MAColorpaletteStateImpl({required this.palette});

  @override
  final ColorPalette palette;

  @override
  String toString() {
    return 'MAColorpaletteState(palette: $palette)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MAColorpaletteStateImpl &&
            (identical(other.palette, palette) || other.palette == palette));
  }

  @override
  int get hashCode => Object.hash(runtimeType, palette);

  /// Create a copy of MAColorpaletteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MAColorpaletteStateImplCopyWith<_$MAColorpaletteStateImpl> get copyWith =>
      __$$MAColorpaletteStateImplCopyWithImpl<_$MAColorpaletteStateImpl>(
          this, _$identity);
}

abstract class _MAColorpaletteState implements MAColorpaletteState {
  factory _MAColorpaletteState({required final ColorPalette palette}) =
      _$MAColorpaletteStateImpl;

  @override
  ColorPalette get palette;

  /// Create a copy of MAColorpaletteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MAColorpaletteStateImplCopyWith<_$MAColorpaletteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
