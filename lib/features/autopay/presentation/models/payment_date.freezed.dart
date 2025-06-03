// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OptionInfo _$OptionInfoFromJson(Map<String, dynamic> json) {
  return _OptionInfo.fromJson(json);
}

/// @nodoc
mixin _$OptionInfo {
  String get name => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  /// Serializes this OptionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionInfoCopyWith<OptionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionInfoCopyWith<$Res> {
  factory $OptionInfoCopyWith(
          OptionInfo value, $Res Function(OptionInfo) then) =
      _$OptionInfoCopyWithImpl<$Res, OptionInfo>;
  @useResult
  $Res call({String name, int value});
}

/// @nodoc
class _$OptionInfoCopyWithImpl<$Res, $Val extends OptionInfo>
    implements $OptionInfoCopyWith<$Res> {
  _$OptionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionInfoImplCopyWith<$Res>
    implements $OptionInfoCopyWith<$Res> {
  factory _$$OptionInfoImplCopyWith(
          _$OptionInfoImpl value, $Res Function(_$OptionInfoImpl) then) =
      __$$OptionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int value});
}

/// @nodoc
class __$$OptionInfoImplCopyWithImpl<$Res>
    extends _$OptionInfoCopyWithImpl<$Res, _$OptionInfoImpl>
    implements _$$OptionInfoImplCopyWith<$Res> {
  __$$OptionInfoImplCopyWithImpl(
      _$OptionInfoImpl _value, $Res Function(_$OptionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$OptionInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionInfoImpl implements _OptionInfo {
  const _$OptionInfoImpl({required this.name, required this.value});

  factory _$OptionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionInfoImplFromJson(json);

  @override
  final String name;
  @override
  final int value;

  @override
  String toString() {
    return 'OptionInfo(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  /// Create a copy of OptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionInfoImplCopyWith<_$OptionInfoImpl> get copyWith =>
      __$$OptionInfoImplCopyWithImpl<_$OptionInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionInfoImplToJson(
      this,
    );
  }
}

abstract class _OptionInfo implements OptionInfo {
  const factory _OptionInfo(
      {required final String name,
      required final int value}) = _$OptionInfoImpl;

  factory _OptionInfo.fromJson(Map<String, dynamic> json) =
      _$OptionInfoImpl.fromJson;

  @override
  String get name;
  @override
  int get value;

  /// Create a copy of OptionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionInfoImplCopyWith<_$OptionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
