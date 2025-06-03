// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseModel {
  bool get successful => throw _privateConstructorUsedError;
  String get rpmRefreshToken => throw _privateConstructorUsedError;
  List<UserClaimModel> get userClaims => throw _privateConstructorUsedError;
  String get expiresUtc => throw _privateConstructorUsedError;
  String get apiMessage => throw _privateConstructorUsedError;

  /// Serializes this LoginResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res, LoginResponseModel>;
  @useResult
  $Res call(
      {bool successful,
      String rpmRefreshToken,
      List<UserClaimModel> userClaims,
      String expiresUtc,
      String apiMessage});
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res, $Val extends LoginResponseModel>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successful = null,
    Object? rpmRefreshToken = null,
    Object? userClaims = null,
    Object? expiresUtc = null,
    Object? apiMessage = null,
  }) {
    return _then(_value.copyWith(
      successful: null == successful
          ? _value.successful
          : successful // ignore: cast_nullable_to_non_nullable
              as bool,
      rpmRefreshToken: null == rpmRefreshToken
          ? _value.rpmRefreshToken
          : rpmRefreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      userClaims: null == userClaims
          ? _value.userClaims
          : userClaims // ignore: cast_nullable_to_non_nullable
              as List<UserClaimModel>,
      expiresUtc: null == expiresUtc
          ? _value.expiresUtc
          : expiresUtc // ignore: cast_nullable_to_non_nullable
              as String,
      apiMessage: null == apiMessage
          ? _value.apiMessage
          : apiMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResponseModelImplCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$$LoginResponseModelImplCopyWith(_$LoginResponseModelImpl value,
          $Res Function(_$LoginResponseModelImpl) then) =
      __$$LoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool successful,
      String rpmRefreshToken,
      List<UserClaimModel> userClaims,
      String expiresUtc,
      String apiMessage});
}

/// @nodoc
class __$$LoginResponseModelImplCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res, _$LoginResponseModelImpl>
    implements _$$LoginResponseModelImplCopyWith<$Res> {
  __$$LoginResponseModelImplCopyWithImpl(_$LoginResponseModelImpl _value,
      $Res Function(_$LoginResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successful = null,
    Object? rpmRefreshToken = null,
    Object? userClaims = null,
    Object? expiresUtc = null,
    Object? apiMessage = null,
  }) {
    return _then(_$LoginResponseModelImpl(
      successful: null == successful
          ? _value.successful
          : successful // ignore: cast_nullable_to_non_nullable
              as bool,
      rpmRefreshToken: null == rpmRefreshToken
          ? _value.rpmRefreshToken
          : rpmRefreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      userClaims: null == userClaims
          ? _value._userClaims
          : userClaims // ignore: cast_nullable_to_non_nullable
              as List<UserClaimModel>,
      expiresUtc: null == expiresUtc
          ? _value.expiresUtc
          : expiresUtc // ignore: cast_nullable_to_non_nullable
              as String,
      apiMessage: null == apiMessage
          ? _value.apiMessage
          : apiMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseModelImpl implements _LoginResponseModel {
  const _$LoginResponseModelImpl(
      {this.successful = false,
      this.rpmRefreshToken = '',
      final List<UserClaimModel> userClaims = const [],
      this.expiresUtc = '',
      this.apiMessage = ''})
      : _userClaims = userClaims;

  factory _$LoginResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseModelImplFromJson(json);

  @override
  @JsonKey()
  final bool successful;
  @override
  @JsonKey()
  final String rpmRefreshToken;
  final List<UserClaimModel> _userClaims;
  @override
  @JsonKey()
  List<UserClaimModel> get userClaims {
    if (_userClaims is EqualUnmodifiableListView) return _userClaims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userClaims);
  }

  @override
  @JsonKey()
  final String expiresUtc;
  @override
  @JsonKey()
  final String apiMessage;

  @override
  String toString() {
    return 'LoginResponseModel(successful: $successful, rpmRefreshToken: $rpmRefreshToken, userClaims: $userClaims, expiresUtc: $expiresUtc, apiMessage: $apiMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseModelImpl &&
            (identical(other.successful, successful) ||
                other.successful == successful) &&
            (identical(other.rpmRefreshToken, rpmRefreshToken) ||
                other.rpmRefreshToken == rpmRefreshToken) &&
            const DeepCollectionEquality()
                .equals(other._userClaims, _userClaims) &&
            (identical(other.expiresUtc, expiresUtc) ||
                other.expiresUtc == expiresUtc) &&
            (identical(other.apiMessage, apiMessage) ||
                other.apiMessage == apiMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, successful, rpmRefreshToken,
      const DeepCollectionEquality().hash(_userClaims), expiresUtc, apiMessage);

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      __$$LoginResponseModelImplCopyWithImpl<_$LoginResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseModel implements LoginResponseModel {
  const factory _LoginResponseModel(
      {final bool successful,
      final String rpmRefreshToken,
      final List<UserClaimModel> userClaims,
      final String expiresUtc,
      final String apiMessage}) = _$LoginResponseModelImpl;

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$LoginResponseModelImpl.fromJson;

  @override
  bool get successful;
  @override
  String get rpmRefreshToken;
  @override
  List<UserClaimModel> get userClaims;
  @override
  String get expiresUtc;
  @override
  String get apiMessage;

  /// Create a copy of LoginResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
