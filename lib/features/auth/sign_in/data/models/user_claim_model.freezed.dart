// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_claim_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserClaimModel _$UserClaimModelFromJson(Map<String, dynamic> json) {
  return _UserClaimModel.fromJson(json);
}

/// @nodoc
mixin _$UserClaimModel {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get valueType => throw _privateConstructorUsedError;
  String get issuer => throw _privateConstructorUsedError;
  String get originalIssuer => throw _privateConstructorUsedError;

  /// Serializes this UserClaimModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserClaimModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserClaimModelCopyWith<UserClaimModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserClaimModelCopyWith<$Res> {
  factory $UserClaimModelCopyWith(
          UserClaimModel value, $Res Function(UserClaimModel) then) =
      _$UserClaimModelCopyWithImpl<$Res, UserClaimModel>;
  @useResult
  $Res call(
      {String type,
      String value,
      String valueType,
      String issuer,
      String originalIssuer});
}

/// @nodoc
class _$UserClaimModelCopyWithImpl<$Res, $Val extends UserClaimModel>
    implements $UserClaimModelCopyWith<$Res> {
  _$UserClaimModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserClaimModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? valueType = null,
    Object? issuer = null,
    Object? originalIssuer = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      valueType: null == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      originalIssuer: null == originalIssuer
          ? _value.originalIssuer
          : originalIssuer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserClaimModelImplCopyWith<$Res>
    implements $UserClaimModelCopyWith<$Res> {
  factory _$$UserClaimModelImplCopyWith(_$UserClaimModelImpl value,
          $Res Function(_$UserClaimModelImpl) then) =
      __$$UserClaimModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String value,
      String valueType,
      String issuer,
      String originalIssuer});
}

/// @nodoc
class __$$UserClaimModelImplCopyWithImpl<$Res>
    extends _$UserClaimModelCopyWithImpl<$Res, _$UserClaimModelImpl>
    implements _$$UserClaimModelImplCopyWith<$Res> {
  __$$UserClaimModelImplCopyWithImpl(
      _$UserClaimModelImpl _value, $Res Function(_$UserClaimModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserClaimModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? valueType = null,
    Object? issuer = null,
    Object? originalIssuer = null,
  }) {
    return _then(_$UserClaimModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      valueType: null == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      originalIssuer: null == originalIssuer
          ? _value.originalIssuer
          : originalIssuer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserClaimModelImpl implements _UserClaimModel {
  const _$UserClaimModelImpl(
      {this.type = '',
      this.value = '',
      this.valueType = '',
      this.issuer = '',
      this.originalIssuer = ''});

  factory _$UserClaimModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserClaimModelImplFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String valueType;
  @override
  @JsonKey()
  final String issuer;
  @override
  @JsonKey()
  final String originalIssuer;

  @override
  String toString() {
    return 'UserClaimModel(type: $type, value: $value, valueType: $valueType, issuer: $issuer, originalIssuer: $originalIssuer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserClaimModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType) &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.originalIssuer, originalIssuer) ||
                other.originalIssuer == originalIssuer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, value, valueType, issuer, originalIssuer);

  /// Create a copy of UserClaimModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserClaimModelImplCopyWith<_$UserClaimModelImpl> get copyWith =>
      __$$UserClaimModelImplCopyWithImpl<_$UserClaimModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserClaimModelImplToJson(
      this,
    );
  }
}

abstract class _UserClaimModel implements UserClaimModel {
  const factory _UserClaimModel(
      {final String type,
      final String value,
      final String valueType,
      final String issuer,
      final String originalIssuer}) = _$UserClaimModelImpl;

  factory _UserClaimModel.fromJson(Map<String, dynamic> json) =
      _$UserClaimModelImpl.fromJson;

  @override
  String get type;
  @override
  String get value;
  @override
  String get valueType;
  @override
  String get issuer;
  @override
  String get originalIssuer;

  /// Create a copy of UserClaimModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserClaimModelImplCopyWith<_$UserClaimModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
