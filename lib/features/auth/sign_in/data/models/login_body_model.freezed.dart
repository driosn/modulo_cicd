// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginBodyModel _$LoginBodyModelFromJson(Map<String, dynamic> json) {
  return _LoginBodyModel.fromJson(json);
}

/// @nodoc
mixin _$LoginBodyModel {
  LoginResponseModel get loginResponse => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this LoginBodyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginBodyModelCopyWith<LoginBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBodyModelCopyWith<$Res> {
  factory $LoginBodyModelCopyWith(
          LoginBodyModel value, $Res Function(LoginBodyModel) then) =
      _$LoginBodyModelCopyWithImpl<$Res, LoginBodyModel>;
  @useResult
  $Res call({LoginResponseModel loginResponse, String token});

  $LoginResponseModelCopyWith<$Res> get loginResponse;
}

/// @nodoc
class _$LoginBodyModelCopyWithImpl<$Res, $Val extends LoginBodyModel>
    implements $LoginBodyModelCopyWith<$Res> {
  _$LoginBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponse = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      loginResponse: null == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of LoginBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginResponseModelCopyWith<$Res> get loginResponse {
    return $LoginResponseModelCopyWith<$Res>(_value.loginResponse, (value) {
      return _then(_value.copyWith(loginResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginBodyModelImplCopyWith<$Res>
    implements $LoginBodyModelCopyWith<$Res> {
  factory _$$LoginBodyModelImplCopyWith(_$LoginBodyModelImpl value,
          $Res Function(_$LoginBodyModelImpl) then) =
      __$$LoginBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginResponseModel loginResponse, String token});

  @override
  $LoginResponseModelCopyWith<$Res> get loginResponse;
}

/// @nodoc
class __$$LoginBodyModelImplCopyWithImpl<$Res>
    extends _$LoginBodyModelCopyWithImpl<$Res, _$LoginBodyModelImpl>
    implements _$$LoginBodyModelImplCopyWith<$Res> {
  __$$LoginBodyModelImplCopyWithImpl(
      _$LoginBodyModelImpl _value, $Res Function(_$LoginBodyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponse = null,
    Object? token = null,
  }) {
    return _then(_$LoginBodyModelImpl(
      loginResponse: null == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginBodyModelImpl implements _LoginBodyModel {
  const _$LoginBodyModelImpl(
      {this.loginResponse = const LoginResponseModel(), this.token = ''});

  factory _$LoginBodyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginBodyModelImplFromJson(json);

  @override
  @JsonKey()
  final LoginResponseModel loginResponse;
  @override
  @JsonKey()
  final String token;

  @override
  String toString() {
    return 'LoginBodyModel(loginResponse: $loginResponse, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBodyModelImpl &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, loginResponse, token);

  /// Create a copy of LoginBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginBodyModelImplCopyWith<_$LoginBodyModelImpl> get copyWith =>
      __$$LoginBodyModelImplCopyWithImpl<_$LoginBodyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginBodyModelImplToJson(
      this,
    );
  }
}

abstract class _LoginBodyModel implements LoginBodyModel {
  const factory _LoginBodyModel(
      {final LoginResponseModel loginResponse,
      final String token}) = _$LoginBodyModelImpl;

  factory _LoginBodyModel.fromJson(Map<String, dynamic> json) =
      _$LoginBodyModelImpl.fromJson;

  @override
  LoginResponseModel get loginResponse;
  @override
  String get token;

  /// Create a copy of LoginBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginBodyModelImplCopyWith<_$LoginBodyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
