// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_accounts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentAccountsModel _$PaymentAccountsModelFromJson(Map<String, dynamic> json) {
  return _PaymentAccountsModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentAccountsModel {
  String get paymentAccountId => throw _privateConstructorUsedError;
  PaymentProcessorModel get paymentProcessor =>
      throw _privateConstructorUsedError;
  BankAccountOptionModel get bankAccountOption =>
      throw _privateConstructorUsedError;
  String get bankRoutingNumber => throw _privateConstructorUsedError;
  String get bankAccountEnding => throw _privateConstructorUsedError;
  String get maskedBankAccountNumber => throw _privateConstructorUsedError;
  String get creditCardEnding => throw _privateConstructorUsedError;
  String get maskedCreditCardAccountNumber =>
      throw _privateConstructorUsedError;

  /// Serializes this PaymentAccountsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentAccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentAccountsModelCopyWith<PaymentAccountsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAccountsModelCopyWith<$Res> {
  factory $PaymentAccountsModelCopyWith(PaymentAccountsModel value,
          $Res Function(PaymentAccountsModel) then) =
      _$PaymentAccountsModelCopyWithImpl<$Res, PaymentAccountsModel>;
  @useResult
  $Res call(
      {String paymentAccountId,
      PaymentProcessorModel paymentProcessor,
      BankAccountOptionModel bankAccountOption,
      String bankRoutingNumber,
      String bankAccountEnding,
      String maskedBankAccountNumber,
      String creditCardEnding,
      String maskedCreditCardAccountNumber});

  $PaymentProcessorModelCopyWith<$Res> get paymentProcessor;
  $BankAccountOptionModelCopyWith<$Res> get bankAccountOption;
}

