// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'acceptance_criteria_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcceptanceCriteriaInfoModel _$AcceptanceCriteriaInfoModelFromJson(
    Map<String, dynamic> json) {
  return _AcceptanceCriteriaInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AcceptanceCriteriaInfoModel {
  String get residentUserId => throw _privateConstructorUsedError;
  String get legalDocumentId => throw _privateConstructorUsedError;
  String get legalDocumentTypeDescription => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'legalDocumentType',
      fromJson: LegalDocumentType.fromInt,
      toJson: LegalDocumentType.toInt)
  LegalDocumentType get legalDocumentType => throw _privateConstructorUsedError;
  bool get isAccepted => throw _privateConstructorUsedError;

  /// Serializes this AcceptanceCriteriaInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcceptanceCriteriaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcceptanceCriteriaInfoModelCopyWith<AcceptanceCriteriaInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptanceCriteriaInfoModelCopyWith<$Res> {
  factory $AcceptanceCriteriaInfoModelCopyWith(
          AcceptanceCriteriaInfoModel value,
          $Res Function(AcceptanceCriteriaInfoModel) then) =
      _$AcceptanceCriteriaInfoModelCopyWithImpl<$Res,
          AcceptanceCriteriaInfoModel>;
  @useResult
  $Res call(
      {String residentUserId,
      String legalDocumentId,
      String legalDocumentTypeDescription,
      @JsonKey(
          name: 'legalDocumentType',
          fromJson: LegalDocumentType.fromInt,
          toJson: LegalDocumentType.toInt)
      LegalDocumentType legalDocumentType,
      bool isAccepted});

  $LegalDocumentTypeCopyWith<$Res> get legalDocumentType;
}

