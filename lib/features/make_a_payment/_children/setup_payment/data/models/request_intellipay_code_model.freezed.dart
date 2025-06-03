// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_intellipay_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestIntelliPayCodeModel _$RequestIntelliPayCodeModelFromJson(
    Map<String, dynamic> json) {
  return _RequestIntelliPayCodeModel.fromJson(json);
}

/// @nodoc
mixin _$RequestIntelliPayCodeModel {
  String get intelliPayJavascriptCode => throw _privateConstructorUsedError;
  String get passThrough => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this RequestIntelliPayCodeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestIntelliPayCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestIntelliPayCodeModelCopyWith<RequestIntelliPayCodeModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestIntelliPayCodeModelCopyWith<$Res> {
  factory $RequestIntelliPayCodeModelCopyWith(RequestIntelliPayCodeModel value,
          $Res Function(RequestIntelliPayCodeModel) then) =
      _$RequestIntelliPayCodeModelCopyWithImpl<$Res,
          RequestIntelliPayCodeModel>;
  @useResult
  $Res call(
      {String intelliPayJavascriptCode, String passThrough, String token});
}

/// @nodoc
class _$RequestIntelliPayCodeModelCopyWithImpl<$Res,
        $Val extends RequestIntelliPayCodeModel>
    implements $RequestIntelliPayCodeModelCopyWith<$Res> {
  _$RequestIntelliPayCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestIntelliPayCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intelliPayJavascriptCode = null,
    Object? passThrough = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      intelliPayJavascriptCode: null == intelliPayJavascriptCode
          ? _value.intelliPayJavascriptCode
          : intelliPayJavascriptCode // ignore: cast_nullable_to_non_nullable
              as String,
      passThrough: null == passThrough
          ? _value.passThrough
          : passThrough // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestIntelliPayCodeModelImplCopyWith<$Res>
    implements $RequestIntelliPayCodeModelCopyWith<$Res> {
  factory _$$RequestIntelliPayCodeModelImplCopyWith(
          _$RequestIntelliPayCodeModelImpl value,
          $Res Function(_$RequestIntelliPayCodeModelImpl) then) =
      __$$RequestIntelliPayCodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String intelliPayJavascriptCode, String passThrough, String token});
}

/// @nodoc
class __$$RequestIntelliPayCodeModelImplCopyWithImpl<$Res>
    extends _$RequestIntelliPayCodeModelCopyWithImpl<$Res,
        _$RequestIntelliPayCodeModelImpl>
    implements _$$RequestIntelliPayCodeModelImplCopyWith<$Res> {
  __$$RequestIntelliPayCodeModelImplCopyWithImpl(
      _$RequestIntelliPayCodeModelImpl _value,
      $Res Function(_$RequestIntelliPayCodeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestIntelliPayCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intelliPayJavascriptCode = null,
    Object? passThrough = null,
    Object? token = null,
  }) {
    return _then(_$RequestIntelliPayCodeModelImpl(
      intelliPayJavascriptCode: null == intelliPayJavascriptCode
          ? _value.intelliPayJavascriptCode
          : intelliPayJavascriptCode // ignore: cast_nullable_to_non_nullable
              as String,
      passThrough: null == passThrough
          ? _value.passThrough
          : passThrough // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestIntelliPayCodeModelImpl implements _RequestIntelliPayCodeModel {
  const _$RequestIntelliPayCodeModelImpl(
      {this.intelliPayJavascriptCode = '',
      this.passThrough = '',
      this.token = ''});

  factory _$RequestIntelliPayCodeModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestIntelliPayCodeModelImplFromJson(json);

  @override
  @JsonKey()
  final String intelliPayJavascriptCode;
  @override
  @JsonKey()
  final String passThrough;
  @override
  @JsonKey()
  final String token;

  @override
  String toString() {
    return 'RequestIntelliPayCodeModel(intelliPayJavascriptCode: $intelliPayJavascriptCode, passThrough: $passThrough, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestIntelliPayCodeModelImpl &&
            (identical(
                    other.intelliPayJavascriptCode, intelliPayJavascriptCode) ||
                other.intelliPayJavascriptCode == intelliPayJavascriptCode) &&
            (identical(other.passThrough, passThrough) ||
                other.passThrough == passThrough) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, intelliPayJavascriptCode, passThrough, token);

  /// Create a copy of RequestIntelliPayCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestIntelliPayCodeModelImplCopyWith<_$RequestIntelliPayCodeModelImpl>
      get copyWith => __$$RequestIntelliPayCodeModelImplCopyWithImpl<
          _$RequestIntelliPayCodeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestIntelliPayCodeModelImplToJson(
      this,
    );
  }
}

abstract class _RequestIntelliPayCodeModel
    implements RequestIntelliPayCodeModel {
  const factory _RequestIntelliPayCodeModel(
      {final String intelliPayJavascriptCode,
      final String passThrough,
      final String token}) = _$RequestIntelliPayCodeModelImpl;

  factory _RequestIntelliPayCodeModel.fromJson(Map<String, dynamic> json) =
      _$RequestIntelliPayCodeModelImpl.fromJson;

  @override
  String get intelliPayJavascriptCode;
  @override
  String get passThrough;
  @override
  String get token;

  /// Create a copy of RequestIntelliPayCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestIntelliPayCodeModelImplCopyWith<_$RequestIntelliPayCodeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
