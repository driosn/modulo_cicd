// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BillingsModel _$BillingsModelFromJson(Map<String, dynamic> json) {
  return _BillingsModel.fromJson(json);
}

/// @nodoc
mixin _$BillingsModel {
  List<BillingModel> get billings => throw _privateConstructorUsedError;

  /// Serializes this BillingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingsModelCopyWith<BillingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingsModelCopyWith<$Res> {
  factory $BillingsModelCopyWith(
          BillingsModel value, $Res Function(BillingsModel) then) =
      _$BillingsModelCopyWithImpl<$Res, BillingsModel>;
  @useResult
  $Res call({List<BillingModel> billings});
}

/// @nodoc
class _$BillingsModelCopyWithImpl<$Res, $Val extends BillingsModel>
    implements $BillingsModelCopyWith<$Res> {
  _$BillingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billings = null,
  }) {
    return _then(_value.copyWith(
      billings: null == billings
          ? _value.billings
          : billings // ignore: cast_nullable_to_non_nullable
              as List<BillingModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingsModelImplCopyWith<$Res>
    implements $BillingsModelCopyWith<$Res> {
  factory _$$BillingsModelImplCopyWith(
          _$BillingsModelImpl value, $Res Function(_$BillingsModelImpl) then) =
      __$$BillingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BillingModel> billings});
}

/// @nodoc
class __$$BillingsModelImplCopyWithImpl<$Res>
    extends _$BillingsModelCopyWithImpl<$Res, _$BillingsModelImpl>
    implements _$$BillingsModelImplCopyWith<$Res> {
  __$$BillingsModelImplCopyWithImpl(
      _$BillingsModelImpl _value, $Res Function(_$BillingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billings = null,
  }) {
    return _then(_$BillingsModelImpl(
      billings: null == billings
          ? _value._billings
          : billings // ignore: cast_nullable_to_non_nullable
              as List<BillingModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingsModelImpl implements _BillingsModel {
  const _$BillingsModelImpl(
      {final List<BillingModel> billings = const <BillingModel>[]})
      : _billings = billings;

  factory _$BillingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingsModelImplFromJson(json);

  final List<BillingModel> _billings;
  @override
  @JsonKey()
  List<BillingModel> get billings {
    if (_billings is EqualUnmodifiableListView) return _billings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_billings);
  }

  @override
  String toString() {
    return 'BillingsModel(billings: $billings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingsModelImpl &&
            const DeepCollectionEquality().equals(other._billings, _billings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_billings));

  /// Create a copy of BillingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingsModelImplCopyWith<_$BillingsModelImpl> get copyWith =>
      __$$BillingsModelImplCopyWithImpl<_$BillingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingsModelImplToJson(
      this,
    );
  }
}

abstract class _BillingsModel implements BillingsModel {
  const factory _BillingsModel({final List<BillingModel> billings}) =
      _$BillingsModelImpl;

  factory _BillingsModel.fromJson(Map<String, dynamic> json) =
      _$BillingsModelImpl.fromJson;

  @override
  List<BillingModel> get billings;

  /// Create a copy of BillingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingsModelImplCopyWith<_$BillingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillingModel _$BillingModelFromJson(Map<String, dynamic> json) {
  return _BillingModel.fromJson(json);
}

/// @nodoc
mixin _$BillingModel {
  String get id => throw _privateConstructorUsedError;
  int get invoiceMonth => throw _privateConstructorUsedError;
  int get invoiceYear => throw _privateConstructorUsedError;

  /// Serializes this BillingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingModelCopyWith<BillingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingModelCopyWith<$Res> {
  factory $BillingModelCopyWith(
          BillingModel value, $Res Function(BillingModel) then) =
      _$BillingModelCopyWithImpl<$Res, BillingModel>;
  @useResult
  $Res call({String id, int invoiceMonth, int invoiceYear});
}

/// @nodoc
class _$BillingModelCopyWithImpl<$Res, $Val extends BillingModel>
    implements $BillingModelCopyWith<$Res> {
  _$BillingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceMonth = null,
    Object? invoiceYear = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceMonth: null == invoiceMonth
          ? _value.invoiceMonth
          : invoiceMonth // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceYear: null == invoiceYear
          ? _value.invoiceYear
          : invoiceYear // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingModelImplCopyWith<$Res>
    implements $BillingModelCopyWith<$Res> {
  factory _$$BillingModelImplCopyWith(
          _$BillingModelImpl value, $Res Function(_$BillingModelImpl) then) =
      __$$BillingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int invoiceMonth, int invoiceYear});
}

/// @nodoc
class __$$BillingModelImplCopyWithImpl<$Res>
    extends _$BillingModelCopyWithImpl<$Res, _$BillingModelImpl>
    implements _$$BillingModelImplCopyWith<$Res> {
  __$$BillingModelImplCopyWithImpl(
      _$BillingModelImpl _value, $Res Function(_$BillingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceMonth = null,
    Object? invoiceYear = null,
  }) {
    return _then(_$BillingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceMonth: null == invoiceMonth
          ? _value.invoiceMonth
          : invoiceMonth // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceYear: null == invoiceYear
          ? _value.invoiceYear
          : invoiceYear // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingModelImpl implements _BillingModel {
  const _$BillingModelImpl(
      {this.id = '', this.invoiceMonth = 0, this.invoiceYear = 0});

  factory _$BillingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final int invoiceMonth;
  @override
  @JsonKey()
  final int invoiceYear;

  @override
  String toString() {
    return 'BillingModel(id: $id, invoiceMonth: $invoiceMonth, invoiceYear: $invoiceYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceMonth, invoiceMonth) ||
                other.invoiceMonth == invoiceMonth) &&
            (identical(other.invoiceYear, invoiceYear) ||
                other.invoiceYear == invoiceYear));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, invoiceMonth, invoiceYear);

  /// Create a copy of BillingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingModelImplCopyWith<_$BillingModelImpl> get copyWith =>
      __$$BillingModelImplCopyWithImpl<_$BillingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingModelImplToJson(
      this,
    );
  }
}

abstract class _BillingModel implements BillingModel {
  const factory _BillingModel(
      {final String id,
      final int invoiceMonth,
      final int invoiceYear}) = _$BillingModelImpl;

  factory _BillingModel.fromJson(Map<String, dynamic> json) =
      _$BillingModelImpl.fromJson;

  @override
  String get id;
  @override
  int get invoiceMonth;
  @override
  int get invoiceYear;

  /// Create a copy of BillingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingModelImplCopyWith<_$BillingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
