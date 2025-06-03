// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_payment_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyPaymentSettingModel _$PropertyPaymentSettingModelFromJson(
    Map<String, dynamic> json) {
  return _PropertyPaymentSettingModel.fromJson(json);
}

/// @nodoc
mixin _$PropertyPaymentSettingModel {
  String get id => throw _privateConstructorUsedError;
  String get propertyId => throw _privateConstructorUsedError;
  String get paymentProcessorTypeDescription =>
      throw _privateConstructorUsedError;
  @JsonKey(
      name: 'paymentProcessorType',
      fromJson: PaymentProcessorType.fromInt,
      toJson: PaymentProcessorType.toInt)
  PaymentProcessorType get paymentProcessorType =>
      throw _privateConstructorUsedError;
  String get paymentMethodTypeDescription => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'paymentMethodType',
      fromJson: PaymentMethodType.fromInt,
      toJson: PaymentMethodType.toInt)
  PaymentMethodType get paymentMethodType => throw _privateConstructorUsedError;
  String get payToTypeDescription => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'payToType', fromJson: PayToType.fromInt, toJson: PayToType.toInt)
  PayToType get payToType => throw _privateConstructorUsedError;

  /// Serializes this PropertyPaymentSettingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyPaymentSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyPaymentSettingModelCopyWith<PropertyPaymentSettingModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyPaymentSettingModelCopyWith<$Res> {
  factory $PropertyPaymentSettingModelCopyWith(
          PropertyPaymentSettingModel value,
          $Res Function(PropertyPaymentSettingModel) then) =
      _$PropertyPaymentSettingModelCopyWithImpl<$Res,
          PropertyPaymentSettingModel>;
  @useResult
  $Res call(
      {String id,
      String propertyId,
      String paymentProcessorTypeDescription,
      @JsonKey(
          name: 'paymentProcessorType',
          fromJson: PaymentProcessorType.fromInt,
          toJson: PaymentProcessorType.toInt)
      PaymentProcessorType paymentProcessorType,
      String paymentMethodTypeDescription,
      @JsonKey(
          name: 'paymentMethodType',
          fromJson: PaymentMethodType.fromInt,
          toJson: PaymentMethodType.toInt)
      PaymentMethodType paymentMethodType,
      String payToTypeDescription,
      @JsonKey(
          name: 'payToType',
          fromJson: PayToType.fromInt,
          toJson: PayToType.toInt)
      PayToType payToType});

  $PaymentProcessorTypeCopyWith<$Res> get paymentProcessorType;
  $PaymentMethodTypeCopyWith<$Res> get paymentMethodType;
  $PayToTypeCopyWith<$Res> get payToType;
}