/// @nodoc
class _$AcceptanceCriteriaInfoModelCopyWithImpl<$Res,
        $Val extends AcceptanceCriteriaInfoModel>
    implements $AcceptanceCriteriaInfoModelCopyWith<$Res> {
  _$AcceptanceCriteriaInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptanceCriteriaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentUserId = null,
    Object? legalDocumentId = null,
    Object? legalDocumentTypeDescription = null,
    Object? legalDocumentType = null,
    Object? isAccepted = null,
  }) {
    return _then(_value.copyWith(
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      legalDocumentId: null == legalDocumentId
          ? _value.legalDocumentId
          : legalDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
      legalDocumentTypeDescription: null == legalDocumentTypeDescription
          ? _value.legalDocumentTypeDescription
          : legalDocumentTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      legalDocumentType: null == legalDocumentType
          ? _value.legalDocumentType
          : legalDocumentType // ignore: cast_nullable_to_non_nullable
              as LegalDocumentType,
      isAccepted: null == isAccepted
          ? _value.isAccepted
          : isAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of AcceptanceCriteriaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LegalDocumentTypeCopyWith<$Res> get legalDocumentType {
    return $LegalDocumentTypeCopyWith<$Res>(_value.legalDocumentType, (value) {
      return _then(_value.copyWith(legalDocumentType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AcceptanceCriteriaInfoModelImplCopyWith<$Res>
    implements $AcceptanceCriteriaInfoModelCopyWith<$Res> {
  factory _$$AcceptanceCriteriaInfoModelImplCopyWith(
          _$AcceptanceCriteriaInfoModelImpl value,
          $Res Function(_$AcceptanceCriteriaInfoModelImpl) then) =
      __$$AcceptanceCriteriaInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String residentUserId,
      String legalDocumentId,
      String legalDocumentTypeDescription,
      @JsonKey(
          name: 'legalDocumentType',
          fromJson: LegalDocumentType.fromInt,
          toJson: LegalDocumentType.toInt)
      LegalDocumentType legalDocumentType,
      bool isAccepted});

  @override
  $LegalDocumentTypeCopyWith<$Res> get legalDocumentType;
}

/// @nodoc
class __$$AcceptanceCriteriaInfoModelImplCopyWithImpl<$Res>
    extends _$AcceptanceCriteriaInfoModelCopyWithImpl<$Res,
        _$AcceptanceCriteriaInfoModelImpl>
    implements _$$AcceptanceCriteriaInfoModelImplCopyWith<$Res> {
  __$$AcceptanceCriteriaInfoModelImplCopyWithImpl(
      _$AcceptanceCriteriaInfoModelImpl _value,
      $Res Function(_$AcceptanceCriteriaInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcceptanceCriteriaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentUserId = null,
    Object? legalDocumentId = null,
    Object? legalDocumentTypeDescription = null,
    Object? legalDocumentType = null,
    Object? isAccepted = null,
  }) {
    return _then(_$AcceptanceCriteriaInfoModelImpl(
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      legalDocumentId: null == legalDocumentId
          ? _value.legalDocumentId
          : legalDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
      legalDocumentTypeDescription: null == legalDocumentTypeDescription
          ? _value.legalDocumentTypeDescription
          : legalDocumentTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      legalDocumentType: null == legalDocumentType
          ? _value.legalDocumentType
          : legalDocumentType // ignore: cast_nullable_to_non_nullable
              as LegalDocumentType,
      isAccepted: null == isAccepted
          ? _value.isAccepted
          : isAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcceptanceCriteriaInfoModelImpl
    implements _AcceptanceCriteriaInfoModel {
  const _$AcceptanceCriteriaInfoModelImpl(
      {this.residentUserId = '',
      this.legalDocumentId = '',
      this.legalDocumentTypeDescription = '',
      @JsonKey(
          name: 'legalDocumentType',
          fromJson: LegalDocumentType.fromInt,
          toJson: LegalDocumentType.toInt)
      this.legalDocumentType = const LegalDocumentType.unknown(),
      this.isAccepted = false});

  factory _$AcceptanceCriteriaInfoModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AcceptanceCriteriaInfoModelImplFromJson(json);

  @override
  @JsonKey()
  final String residentUserId;
  @override
  @JsonKey()
  final String legalDocumentId;
  @override
  @JsonKey()
  final String legalDocumentTypeDescription;
  @override
  @JsonKey(
      name: 'legalDocumentType',
      fromJson: LegalDocumentType.fromInt,
      toJson: LegalDocumentType.toInt)
  final LegalDocumentType legalDocumentType;
  @override
  @JsonKey()
  final bool isAccepted;

  @override
  String toString() {
    return 'AcceptanceCriteriaInfoModel(residentUserId: $residentUserId, legalDocumentId: $legalDocumentId, legalDocumentTypeDescription: $legalDocumentTypeDescription, legalDocumentType: $legalDocumentType, isAccepted: $isAccepted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptanceCriteriaInfoModelImpl &&
            (identical(other.residentUserId, residentUserId) ||
                other.residentUserId == residentUserId) &&
            (identical(other.legalDocumentId, legalDocumentId) ||
                other.legalDocumentId == legalDocumentId) &&
            (identical(other.legalDocumentTypeDescription,
                    legalDocumentTypeDescription) ||
                other.legalDocumentTypeDescription ==
                    legalDocumentTypeDescription) &&
            (identical(other.legalDocumentType, legalDocumentType) ||
                other.legalDocumentType == legalDocumentType) &&
            (identical(other.isAccepted, isAccepted) ||
                other.isAccepted == isAccepted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, residentUserId, legalDocumentId,
      legalDocumentTypeDescription, legalDocumentType, isAccepted);

  /// Create a copy of AcceptanceCriteriaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptanceCriteriaInfoModelImplCopyWith<_$AcceptanceCriteriaInfoModelImpl>
      get copyWith => __$$AcceptanceCriteriaInfoModelImplCopyWithImpl<
          _$AcceptanceCriteriaInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptanceCriteriaInfoModelImplToJson(
      this,
    );
  }
}

abstract class _AcceptanceCriteriaInfoModel
    implements AcceptanceCriteriaInfoModel {
  const factory _AcceptanceCriteriaInfoModel(
      {final String residentUserId,
      final String legalDocumentId,
      final String legalDocumentTypeDescription,
      @JsonKey(
          name: 'legalDocumentType',
          fromJson: LegalDocumentType.fromInt,
          toJson: LegalDocumentType.toInt)
      final LegalDocumentType legalDocumentType,
      final bool isAccepted}) = _$AcceptanceCriteriaInfoModelImpl;

  factory _AcceptanceCriteriaInfoModel.fromJson(Map<String, dynamic> json) =
      _$AcceptanceCriteriaInfoModelImpl.fromJson;

  @override
  String get residentUserId;
  @override
  String get legalDocumentId;
  @override
  String get legalDocumentTypeDescription;
  @override
  @JsonKey(
      name: 'legalDocumentType',
      fromJson: LegalDocumentType.fromInt,
      toJson: LegalDocumentType.toInt)
  LegalDocumentType get legalDocumentType;
  @override
  bool get isAccepted;

  /// Create a copy of AcceptanceCriteriaInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptanceCriteriaInfoModelImplCopyWith<_$AcceptanceCriteriaInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
