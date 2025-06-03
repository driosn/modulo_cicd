// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autopay_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AutoPaySettingsModel _$AutoPaySettingsModelFromJson(Map<String, dynamic> json) {
  return _AutoPaySettingsModel.fromJson(json);
}

/// @nodoc
mixin _$AutoPaySettingsModel {
  String get id => throw _privateConstructorUsedError;
  AutoPayOptionModel get autoPayOption => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get residentId => throw _privateConstructorUsedError;
  String get referenceId => throw _privateConstructorUsedError;
  int get payAmount => throw _privateConstructorUsedError;
  String get paymentMethodTypeDescription => throw _privateConstructorUsedError;
  int get paymentMethodType => throw _privateConstructorUsedError;
  int get payDay => throw _privateConstructorUsedError;

  /// Serializes this AutoPaySettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutoPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoPaySettingsModelCopyWith<AutoPaySettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoPaySettingsModelCopyWith<$Res> {
  factory $AutoPaySettingsModelCopyWith(AutoPaySettingsModel value,
          $Res Function(AutoPaySettingsModel) then) =
      _$AutoPaySettingsModelCopyWithImpl<$Res, AutoPaySettingsModel>;
  @useResult
  $Res call(
      {String id,
      AutoPayOptionModel autoPayOption,
      bool isActive,
      String residentId,
      String referenceId,
      int payAmount,
      String paymentMethodTypeDescription,
      int paymentMethodType,
      int payDay});

  $AutoPayOptionModelCopyWith<$Res> get autoPayOption;
}