/// @nodoc
class _$PropertyPaymentSettingModelCopyWithImpl<$Res,
        $Val extends PropertyPaymentSettingModel>
    implements $PropertyPaymentSettingModelCopyWith<$Res> {
  _$PropertyPaymentSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyPaymentSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyId = null,
    Object? paymentProcessorTypeDescription = null,
    Object? paymentProcessorType = null,
    Object? paymentMethodTypeDescription = null,
    Object? paymentMethodType = null,
    Object? payToTypeDescription = null,
    Object? payToType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentProcessorTypeDescription: null == paymentProcessorTypeDescription
          ? _value.paymentProcessorTypeDescription
          : paymentProcessorTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      paymentProcessorType: null == paymentProcessorType
          ? _value.paymentProcessorType
          : paymentProcessorType // ignore: cast_nullable_to_non_nullable
              as PaymentProcessorType,
      paymentMethodTypeDescription: null == paymentMethodTypeDescription
          ? _value.paymentMethodTypeDescription
          : paymentMethodTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodType: null == paymentMethodType
          ? _value.paymentMethodType
          : paymentMethodType // ignore: cast_nullable_to_non_nullable
              as PaymentMethodType,
      payToTypeDescription: null == payToTypeDescription
          ? _value.payToTypeDescription
          : payToTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      payToType: null == payToType
          ? _value.payToType
          : payToType // ignore: cast_nullable_to_non_nullable
              as PayToType,
    ) as $Val);
  }

  /// Create a copy of PropertyPaymentSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentProcessorTypeCopyWith<$Res> get paymentProcessorType {
    return $PaymentProcessorTypeCopyWith<$Res>(_value.paymentProcessorType,
        (value) {
      return _then(_value.copyWith(paymentProcessorType: value) as $Val);
    });
  }

  /// Create a copy of PropertyPaymentSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodTypeCopyWith<$Res> get paymentMethodType {
    return $PaymentMethodTypeCopyWith<$Res>(_value.paymentMethodType, (value) {
      return _then(_value.copyWith(paymentMethodType: value) as $Val);
    });
  }

  /// Create a copy of PropertyPaymentSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayToTypeCopyWith<$Res> get payToType {
    return $PayToTypeCopyWith<$Res>(_value.payToType, (value) {
      return _then(_value.copyWith(payToType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PropertyPaymentSettingModelImplCopyWith<$Res>
    implements $PropertyPaymentSettingModelCopyWith<$Res> {
  factory _$$PropertyPaymentSettingModelImplCopyWith(
          _$PropertyPaymentSettingModelImpl value,
          $Res Function(_$PropertyPaymentSettingModelImpl) then) =
      __$$PropertyPaymentSettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String propertyId,
      String paymentProcessorTypeDescription,
      @JsonKey(
          name: 'paymentProcessorType',
          fromJson: PaymentProcessorType.fromInt,
          toJson: PaymentProcessorType.toInt)
      PaymentProcessorType paymentProcessorType,
      String paymentMethodTypeDescription,
      @JsonKey(
          name: 'paymentMethodType',
          fromJson: PaymentMethodType.fromInt,
          toJson: PaymentMethodType.toInt)
      PaymentMethodType paymentMethodType,
      String payToTypeDescription,
      @JsonKey(
          name: 'payToType',
          fromJson: PayToType.fromInt,
          toJson: PayToType.toInt)
      PayToType payToType});

  @override
  $PaymentProcessorTypeCopyWith<$Res> get paymentProcessorType;
  @override
  $PaymentMethodTypeCopyWith<$Res> get paymentMethodType;
  @override
  $PayToTypeCopyWith<$Res> get payToType;
}

/// @nodoc
class __$$PropertyPaymentSettingModelImplCopyWithImpl<$Res>
    extends _$PropertyPaymentSettingModelCopyWithImpl<$Res,
        _$PropertyPaymentSettingModelImpl>
    implements _$$PropertyPaymentSettingModelImplCopyWith<$Res> {
  __$$PropertyPaymentSettingModelImplCopyWithImpl(
      _$PropertyPaymentSettingModelImpl _value,
      $Res Function(_$PropertyPaymentSettingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyPaymentSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? propertyId = null,
    Object? paymentProcessorTypeDescription = null,
    Object? paymentProcessorType = null,
    Object? paymentMethodTypeDescription = null,
    Object? paymentMethodType = null,
    Object? payToTypeDescription = null,
    Object? payToType = null,
  }) {
    return _then(_$PropertyPaymentSettingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentProcessorTypeDescription: null == paymentProcessorTypeDescription
          ? _value.paymentProcessorTypeDescription
          : paymentProcessorTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      paymentProcessorType: null == paymentProcessorType
          ? _value.paymentProcessorType
          : paymentProcessorType // ignore: cast_nullable_to_non_nullable
              as PaymentProcessorType,
      paymentMethodTypeDescription: null == paymentMethodTypeDescription
          ? _value.paymentMethodTypeDescription
          : paymentMethodTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodType: null == paymentMethodType
          ? _value.paymentMethodType
          : paymentMethodType // ignore: cast_nullable_to_non_nullable
              as PaymentMethodType,
      payToTypeDescription: null == payToTypeDescription
          ? _value.payToTypeDescription
          : payToTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      payToType: null == payToType
          ? _value.payToType
          : payToType // ignore: cast_nullable_to_non_nullable
              as PayToType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyPaymentSettingModelImpl
    implements _PropertyPaymentSettingModel {
  const _$PropertyPaymentSettingModelImpl(
      {this.id = '',
      this.propertyId = '',
      this.paymentProcessorTypeDescription = '',
      @JsonKey(
          name: 'paymentProcessorType',
          fromJson: PaymentProcessorType.fromInt,
          toJson: PaymentProcessorType.toInt)
      required this.paymentProcessorType,
      this.paymentMethodTypeDescription = '',
      @JsonKey(
          name: 'paymentMethodType',
          fromJson: PaymentMethodType.fromInt,
          toJson: PaymentMethodType.toInt)
      required this.paymentMethodType,
      this.payToTypeDescription = '',
      @JsonKey(
          name: 'payToType',
          fromJson: PayToType.fromInt,
          toJson: PayToType.toInt)
      required this.payToType});

  factory _$PropertyPaymentSettingModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PropertyPaymentSettingModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String propertyId;
  @override
  @JsonKey()
  final String paymentProcessorTypeDescription;
  @override
  @JsonKey(
      name: 'paymentProcessorType',
      fromJson: PaymentProcessorType.fromInt,
      toJson: PaymentProcessorType.toInt)
  final PaymentProcessorType paymentProcessorType;
  @override
  @JsonKey()
  final String paymentMethodTypeDescription;
  @override
  @JsonKey(
      name: 'paymentMethodType',
      fromJson: PaymentMethodType.fromInt,
      toJson: PaymentMethodType.toInt)
  final PaymentMethodType paymentMethodType;
  @override
  @JsonKey()
  final String payToTypeDescription;
  @override
  @JsonKey(
      name: 'payToType', fromJson: PayToType.fromInt, toJson: PayToType.toInt)
  final PayToType payToType;

  @override
  String toString() {
    return 'PropertyPaymentSettingModel(id: $id, propertyId: $propertyId, paymentProcessorTypeDescription: $paymentProcessorTypeDescription, paymentProcessorType: $paymentProcessorType, paymentMethodTypeDescription: $paymentMethodTypeDescription, paymentMethodType: $paymentMethodType, payToTypeDescription: $payToTypeDescription, payToType: $payToType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyPaymentSettingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.paymentProcessorTypeDescription,
                    paymentProcessorTypeDescription) ||
                other.paymentProcessorTypeDescription ==
                    paymentProcessorTypeDescription) &&
            (identical(other.paymentProcessorType, paymentProcessorType) ||
                other.paymentProcessorType == paymentProcessorType) &&
            (identical(other.paymentMethodTypeDescription,
                    paymentMethodTypeDescription) ||
                other.paymentMethodTypeDescription ==
                    paymentMethodTypeDescription) &&
            (identical(other.paymentMethodType, paymentMethodType) ||
                other.paymentMethodType == paymentMethodType) &&
            (identical(other.payToTypeDescription, payToTypeDescription) ||
                other.payToTypeDescription == payToTypeDescription) &&
            (identical(other.payToType, payToType) ||
                other.payToType == payToType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      propertyId,
      paymentProcessorTypeDescription,
      paymentProcessorType,
      paymentMethodTypeDescription,
      paymentMethodType,
      payToTypeDescription,
      payToType);

  /// Create a copy of PropertyPaymentSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyPaymentSettingModelImplCopyWith<_$PropertyPaymentSettingModelImpl>
      get copyWith => __$$PropertyPaymentSettingModelImplCopyWithImpl<
          _$PropertyPaymentSettingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyPaymentSettingModelImplToJson(
      this,
    );
  }
}

abstract class _PropertyPaymentSettingModel
    implements PropertyPaymentSettingModel {
  const factory _PropertyPaymentSettingModel(
      {final String id,
      final String propertyId,
      final String paymentProcessorTypeDescription,
      @JsonKey(
          name: 'paymentProcessorType',
          fromJson: PaymentProcessorType.fromInt,
          toJson: PaymentProcessorType.toInt)
      required final PaymentProcessorType paymentProcessorType,
      final String paymentMethodTypeDescription,
      @JsonKey(
          name: 'paymentMethodType',
          fromJson: PaymentMethodType.fromInt,
          toJson: PaymentMethodType.toInt)
      required final PaymentMethodType paymentMethodType,
      final String payToTypeDescription,
      @JsonKey(
          name: 'payToType',
          fromJson: PayToType.fromInt,
          toJson: PayToType.toInt)
      required final PayToType payToType}) = _$PropertyPaymentSettingModelImpl;

  factory _PropertyPaymentSettingModel.fromJson(Map<String, dynamic> json) =
      _$PropertyPaymentSettingModelImpl.fromJson;

  @override
  String get id;
  @override
  String get propertyId;
  @override
  String get paymentProcessorTypeDescription;
  @override
  @JsonKey(
      name: 'paymentProcessorType',
      fromJson: PaymentProcessorType.fromInt,
      toJson: PaymentProcessorType.toInt)
  PaymentProcessorType get paymentProcessorType;
  @override
  String get paymentMethodTypeDescription;
  @override
  @JsonKey(
      name: 'paymentMethodType',
      fromJson: PaymentMethodType.fromInt,
      toJson: PaymentMethodType.toInt)
  PaymentMethodType get paymentMethodType;
  @override
  String get payToTypeDescription;
  @override
  @JsonKey(
      name: 'payToType', fromJson: PayToType.fromInt, toJson: PayToType.toInt)
  PayToType get payToType;

  /// Create a copy of PropertyPaymentSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyPaymentSettingModelImplCopyWith<_$PropertyPaymentSettingModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
