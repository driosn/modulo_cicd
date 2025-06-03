// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autopay_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AutoPayOptionModel _$AutoPayOptionModelFromJson(Map<String, dynamic> json) {
  return _AutoPayOptionModel.fromJson(json);
}

/// @nodoc
mixin _$AutoPayOptionModel {
  String get id => throw _privateConstructorUsedError;
  String get autoPayOptionTypeDescription => throw _privateConstructorUsedError;
  AutoPayOptionTypes get autoPayOptionType =>
      throw _privateConstructorUsedError;

  /// Serializes this AutoPayOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutoPayOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoPayOptionModelCopyWith<AutoPayOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoPayOptionModelCopyWith<$Res> {
  factory $AutoPayOptionModelCopyWith(
          AutoPayOptionModel value, $Res Function(AutoPayOptionModel) then) =
      _$AutoPayOptionModelCopyWithImpl<$Res, AutoPayOptionModel>;
  @useResult
  $Res call(
      {String id,
      String autoPayOptionTypeDescription,
      AutoPayOptionTypes autoPayOptionType});
}

/// @nodoc
class _$AutoPayOptionModelCopyWithImpl<$Res, $Val extends AutoPayOptionModel>
    implements $AutoPayOptionModelCopyWith<$Res> {
  _$AutoPayOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoPayOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? autoPayOptionTypeDescription = null,
    Object? autoPayOptionType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      autoPayOptionTypeDescription: null == autoPayOptionTypeDescription
          ? _value.autoPayOptionTypeDescription
          : autoPayOptionTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      autoPayOptionType: null == autoPayOptionType
          ? _value.autoPayOptionType
          : autoPayOptionType // ignore: cast_nullable_to_non_nullable
              as AutoPayOptionTypes,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutoPayOptionModelImplCopyWith<$Res>
    implements $AutoPayOptionModelCopyWith<$Res> {
  factory _$$AutoPayOptionModelImplCopyWith(_$AutoPayOptionModelImpl value,
          $Res Function(_$AutoPayOptionModelImpl) then) =
      __$$AutoPayOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String autoPayOptionTypeDescription,
      AutoPayOptionTypes autoPayOptionType});
}

/// @nodoc
class __$$AutoPayOptionModelImplCopyWithImpl<$Res>
    extends _$AutoPayOptionModelCopyWithImpl<$Res, _$AutoPayOptionModelImpl>
    implements _$$AutoPayOptionModelImplCopyWith<$Res> {
  __$$AutoPayOptionModelImplCopyWithImpl(_$AutoPayOptionModelImpl _value,
      $Res Function(_$AutoPayOptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPayOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? autoPayOptionTypeDescription = null,
    Object? autoPayOptionType = null,
  }) {
    return _then(_$AutoPayOptionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      autoPayOptionTypeDescription: null == autoPayOptionTypeDescription
          ? _value.autoPayOptionTypeDescription
          : autoPayOptionTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      autoPayOptionType: null == autoPayOptionType
          ? _value.autoPayOptionType
          : autoPayOptionType // ignore: cast_nullable_to_non_nullable
              as AutoPayOptionTypes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoPayOptionModelImpl implements _AutoPayOptionModel {
  const _$AutoPayOptionModelImpl(
      {this.id = '',
      this.autoPayOptionTypeDescription = '',
      this.autoPayOptionType = AutoPayOptionTypes.empty});

  factory _$AutoPayOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoPayOptionModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String autoPayOptionTypeDescription;
  @override
  @JsonKey()
  final AutoPayOptionTypes autoPayOptionType;

  @override
  String toString() {
    return 'AutoPayOptionModel(id: $id, autoPayOptionTypeDescription: $autoPayOptionTypeDescription, autoPayOptionType: $autoPayOptionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoPayOptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.autoPayOptionTypeDescription,
                    autoPayOptionTypeDescription) ||
                other.autoPayOptionTypeDescription ==
                    autoPayOptionTypeDescription) &&
            (identical(other.autoPayOptionType, autoPayOptionType) ||
                other.autoPayOptionType == autoPayOptionType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, autoPayOptionTypeDescription, autoPayOptionType);

  /// Create a copy of AutoPayOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoPayOptionModelImplCopyWith<_$AutoPayOptionModelImpl> get copyWith =>
      __$$AutoPayOptionModelImplCopyWithImpl<_$AutoPayOptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoPayOptionModelImplToJson(
      this,
    );
  }
}

abstract class _AutoPayOptionModel implements AutoPayOptionModel {
  const factory _AutoPayOptionModel(
      {final String id,
      final String autoPayOptionTypeDescription,
      final AutoPayOptionTypes autoPayOptionType}) = _$AutoPayOptionModelImpl;

  factory _AutoPayOptionModel.fromJson(Map<String, dynamic> json) =
      _$AutoPayOptionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get autoPayOptionTypeDescription;
  @override
  AutoPayOptionTypes get autoPayOptionType;

  /// Create a copy of AutoPayOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoPayOptionModelImplCopyWith<_$AutoPayOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
