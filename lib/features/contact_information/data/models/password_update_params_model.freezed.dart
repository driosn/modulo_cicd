// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_update_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasswordUpdateParamsModel _$PasswordUpdateParamsModelFromJson(
    Map<String, dynamic> json) {
  return _PasswordUpdateParamsModel.fromJson(json);
}

/// @nodoc
mixin _$PasswordUpdateParamsModel {
  String get residentUserId => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get currentPassword => throw _privateConstructorUsedError;

  /// Serializes this PasswordUpdateParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordUpdateParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordUpdateParamsModelCopyWith<PasswordUpdateParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordUpdateParamsModelCopyWith<$Res> {
  factory $PasswordUpdateParamsModelCopyWith(PasswordUpdateParamsModel value,
          $Res Function(PasswordUpdateParamsModel) then) =
      _$PasswordUpdateParamsModelCopyWithImpl<$Res, PasswordUpdateParamsModel>;
  @useResult
  $Res call(
      {String residentUserId, String newPassword, String currentPassword});
}

/// @nodoc
class _$PasswordUpdateParamsModelCopyWithImpl<$Res,
        $Val extends PasswordUpdateParamsModel>
    implements $PasswordUpdateParamsModelCopyWith<$Res> {
  _$PasswordUpdateParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordUpdateParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentUserId = null,
    Object? newPassword = null,
    Object? currentPassword = null,
  }) {
    return _then(_value.copyWith(
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordUpdateParamsModelImplCopyWith<$Res>
    implements $PasswordUpdateParamsModelCopyWith<$Res> {
  factory _$$PasswordUpdateParamsModelImplCopyWith(
          _$PasswordUpdateParamsModelImpl value,
          $Res Function(_$PasswordUpdateParamsModelImpl) then) =
      __$$PasswordUpdateParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String residentUserId, String newPassword, String currentPassword});
}

/// @nodoc
class __$$PasswordUpdateParamsModelImplCopyWithImpl<$Res>
    extends _$PasswordUpdateParamsModelCopyWithImpl<$Res,
        _$PasswordUpdateParamsModelImpl>
    implements _$$PasswordUpdateParamsModelImplCopyWith<$Res> {
  __$$PasswordUpdateParamsModelImplCopyWithImpl(
      _$PasswordUpdateParamsModelImpl _value,
      $Res Function(_$PasswordUpdateParamsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordUpdateParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentUserId = null,
    Object? newPassword = null,
    Object? currentPassword = null,
  }) {
    return _then(_$PasswordUpdateParamsModelImpl(
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordUpdateParamsModelImpl implements _PasswordUpdateParamsModel {
  const _$PasswordUpdateParamsModelImpl(
      {this.residentUserId = '',
      this.newPassword = '',
      this.currentPassword = ''});

  factory _$PasswordUpdateParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordUpdateParamsModelImplFromJson(json);

  @override
  @JsonKey()
  final String residentUserId;
  @override
  @JsonKey()
  final String newPassword;
  @override
  @JsonKey()
  final String currentPassword;

  @override
  String toString() {
    return 'PasswordUpdateParamsModel(residentUserId: $residentUserId, newPassword: $newPassword, currentPassword: $currentPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordUpdateParamsModelImpl &&
            (identical(other.residentUserId, residentUserId) ||
                other.residentUserId == residentUserId) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, residentUserId, newPassword, currentPassword);

  /// Create a copy of PasswordUpdateParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordUpdateParamsModelImplCopyWith<_$PasswordUpdateParamsModelImpl>
      get copyWith => __$$PasswordUpdateParamsModelImplCopyWithImpl<
          _$PasswordUpdateParamsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordUpdateParamsModelImplToJson(
      this,
    );
  }
}

abstract class _PasswordUpdateParamsModel implements PasswordUpdateParamsModel {
  const factory _PasswordUpdateParamsModel(
      {final String residentUserId,
      final String newPassword,
      final String currentPassword}) = _$PasswordUpdateParamsModelImpl;

  factory _PasswordUpdateParamsModel.fromJson(Map<String, dynamic> json) =
      _$PasswordUpdateParamsModelImpl.fromJson;

  @override
  String get residentUserId;
  @override
  String get newPassword;
  @override
  String get currentPassword;

  /// Create a copy of PasswordUpdateParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordUpdateParamsModelImplCopyWith<_$PasswordUpdateParamsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
