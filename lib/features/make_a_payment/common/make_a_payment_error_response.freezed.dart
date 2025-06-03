// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'make_a_payment_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MakePaymentErrorResponse _$MakePaymentErrorResponseFromJson(
    Map<String, dynamic> json) {
  return _MakePaymentErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$MakePaymentErrorResponse {
  @JsonKey(
      name: 'errorCode',
      fromJson: MakePaymentErrorCode.fromInt,
      toJson: MakePaymentErrorCode.toInt)
  MakePaymentErrorCode get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<String, String> get errorDetails => throw _privateConstructorUsedError;

  /// Serializes this MakePaymentErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MakePaymentErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MakePaymentErrorResponseCopyWith<MakePaymentErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakePaymentErrorResponseCopyWith<$Res> {
  factory $MakePaymentErrorResponseCopyWith(MakePaymentErrorResponse value,
          $Res Function(MakePaymentErrorResponse) then) =
      _$MakePaymentErrorResponseCopyWithImpl<$Res, MakePaymentErrorResponse>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'errorCode',
          fromJson: MakePaymentErrorCode.fromInt,
          toJson: MakePaymentErrorCode.toInt)
      MakePaymentErrorCode errorCode,
      String? errorMessage,
      Map<String, String> errorDetails});

  $MakePaymentErrorCodeCopyWith<$Res> get errorCode;
}

/// @nodoc
class _$MakePaymentErrorResponseCopyWithImpl<$Res,
        $Val extends MakePaymentErrorResponse>
    implements $MakePaymentErrorResponseCopyWith<$Res> {
  _$MakePaymentErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MakePaymentErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = freezed,
    Object? errorDetails = null,
  }) {
    return _then(_value.copyWith(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as MakePaymentErrorCode,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDetails: null == errorDetails
          ? _value.errorDetails
          : errorDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  /// Create a copy of MakePaymentErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MakePaymentErrorCodeCopyWith<$Res> get errorCode {
    return $MakePaymentErrorCodeCopyWith<$Res>(_value.errorCode, (value) {
      return _then(_value.copyWith(errorCode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MakePaymentErrorResponseImplCopyWith<$Res>
    implements $MakePaymentErrorResponseCopyWith<$Res> {
  factory _$$MakePaymentErrorResponseImplCopyWith(
          _$MakePaymentErrorResponseImpl value,
          $Res Function(_$MakePaymentErrorResponseImpl) then) =
      __$$MakePaymentErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'errorCode',
          fromJson: MakePaymentErrorCode.fromInt,
          toJson: MakePaymentErrorCode.toInt)
      MakePaymentErrorCode errorCode,
      String? errorMessage,
      Map<String, String> errorDetails});

  @override
  $MakePaymentErrorCodeCopyWith<$Res> get errorCode;
}

/// @nodoc
class __$$MakePaymentErrorResponseImplCopyWithImpl<$Res>
    extends _$MakePaymentErrorResponseCopyWithImpl<$Res,
        _$MakePaymentErrorResponseImpl>
    implements _$$MakePaymentErrorResponseImplCopyWith<$Res> {
  __$$MakePaymentErrorResponseImplCopyWithImpl(
      _$MakePaymentErrorResponseImpl _value,
      $Res Function(_$MakePaymentErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MakePaymentErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = freezed,
    Object? errorDetails = null,
  }) {
    return _then(_$MakePaymentErrorResponseImpl(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as MakePaymentErrorCode,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDetails: null == errorDetails
          ? _value._errorDetails
          : errorDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MakePaymentErrorResponseImpl implements _MakePaymentErrorResponse {
  const _$MakePaymentErrorResponseImpl(
      {@JsonKey(
          name: 'errorCode',
          fromJson: MakePaymentErrorCode.fromInt,
          toJson: MakePaymentErrorCode.toInt)
      required this.errorCode,
      this.errorMessage,
      final Map<String, String> errorDetails = const {}})
      : _errorDetails = errorDetails;

  factory _$MakePaymentErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MakePaymentErrorResponseImplFromJson(json);

  @override
  @JsonKey(
      name: 'errorCode',
      fromJson: MakePaymentErrorCode.fromInt,
      toJson: MakePaymentErrorCode.toInt)
  final MakePaymentErrorCode errorCode;
  @override
  final String? errorMessage;
  final Map<String, String> _errorDetails;
  @override
  @JsonKey()
  Map<String, String> get errorDetails {
    if (_errorDetails is EqualUnmodifiableMapView) return _errorDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errorDetails);
  }

  @override
  String toString() {
    return 'MakePaymentErrorResponse(errorCode: $errorCode, errorMessage: $errorMessage, errorDetails: $errorDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakePaymentErrorResponseImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._errorDetails, _errorDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errorCode, errorMessage,
      const DeepCollectionEquality().hash(_errorDetails));

  /// Create a copy of MakePaymentErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MakePaymentErrorResponseImplCopyWith<_$MakePaymentErrorResponseImpl>
      get copyWith => __$$MakePaymentErrorResponseImplCopyWithImpl<
          _$MakePaymentErrorResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MakePaymentErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _MakePaymentErrorResponse implements MakePaymentErrorResponse {
  const factory _MakePaymentErrorResponse(
      {@JsonKey(
          name: 'errorCode',
          fromJson: MakePaymentErrorCode.fromInt,
          toJson: MakePaymentErrorCode.toInt)
      required final MakePaymentErrorCode errorCode,
      final String? errorMessage,
      final Map<String, String> errorDetails}) = _$MakePaymentErrorResponseImpl;

  factory _MakePaymentErrorResponse.fromJson(Map<String, dynamic> json) =
      _$MakePaymentErrorResponseImpl.fromJson;

  @override
  @JsonKey(
      name: 'errorCode',
      fromJson: MakePaymentErrorCode.fromInt,
      toJson: MakePaymentErrorCode.toInt)
  MakePaymentErrorCode get errorCode;
  @override
  String? get errorMessage;
  @override
  Map<String, String> get errorDetails;

  /// Create a copy of MakePaymentErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MakePaymentErrorResponseImplCopyWith<_$MakePaymentErrorResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
