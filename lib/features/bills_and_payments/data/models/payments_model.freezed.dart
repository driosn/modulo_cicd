// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentsModel _$PaymentsModelFromJson(Map<String, dynamic> json) {
  return _PaymentsModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentsModel {
  List<PaymentModel> get payments => throw _privateConstructorUsedError;

  /// Serializes this PaymentsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentsModelCopyWith<PaymentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsModelCopyWith<$Res> {
  factory $PaymentsModelCopyWith(
          PaymentsModel value, $Res Function(PaymentsModel) then) =
      _$PaymentsModelCopyWithImpl<$Res, PaymentsModel>;
  @useResult
  $Res call({List<PaymentModel> payments});
}

/// @nodoc
class _$PaymentsModelCopyWithImpl<$Res, $Val extends PaymentsModel>
    implements $PaymentsModelCopyWith<$Res> {
  _$PaymentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = null,
  }) {
    return _then(_value.copyWith(
      payments: null == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentsModelImplCopyWith<$Res>
    implements $PaymentsModelCopyWith<$Res> {
  factory _$$PaymentsModelImplCopyWith(
          _$PaymentsModelImpl value, $Res Function(_$PaymentsModelImpl) then) =
      __$$PaymentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentModel> payments});
}

/// @nodoc
class __$$PaymentsModelImplCopyWithImpl<$Res>
    extends _$PaymentsModelCopyWithImpl<$Res, _$PaymentsModelImpl>
    implements _$$PaymentsModelImplCopyWith<$Res> {
  __$$PaymentsModelImplCopyWithImpl(
      _$PaymentsModelImpl _value, $Res Function(_$PaymentsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payments = null,
  }) {
    return _then(_$PaymentsModelImpl(
      payments: null == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentsModelImpl implements _PaymentsModel {
  const _$PaymentsModelImpl(
      {final List<PaymentModel> payments = const <PaymentModel>[]})
      : _payments = payments;

  factory _$PaymentsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentsModelImplFromJson(json);

  final List<PaymentModel> _payments;
  @override
  @JsonKey()
  List<PaymentModel> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  String toString() {
    return 'PaymentsModel(payments: $payments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentsModelImpl &&
            const DeepCollectionEquality().equals(other._payments, _payments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_payments));

  /// Create a copy of PaymentsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentsModelImplCopyWith<_$PaymentsModelImpl> get copyWith =>
      __$$PaymentsModelImplCopyWithImpl<_$PaymentsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentsModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentsModel implements PaymentsModel {
  const factory _PaymentsModel({final List<PaymentModel> payments}) =
      _$PaymentsModelImpl;

  factory _PaymentsModel.fromJson(Map<String, dynamic> json) =
      _$PaymentsModelImpl.fromJson;

  @override
  List<PaymentModel> get payments;

  /// Create a copy of PaymentsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentsModelImplCopyWith<_$PaymentsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return _PaymentModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentModel {
  int get transactionNumber => throw _privateConstructorUsedError;
  double get paymentAmount => throw _privateConstructorUsedError;
  String get paymentDate => throw _privateConstructorUsedError;
  String get payToTypeDescription => throw _privateConstructorUsedError;
  int get payToType => throw _privateConstructorUsedError;
  String get payToName => throw _privateConstructorUsedError;
  String get paymentTypeDescription => throw _privateConstructorUsedError;
  int get paymentType => throw _privateConstructorUsedError;
  String get loanApplicationTypeDescription =>
      throw _privateConstructorUsedError;
  int get loanApplicationType => throw _privateConstructorUsedError;
  String get paymentStatusDescription => throw _privateConstructorUsedError;
  int get paymentStatus => throw _privateConstructorUsedError;

  /// Serializes this PaymentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res, PaymentModel>;
  @useResult
  $Res call(
      {int transactionNumber,
      double paymentAmount,
      String paymentDate,
      String payToTypeDescription,
      int payToType,
      String payToName,
      String paymentTypeDescription,
      int paymentType,
      String loanApplicationTypeDescription,
      int loanApplicationType,
      String paymentStatusDescription,
      int paymentStatus});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res, $Val extends PaymentModel>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionNumber = null,
    Object? paymentAmount = null,
    Object? paymentDate = null,
    Object? payToTypeDescription = null,
    Object? payToType = null,
    Object? payToName = null,
    Object? paymentTypeDescription = null,
    Object? paymentType = null,
    Object? loanApplicationTypeDescription = null,
    Object? loanApplicationType = null,
    Object? paymentStatusDescription = null,
    Object? paymentStatus = null,
  }) {
    return _then(_value.copyWith(
      transactionNumber: null == transactionNumber
          ? _value.transactionNumber
          : transactionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      payToTypeDescription: null == payToTypeDescription
          ? _value.payToTypeDescription
          : payToTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      payToType: null == payToType
          ? _value.payToType
          : payToType // ignore: cast_nullable_to_non_nullable
              as int,
      payToName: null == payToName
          ? _value.payToName
          : payToName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeDescription: null == paymentTypeDescription
          ? _value.paymentTypeDescription
          : paymentTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int,
      loanApplicationTypeDescription: null == loanApplicationTypeDescription
          ? _value.loanApplicationTypeDescription
          : loanApplicationTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      loanApplicationType: null == loanApplicationType
          ? _value.loanApplicationType
          : loanApplicationType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentStatusDescription: null == paymentStatusDescription
          ? _value.paymentStatusDescription
          : paymentStatusDescription // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentModelImplCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$$PaymentModelImplCopyWith(
          _$PaymentModelImpl value, $Res Function(_$PaymentModelImpl) then) =
      __$$PaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int transactionNumber,
      double paymentAmount,
      String paymentDate,
      String payToTypeDescription,
      int payToType,
      String payToName,
      String paymentTypeDescription,
      int paymentType,
      String loanApplicationTypeDescription,
      int loanApplicationType,
      String paymentStatusDescription,
      int paymentStatus});
}

/// @nodoc
class __$$PaymentModelImplCopyWithImpl<$Res>
    extends _$PaymentModelCopyWithImpl<$Res, _$PaymentModelImpl>
    implements _$$PaymentModelImplCopyWith<$Res> {
  __$$PaymentModelImplCopyWithImpl(
      _$PaymentModelImpl _value, $Res Function(_$PaymentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionNumber = null,
    Object? paymentAmount = null,
    Object? paymentDate = null,
    Object? payToTypeDescription = null,
    Object? payToType = null,
    Object? payToName = null,
    Object? paymentTypeDescription = null,
    Object? paymentType = null,
    Object? loanApplicationTypeDescription = null,
    Object? loanApplicationType = null,
    Object? paymentStatusDescription = null,
    Object? paymentStatus = null,
  }) {
    return _then(_$PaymentModelImpl(
      transactionNumber: null == transactionNumber
          ? _value.transactionNumber
          : transactionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String,
      payToTypeDescription: null == payToTypeDescription
          ? _value.payToTypeDescription
          : payToTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      payToType: null == payToType
          ? _value.payToType
          : payToType // ignore: cast_nullable_to_non_nullable
              as int,
      payToName: null == payToName
          ? _value.payToName
          : payToName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeDescription: null == paymentTypeDescription
          ? _value.paymentTypeDescription
          : paymentTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int,
      loanApplicationTypeDescription: null == loanApplicationTypeDescription
          ? _value.loanApplicationTypeDescription
          : loanApplicationTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      loanApplicationType: null == loanApplicationType
          ? _value.loanApplicationType
          : loanApplicationType // ignore: cast_nullable_to_non_nullable
              as int,
      paymentStatusDescription: null == paymentStatusDescription
          ? _value.paymentStatusDescription
          : paymentStatusDescription // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentModelImpl implements _PaymentModel {
  const _$PaymentModelImpl(
      {this.transactionNumber = 0,
      this.paymentAmount = 0,
      this.paymentDate = '',
      this.payToTypeDescription = '',
      this.payToType = 0,
      this.payToName = '',
      this.paymentTypeDescription = '',
      this.paymentType = 0,
      this.loanApplicationTypeDescription = '',
      this.loanApplicationType = 0,
      this.paymentStatusDescription = '',
      this.paymentStatus = 0});

  factory _$PaymentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentModelImplFromJson(json);

  @override
  @JsonKey()
  final int transactionNumber;
  @override
  @JsonKey()
  final double paymentAmount;
  @override
  @JsonKey()
  final String paymentDate;
  @override
  @JsonKey()
  final String payToTypeDescription;
  @override
  @JsonKey()
  final int payToType;
  @override
  @JsonKey()
  final String payToName;
  @override
  @JsonKey()
  final String paymentTypeDescription;
  @override
  @JsonKey()
  final int paymentType;
  @override
  @JsonKey()
  final String loanApplicationTypeDescription;
  @override
  @JsonKey()
  final int loanApplicationType;
  @override
  @JsonKey()
  final String paymentStatusDescription;
  @override
  @JsonKey()
  final int paymentStatus;

  @override
  String toString() {
    return 'PaymentModel(transactionNumber: $transactionNumber, paymentAmount: $paymentAmount, paymentDate: $paymentDate, payToTypeDescription: $payToTypeDescription, payToType: $payToType, payToName: $payToName, paymentTypeDescription: $paymentTypeDescription, paymentType: $paymentType, loanApplicationTypeDescription: $loanApplicationTypeDescription, loanApplicationType: $loanApplicationType, paymentStatusDescription: $paymentStatusDescription, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentModelImpl &&
            (identical(other.transactionNumber, transactionNumber) ||
                other.transactionNumber == transactionNumber) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.payToTypeDescription, payToTypeDescription) ||
                other.payToTypeDescription == payToTypeDescription) &&
            (identical(other.payToType, payToType) ||
                other.payToType == payToType) &&
            (identical(other.payToName, payToName) ||
                other.payToName == payToName) &&
            (identical(other.paymentTypeDescription, paymentTypeDescription) ||
                other.paymentTypeDescription == paymentTypeDescription) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.loanApplicationTypeDescription,
                    loanApplicationTypeDescription) ||
                other.loanApplicationTypeDescription ==
                    loanApplicationTypeDescription) &&
            (identical(other.loanApplicationType, loanApplicationType) ||
                other.loanApplicationType == loanApplicationType) &&
            (identical(
                    other.paymentStatusDescription, paymentStatusDescription) ||
                other.paymentStatusDescription == paymentStatusDescription) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      transactionNumber,
      paymentAmount,
      paymentDate,
      payToTypeDescription,
      payToType,
      payToName,
      paymentTypeDescription,
      paymentType,
      loanApplicationTypeDescription,
      loanApplicationType,
      paymentStatusDescription,
      paymentStatus);

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      __$$PaymentModelImplCopyWithImpl<_$PaymentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentModel implements PaymentModel {
  const factory _PaymentModel(
      {final int transactionNumber,
      final double paymentAmount,
      final String paymentDate,
      final String payToTypeDescription,
      final int payToType,
      final String payToName,
      final String paymentTypeDescription,
      final int paymentType,
      final String loanApplicationTypeDescription,
      final int loanApplicationType,
      final String paymentStatusDescription,
      final int paymentStatus}) = _$PaymentModelImpl;

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$PaymentModelImpl.fromJson;

  @override
  int get transactionNumber;
  @override
  double get paymentAmount;
  @override
  String get paymentDate;
  @override
  String get payToTypeDescription;
  @override
  int get payToType;
  @override
  String get payToName;
  @override
  String get paymentTypeDescription;
  @override
  int get paymentType;
  @override
  String get loanApplicationTypeDescription;
  @override
  int get loanApplicationType;
  @override
  String get paymentStatusDescription;
  @override
  int get paymentStatus;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