/// @nodoc
class _$PaymentAccountsModelCopyWithImpl<$Res,
        $Val extends PaymentAccountsModel>
    implements $PaymentAccountsModelCopyWith<$Res> {
  _$PaymentAccountsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentAccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAccountId = null,
    Object? paymentProcessor = null,
    Object? bankAccountOption = null,
    Object? bankRoutingNumber = null,
    Object? bankAccountEnding = null,
    Object? maskedBankAccountNumber = null,
    Object? creditCardEnding = null,
    Object? maskedCreditCardAccountNumber = null,
  }) {
    return _then(_value.copyWith(
      paymentAccountId: null == paymentAccountId
          ? _value.paymentAccountId
          : paymentAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentProcessor: null == paymentProcessor
          ? _value.paymentProcessor
          : paymentProcessor // ignore: cast_nullable_to_non_nullable
              as PaymentProcessorModel,
      bankAccountOption: null == bankAccountOption
          ? _value.bankAccountOption
          : bankAccountOption // ignore: cast_nullable_to_non_nullable
              as BankAccountOptionModel,
      bankRoutingNumber: null == bankRoutingNumber
          ? _value.bankRoutingNumber
          : bankRoutingNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccountEnding: null == bankAccountEnding
          ? _value.bankAccountEnding
          : bankAccountEnding // ignore: cast_nullable_to_non_nullable
              as String,
      maskedBankAccountNumber: null == maskedBankAccountNumber
          ? _value.maskedBankAccountNumber
          : maskedBankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardEnding: null == creditCardEnding
          ? _value.creditCardEnding
          : creditCardEnding // ignore: cast_nullable_to_non_nullable
              as String,
      maskedCreditCardAccountNumber: null == maskedCreditCardAccountNumber
          ? _value.maskedCreditCardAccountNumber
          : maskedCreditCardAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of PaymentAccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentProcessorModelCopyWith<$Res> get paymentProcessor {
    return $PaymentProcessorModelCopyWith<$Res>(_value.paymentProcessor,
        (value) {
      return _then(_value.copyWith(paymentProcessor: value) as $Val);
    });
  }

  /// Create a copy of PaymentAccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankAccountOptionModelCopyWith<$Res> get bankAccountOption {
    return $BankAccountOptionModelCopyWith<$Res>(_value.bankAccountOption,
        (value) {
      return _then(_value.copyWith(bankAccountOption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentAccountsModelImplCopyWith<$Res>
    implements $PaymentAccountsModelCopyWith<$Res> {
  factory _$$PaymentAccountsModelImplCopyWith(_$PaymentAccountsModelImpl value,
          $Res Function(_$PaymentAccountsModelImpl) then) =
      __$$PaymentAccountsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String paymentAccountId,
      PaymentProcessorModel paymentProcessor,
      BankAccountOptionModel bankAccountOption,
      String bankRoutingNumber,
      String bankAccountEnding,
      String maskedBankAccountNumber,
      String creditCardEnding,
      String maskedCreditCardAccountNumber});

  @override
  $PaymentProcessorModelCopyWith<$Res> get paymentProcessor;
  @override
  $BankAccountOptionModelCopyWith<$Res> get bankAccountOption;
}

/// @nodoc
class __$$PaymentAccountsModelImplCopyWithImpl<$Res>
    extends _$PaymentAccountsModelCopyWithImpl<$Res, _$PaymentAccountsModelImpl>
    implements _$$PaymentAccountsModelImplCopyWith<$Res> {
  __$$PaymentAccountsModelImplCopyWithImpl(_$PaymentAccountsModelImpl _value,
      $Res Function(_$PaymentAccountsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAccountId = null,
    Object? paymentProcessor = null,
    Object? bankAccountOption = null,
    Object? bankRoutingNumber = null,
    Object? bankAccountEnding = null,
    Object? maskedBankAccountNumber = null,
    Object? creditCardEnding = null,
    Object? maskedCreditCardAccountNumber = null,
  }) {
    return _then(_$PaymentAccountsModelImpl(
      paymentAccountId: null == paymentAccountId
          ? _value.paymentAccountId
          : paymentAccountId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentProcessor: null == paymentProcessor
          ? _value.paymentProcessor
          : paymentProcessor // ignore: cast_nullable_to_non_nullable
              as PaymentProcessorModel,
      bankAccountOption: null == bankAccountOption
          ? _value.bankAccountOption
          : bankAccountOption // ignore: cast_nullable_to_non_nullable
              as BankAccountOptionModel,
      bankRoutingNumber: null == bankRoutingNumber
          ? _value.bankRoutingNumber
          : bankRoutingNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccountEnding: null == bankAccountEnding
          ? _value.bankAccountEnding
          : bankAccountEnding // ignore: cast_nullable_to_non_nullable
              as String,
      maskedBankAccountNumber: null == maskedBankAccountNumber
          ? _value.maskedBankAccountNumber
          : maskedBankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardEnding: null == creditCardEnding
          ? _value.creditCardEnding
          : creditCardEnding // ignore: cast_nullable_to_non_nullable
              as String,
      maskedCreditCardAccountNumber: null == maskedCreditCardAccountNumber
          ? _value.maskedCreditCardAccountNumber
          : maskedCreditCardAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentAccountsModelImpl implements _PaymentAccountsModel {
  const _$PaymentAccountsModelImpl(
      {this.paymentAccountId = '',
      this.paymentProcessor = const PaymentProcessorModel(),
      this.bankAccountOption = const BankAccountOptionModel(),
      this.bankRoutingNumber = '',
      this.bankAccountEnding = '',
      this.maskedBankAccountNumber = '',
      this.creditCardEnding = '',
      this.maskedCreditCardAccountNumber = ''});

  factory _$PaymentAccountsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentAccountsModelImplFromJson(json);

  @override
  @JsonKey()
  final String paymentAccountId;
  @override
  @JsonKey()
  final PaymentProcessorModel paymentProcessor;
  @override
  @JsonKey()
  final BankAccountOptionModel bankAccountOption;
  @override
  @JsonKey()
  final String bankRoutingNumber;
  @override
  @JsonKey()
  final String bankAccountEnding;
  @override
  @JsonKey()
  final String maskedBankAccountNumber;
  @override
  @JsonKey()
  final String creditCardEnding;
  @override
  @JsonKey()
  final String maskedCreditCardAccountNumber;

  @override
  String toString() {
    return 'PaymentAccountsModel(paymentAccountId: $paymentAccountId, paymentProcessor: $paymentProcessor, bankAccountOption: $bankAccountOption, bankRoutingNumber: $bankRoutingNumber, bankAccountEnding: $bankAccountEnding, maskedBankAccountNumber: $maskedBankAccountNumber, creditCardEnding: $creditCardEnding, maskedCreditCardAccountNumber: $maskedCreditCardAccountNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentAccountsModelImpl &&
            (identical(other.paymentAccountId, paymentAccountId) ||
                other.paymentAccountId == paymentAccountId) &&
            (identical(other.paymentProcessor, paymentProcessor) ||
                other.paymentProcessor == paymentProcessor) &&
            (identical(other.bankAccountOption, bankAccountOption) ||
                other.bankAccountOption == bankAccountOption) &&
            (identical(other.bankRoutingNumber, bankRoutingNumber) ||
                other.bankRoutingNumber == bankRoutingNumber) &&
            (identical(other.bankAccountEnding, bankAccountEnding) ||
                other.bankAccountEnding == bankAccountEnding) &&
            (identical(
                    other.maskedBankAccountNumber, maskedBankAccountNumber) ||
                other.maskedBankAccountNumber == maskedBankAccountNumber) &&
            (identical(other.creditCardEnding, creditCardEnding) ||
                other.creditCardEnding == creditCardEnding) &&
            (identical(other.maskedCreditCardAccountNumber,
                    maskedCreditCardAccountNumber) ||
                other.maskedCreditCardAccountNumber ==
                    maskedCreditCardAccountNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentAccountId,
      paymentProcessor,
      bankAccountOption,
      bankRoutingNumber,
      bankAccountEnding,
      maskedBankAccountNumber,
      creditCardEnding,
      maskedCreditCardAccountNumber);

  /// Create a copy of PaymentAccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentAccountsModelImplCopyWith<_$PaymentAccountsModelImpl>
      get copyWith =>
          __$$PaymentAccountsModelImplCopyWithImpl<_$PaymentAccountsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentAccountsModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentAccountsModel implements PaymentAccountsModel {
  const factory _PaymentAccountsModel(
      {final String paymentAccountId,
      final PaymentProcessorModel paymentProcessor,
      final BankAccountOptionModel bankAccountOption,
      final String bankRoutingNumber,
      final String bankAccountEnding,
      final String maskedBankAccountNumber,
      final String creditCardEnding,
      final String maskedCreditCardAccountNumber}) = _$PaymentAccountsModelImpl;

  factory _PaymentAccountsModel.fromJson(Map<String, dynamic> json) =
      _$PaymentAccountsModelImpl.fromJson;

  @override
  String get paymentAccountId;
  @override
  PaymentProcessorModel get paymentProcessor;
  @override
  BankAccountOptionModel get bankAccountOption;
  @override
  String get bankRoutingNumber;
  @override
  String get bankAccountEnding;
  @override
  String get maskedBankAccountNumber;
  @override
  String get creditCardEnding;
  @override
  String get maskedCreditCardAccountNumber;

  /// Create a copy of PaymentAccountsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentAccountsModelImplCopyWith<_$PaymentAccountsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentProcessorModel _$PaymentProcessorModelFromJson(
    Map<String, dynamic> json) {
  return _PaymentProcessorModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentProcessorModel {
  String get paymentProcessorType => throw _privateConstructorUsedError;
  String get paymentProcessorTypeDescription =>
      throw _privateConstructorUsedError;

  /// Serializes this PaymentProcessorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentProcessorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentProcessorModelCopyWith<PaymentProcessorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentProcessorModelCopyWith<$Res> {
  factory $PaymentProcessorModelCopyWith(PaymentProcessorModel value,
          $Res Function(PaymentProcessorModel) then) =
      _$PaymentProcessorModelCopyWithImpl<$Res, PaymentProcessorModel>;
  @useResult
  $Res call(
      {String paymentProcessorType, String paymentProcessorTypeDescription});
}

/// @nodoc
class _$PaymentProcessorModelCopyWithImpl<$Res,
        $Val extends PaymentProcessorModel>
    implements $PaymentProcessorModelCopyWith<$Res> {
  _$PaymentProcessorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentProcessorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentProcessorType = null,
    Object? paymentProcessorTypeDescription = null,
  }) {
    return _then(_value.copyWith(
      paymentProcessorType: null == paymentProcessorType
          ? _value.paymentProcessorType
          : paymentProcessorType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentProcessorTypeDescription: null == paymentProcessorTypeDescription
          ? _value.paymentProcessorTypeDescription
          : paymentProcessorTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentProcessorModelImplCopyWith<$Res>
    implements $PaymentProcessorModelCopyWith<$Res> {
  factory _$$PaymentProcessorModelImplCopyWith(
          _$PaymentProcessorModelImpl value,
          $Res Function(_$PaymentProcessorModelImpl) then) =
      __$$PaymentProcessorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String paymentProcessorType, String paymentProcessorTypeDescription});
}

/// @nodoc
class __$$PaymentProcessorModelImplCopyWithImpl<$Res>
    extends _$PaymentProcessorModelCopyWithImpl<$Res,
        _$PaymentProcessorModelImpl>
    implements _$$PaymentProcessorModelImplCopyWith<$Res> {
  __$$PaymentProcessorModelImplCopyWithImpl(_$PaymentProcessorModelImpl _value,
      $Res Function(_$PaymentProcessorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentProcessorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentProcessorType = null,
    Object? paymentProcessorTypeDescription = null,
  }) {
    return _then(_$PaymentProcessorModelImpl(
      paymentProcessorType: null == paymentProcessorType
          ? _value.paymentProcessorType
          : paymentProcessorType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentProcessorTypeDescription: null == paymentProcessorTypeDescription
          ? _value.paymentProcessorTypeDescription
          : paymentProcessorTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentProcessorModelImpl implements _PaymentProcessorModel {
  const _$PaymentProcessorModelImpl(
      {this.paymentProcessorType = '',
      this.paymentProcessorTypeDescription = ''});

  factory _$PaymentProcessorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentProcessorModelImplFromJson(json);

  @override
  @JsonKey()
  final String paymentProcessorType;
  @override
  @JsonKey()
  final String paymentProcessorTypeDescription;

  @override
  String toString() {
    return 'PaymentProcessorModel(paymentProcessorType: $paymentProcessorType, paymentProcessorTypeDescription: $paymentProcessorTypeDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentProcessorModelImpl &&
            (identical(other.paymentProcessorType, paymentProcessorType) ||
                other.paymentProcessorType == paymentProcessorType) &&
            (identical(other.paymentProcessorTypeDescription,
                    paymentProcessorTypeDescription) ||
                other.paymentProcessorTypeDescription ==
                    paymentProcessorTypeDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, paymentProcessorType, paymentProcessorTypeDescription);

  /// Create a copy of PaymentProcessorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentProcessorModelImplCopyWith<_$PaymentProcessorModelImpl>
      get copyWith => __$$PaymentProcessorModelImplCopyWithImpl<
          _$PaymentProcessorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentProcessorModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentProcessorModel implements PaymentProcessorModel {
  const factory _PaymentProcessorModel(
          {final String paymentProcessorType,
          final String paymentProcessorTypeDescription}) =
      _$PaymentProcessorModelImpl;

  factory _PaymentProcessorModel.fromJson(Map<String, dynamic> json) =
      _$PaymentProcessorModelImpl.fromJson;

  @override
  String get paymentProcessorType;
  @override
  String get paymentProcessorTypeDescription;

  /// Create a copy of PaymentProcessorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentProcessorModelImplCopyWith<_$PaymentProcessorModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BankAccountOptionModel _$BankAccountOptionModelFromJson(
    Map<String, dynamic> json) {
  return _BankAccountOptionModel.fromJson(json);
}

/// @nodoc
mixin _$BankAccountOptionModel {
  BankAccountType get bankAccountType => throw _privateConstructorUsedError;
  String get bankAccountTypeDescription => throw _privateConstructorUsedError;

  /// Serializes this BankAccountOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BankAccountOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankAccountOptionModelCopyWith<BankAccountOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountOptionModelCopyWith<$Res> {
  factory $BankAccountOptionModelCopyWith(BankAccountOptionModel value,
          $Res Function(BankAccountOptionModel) then) =
      _$BankAccountOptionModelCopyWithImpl<$Res, BankAccountOptionModel>;
  @useResult
  $Res call(
      {BankAccountType bankAccountType, String bankAccountTypeDescription});
}

/// @nodoc
class _$BankAccountOptionModelCopyWithImpl<$Res,
        $Val extends BankAccountOptionModel>
    implements $BankAccountOptionModelCopyWith<$Res> {
  _$BankAccountOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankAccountOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankAccountType = null,
    Object? bankAccountTypeDescription = null,
  }) {
    return _then(_value.copyWith(
      bankAccountType: null == bankAccountType
          ? _value.bankAccountType
          : bankAccountType // ignore: cast_nullable_to_non_nullable
              as BankAccountType,
      bankAccountTypeDescription: null == bankAccountTypeDescription
          ? _value.bankAccountTypeDescription
          : bankAccountTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankAccountOptionModelImplCopyWith<$Res>
    implements $BankAccountOptionModelCopyWith<$Res> {
  factory _$$BankAccountOptionModelImplCopyWith(
          _$BankAccountOptionModelImpl value,
          $Res Function(_$BankAccountOptionModelImpl) then) =
      __$$BankAccountOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BankAccountType bankAccountType, String bankAccountTypeDescription});
}

/// @nodoc
class __$$BankAccountOptionModelImplCopyWithImpl<$Res>
    extends _$BankAccountOptionModelCopyWithImpl<$Res,
        _$BankAccountOptionModelImpl>
    implements _$$BankAccountOptionModelImplCopyWith<$Res> {
  __$$BankAccountOptionModelImplCopyWithImpl(
      _$BankAccountOptionModelImpl _value,
      $Res Function(_$BankAccountOptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankAccountOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankAccountType = null,
    Object? bankAccountTypeDescription = null,
  }) {
    return _then(_$BankAccountOptionModelImpl(
      bankAccountType: null == bankAccountType
          ? _value.bankAccountType
          : bankAccountType // ignore: cast_nullable_to_non_nullable
              as BankAccountType,
      bankAccountTypeDescription: null == bankAccountTypeDescription
          ? _value.bankAccountTypeDescription
          : bankAccountTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankAccountOptionModelImpl implements _BankAccountOptionModel {
  const _$BankAccountOptionModelImpl(
      {this.bankAccountType = BankAccountType.unknown,
      this.bankAccountTypeDescription = ''});

  factory _$BankAccountOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankAccountOptionModelImplFromJson(json);

  @override
  @JsonKey()
  final BankAccountType bankAccountType;
  @override
  @JsonKey()
  final String bankAccountTypeDescription;

  @override
  String toString() {
    return 'BankAccountOptionModel(bankAccountType: $bankAccountType, bankAccountTypeDescription: $bankAccountTypeDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankAccountOptionModelImpl &&
            (identical(other.bankAccountType, bankAccountType) ||
                other.bankAccountType == bankAccountType) &&
            (identical(other.bankAccountTypeDescription,
                    bankAccountTypeDescription) ||
                other.bankAccountTypeDescription ==
                    bankAccountTypeDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bankAccountType, bankAccountTypeDescription);

  /// Create a copy of BankAccountOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankAccountOptionModelImplCopyWith<_$BankAccountOptionModelImpl>
      get copyWith => __$$BankAccountOptionModelImplCopyWithImpl<
          _$BankAccountOptionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankAccountOptionModelImplToJson(
      this,
    );
  }
}

abstract class _BankAccountOptionModel implements BankAccountOptionModel {
  const factory _BankAccountOptionModel(
      {final BankAccountType bankAccountType,
      final String bankAccountTypeDescription}) = _$BankAccountOptionModelImpl;

  factory _BankAccountOptionModel.fromJson(Map<String, dynamic> json) =
      _$BankAccountOptionModelImpl.fromJson;

  @override
  BankAccountType get bankAccountType;
  @override
  String get bankAccountTypeDescription;

  /// Create a copy of BankAccountOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankAccountOptionModelImplCopyWith<_$BankAccountOptionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