/// @nodoc
class _$AutoPaySettingsModelCopyWithImpl<$Res,
        $Val extends AutoPaySettingsModel>
    implements $AutoPaySettingsModelCopyWith<$Res> {
  _$AutoPaySettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? autoPayOption = null,
    Object? isActive = null,
    Object? residentId = null,
    Object? referenceId = null,
    Object? payAmount = null,
    Object? paymentMethodTypeDescription = null,
    Object? paymentMethodType = null,
    Object? payDay = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      autoPayOption: null == autoPayOption
          ? _value.autoPayOption
          : autoPayOption // ignore: cast_nullable_to_non_nullable
              as AutoPayOptionModel,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodTypeDescription: null == paymentMethodTypeDescription
          ? _value.paymentMethodTypeDescription
          : paymentMethodTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodType: null == paymentMethodType
          ? _value.paymentMethodType
          : paymentMethodType // ignore: cast_nullable_to_non_nullable
              as int,
      payDay: null == payDay
          ? _value.payDay
          : payDay // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of AutoPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoPayOptionModelCopyWith<$Res> get autoPayOption {
    return $AutoPayOptionModelCopyWith<$Res>(_value.autoPayOption, (value) {
      return _then(_value.copyWith(autoPayOption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AutoPaySettingsModelImplCopyWith<$Res>
    implements $AutoPaySettingsModelCopyWith<$Res> {
  factory _$$AutoPaySettingsModelImplCopyWith(_$AutoPaySettingsModelImpl value,
          $Res Function(_$AutoPaySettingsModelImpl) then) =
      __$$AutoPaySettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      AutoPayOptionModel autoPayOption,
      bool isActive,
      String residentId,
      String referenceId,
      int payAmount,
      String paymentMethodTypeDescription,
      int paymentMethodType,
      int payDay});

  @override
  $AutoPayOptionModelCopyWith<$Res> get autoPayOption;
}

/// @nodoc
class __$$AutoPaySettingsModelImplCopyWithImpl<$Res>
    extends _$AutoPaySettingsModelCopyWithImpl<$Res, _$AutoPaySettingsModelImpl>
    implements _$$AutoPaySettingsModelImplCopyWith<$Res> {
  __$$AutoPaySettingsModelImplCopyWithImpl(_$AutoPaySettingsModelImpl _value,
      $Res Function(_$AutoPaySettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? autoPayOption = null,
    Object? isActive = null,
    Object? residentId = null,
    Object? referenceId = null,
    Object? payAmount = null,
    Object? paymentMethodTypeDescription = null,
    Object? paymentMethodType = null,
    Object? payDay = null,
  }) {
    return _then(_$AutoPaySettingsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      autoPayOption: null == autoPayOption
          ? _value.autoPayOption
          : autoPayOption // ignore: cast_nullable_to_non_nullable
              as AutoPayOptionModel,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodTypeDescription: null == paymentMethodTypeDescription
          ? _value.paymentMethodTypeDescription
          : paymentMethodTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodType: null == paymentMethodType
          ? _value.paymentMethodType
          : paymentMethodType // ignore: cast_nullable_to_non_nullable
              as int,
      payDay: null == payDay
          ? _value.payDay
          : payDay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoPaySettingsModelImpl implements _AutoPaySettingsModel {
  const _$AutoPaySettingsModelImpl(
      {this.id = '',
      this.autoPayOption = const AutoPayOptionModel(),
      this.isActive = false,
      this.residentId = '',
      this.referenceId = '',
      this.payAmount = 0,
      this.paymentMethodTypeDescription = '',
      this.paymentMethodType = 1,
      this.payDay = 1});

  factory _$AutoPaySettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoPaySettingsModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final AutoPayOptionModel autoPayOption;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final String residentId;
  @override
  @JsonKey()
  final String referenceId;
  @override
  @JsonKey()
  final int payAmount;
  @override
  @JsonKey()
  final String paymentMethodTypeDescription;
  @override
  @JsonKey()
  final int paymentMethodType;
  @override
  @JsonKey()
  final int payDay;

  @override
  String toString() {
    return 'AutoPaySettingsModel(id: $id, autoPayOption: $autoPayOption, isActive: $isActive, residentId: $residentId, referenceId: $referenceId, payAmount: $payAmount, paymentMethodTypeDescription: $paymentMethodTypeDescription, paymentMethodType: $paymentMethodType, payDay: $payDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoPaySettingsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.autoPayOption, autoPayOption) ||
                other.autoPayOption == autoPayOption) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.payAmount, payAmount) ||
                other.payAmount == payAmount) &&
            (identical(other.paymentMethodTypeDescription,
                    paymentMethodTypeDescription) ||
                other.paymentMethodTypeDescription ==
                    paymentMethodTypeDescription) &&
            (identical(other.paymentMethodType, paymentMethodType) ||
                other.paymentMethodType == paymentMethodType) &&
            (identical(other.payDay, payDay) || other.payDay == payDay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      autoPayOption,
      isActive,
      residentId,
      referenceId,
      payAmount,
      paymentMethodTypeDescription,
      paymentMethodType,
      payDay);

  /// Create a copy of AutoPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoPaySettingsModelImplCopyWith<_$AutoPaySettingsModelImpl>
      get copyWith =>
          __$$AutoPaySettingsModelImplCopyWithImpl<_$AutoPaySettingsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoPaySettingsModelImplToJson(
      this,
    );
  }
}

abstract class _AutoPaySettingsModel implements AutoPaySettingsModel {
  const factory _AutoPaySettingsModel(
      {final String id,
      final AutoPayOptionModel autoPayOption,
      final bool isActive,
      final String residentId,
      final String referenceId,
      final int payAmount,
      final String paymentMethodTypeDescription,
      final int paymentMethodType,
      final int payDay}) = _$AutoPaySettingsModelImpl;

  factory _AutoPaySettingsModel.fromJson(Map<String, dynamic> json) =
      _$AutoPaySettingsModelImpl.fromJson;

  @override
  String get id;
  @override
  AutoPayOptionModel get autoPayOption;
  @override
  bool get isActive;
  @override
  String get residentId;
  @override
  String get referenceId;
  @override
  int get payAmount;
  @override
  String get paymentMethodTypeDescription;
  @override
  int get paymentMethodType;
  @override
  int get payDay;

  /// Create a copy of AutoPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoPaySettingsModelImplCopyWith<_$AutoPaySettingsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
