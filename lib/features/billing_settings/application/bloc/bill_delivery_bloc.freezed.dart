// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_delivery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BillDeliveryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BillDeliveryType deliveryType) setDeliveryType,
    required TResult Function(String email) setEmailAddress,
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function(int leadDays) setLeadDaysForBillReminder,
    required TResult Function(String email, String phoneNumber, int leadDays)
        setBillingSettings,
    required TResult Function(bool readmode) setReadMode,
    required TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)
        setDefaultValues,
    required TResult Function(BillDeliveryType billDeliveryType,
            String emailAddress, String phoneNumber, int leadDays)
        initializeBillingSettings,
    required TResult Function() validateEmailAddress,
    required TResult Function() validatePhoneNumber,
    required TResult Function(String residentId) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult? Function(String email)? setEmailAddress,
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function(int leadDays)? setLeadDaysForBillReminder,
    TResult? Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult? Function(bool readmode)? setReadMode,
    TResult? Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult? Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult? Function()? validateEmailAddress,
    TResult? Function()? validatePhoneNumber,
    TResult? Function(String residentId)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult Function(String email)? setEmailAddress,
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function(int leadDays)? setLeadDaysForBillReminder,
    TResult Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult Function(bool readmode)? setReadMode,
    TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult Function()? validateEmailAddress,
    TResult Function()? validatePhoneNumber,
    TResult Function(String residentId)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDeliveryType value) setDeliveryType,
    required TResult Function(_SetEmailAddress value) setEmailAddress,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_SetLeadDaysForBillReminder value)
        setLeadDaysForBillReminder,
    required TResult Function(_SetBillingSettings value) setBillingSettings,
    required TResult Function(_SetReadMode value) setReadMode,
    required TResult Function(_SetDefaultValues value) setDefaultValues,
    required TResult Function(_InitializeBillingSettings value)
        initializeBillingSettings,
    required TResult Function(_ValidateEmailAddress value) validateEmailAddress,
    required TResult Function(_ValidatePhoneNumber value) validatePhoneNumber,
    required TResult Function(_UpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDeliveryType value)? setDeliveryType,
    TResult? Function(_SetEmailAddress value)? setEmailAddress,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult? Function(_SetBillingSettings value)? setBillingSettings,
    TResult? Function(_SetReadMode value)? setReadMode,
    TResult? Function(_SetDefaultValues value)? setDefaultValues,
    TResult? Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult? Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult? Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult? Function(_UpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDeliveryType value)? setDeliveryType,
    TResult Function(_SetEmailAddress value)? setEmailAddress,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult Function(_SetBillingSettings value)? setBillingSettings,
    TResult Function(_SetReadMode value)? setReadMode,
    TResult Function(_SetDefaultValues value)? setDefaultValues,
    TResult Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillDeliveryEventCopyWith<$Res> {
  factory $BillDeliveryEventCopyWith(
          BillDeliveryEvent value, $Res Function(BillDeliveryEvent) then) =
      _$BillDeliveryEventCopyWithImpl<$Res, BillDeliveryEvent>;
}

/// @nodoc
class _$BillDeliveryEventCopyWithImpl<$Res, $Val extends BillDeliveryEvent>
    implements $BillDeliveryEventCopyWith<$Res> {
  _$BillDeliveryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetDeliveryTypeImplCopyWith<$Res> {
  factory _$$SetDeliveryTypeImplCopyWith(_$SetDeliveryTypeImpl value,
          $Res Function(_$SetDeliveryTypeImpl) then) =
      __$$SetDeliveryTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BillDeliveryType deliveryType});

  $BillDeliveryTypeCopyWith<$Res> get deliveryType;
}

/// @nodoc
class __$$SetDeliveryTypeImplCopyWithImpl<$Res>
    extends _$BillDeliveryEventCopyWithImpl<$Res, _$SetDeliveryTypeImpl>
    implements _$$SetDeliveryTypeImplCopyWith<$Res> {
  __$$SetDeliveryTypeImplCopyWithImpl(
      _$SetDeliveryTypeImpl _value, $Res Function(_$SetDeliveryTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryType = null,
  }) {
    return _then(_$SetDeliveryTypeImpl(
      null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as BillDeliveryType,
    ));
  }

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillDeliveryTypeCopyWith<$Res> get deliveryType {
    return $BillDeliveryTypeCopyWith<$Res>(_value.deliveryType, (value) {
      return _then(_value.copyWith(deliveryType: value));
    });
  }
}

/// @nodoc

class _$SetDeliveryTypeImpl implements _SetDeliveryType {
  const _$SetDeliveryTypeImpl(this.deliveryType);

  @override
  final BillDeliveryType deliveryType;

  @override
  String toString() {
    return 'BillDeliveryEvent.setDeliveryType(deliveryType: $deliveryType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDeliveryTypeImpl &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deliveryType);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDeliveryTypeImplCopyWith<_$SetDeliveryTypeImpl> get copyWith =>
      __$$SetDeliveryTypeImplCopyWithImpl<_$SetDeliveryTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BillDeliveryType deliveryType) setDeliveryType,
    required TResult Function(String email) setEmailAddress,
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function(int leadDays) setLeadDaysForBillReminder,
    required TResult Function(String email, String phoneNumber, int leadDays)
        setBillingSettings,
    required TResult Function(bool readmode) setReadMode,
    required TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)
        setDefaultValues,
    required TResult Function(BillDeliveryType billDeliveryType,
            String emailAddress, String phoneNumber, int leadDays)
        initializeBillingSettings,
    required TResult Function() validateEmailAddress,
    required TResult Function() validatePhoneNumber,
    required TResult Function(String residentId) update,
  }) {
    return setDeliveryType(deliveryType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult? Function(String email)? setEmailAddress,
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function(int leadDays)? setLeadDaysForBillReminder,
    TResult? Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult? Function(bool readmode)? setReadMode,
    TResult? Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult? Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult? Function()? validateEmailAddress,
    TResult? Function()? validatePhoneNumber,
    TResult? Function(String residentId)? update,
  }) {
    return setDeliveryType?.call(deliveryType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult Function(String email)? setEmailAddress,
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function(int leadDays)? setLeadDaysForBillReminder,
    TResult Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult Function(bool readmode)? setReadMode,
    TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult Function()? validateEmailAddress,
    TResult Function()? validatePhoneNumber,
    TResult Function(String residentId)? update,
    required TResult orElse(),
  }) {
    if (setDeliveryType != null) {
      return setDeliveryType(deliveryType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDeliveryType value) setDeliveryType,
    required TResult Function(_SetEmailAddress value) setEmailAddress,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_SetLeadDaysForBillReminder value)
        setLeadDaysForBillReminder,
    required TResult Function(_SetBillingSettings value) setBillingSettings,
    required TResult Function(_SetReadMode value) setReadMode,
    required TResult Function(_SetDefaultValues value) setDefaultValues,
    required TResult Function(_InitializeBillingSettings value)
        initializeBillingSettings,
    required TResult Function(_ValidateEmailAddress value) validateEmailAddress,
    required TResult Function(_ValidatePhoneNumber value) validatePhoneNumber,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return setDeliveryType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDeliveryType value)? setDeliveryType,
    TResult? Function(_SetEmailAddress value)? setEmailAddress,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult? Function(_SetBillingSettings value)? setBillingSettings,
    TResult? Function(_SetReadMode value)? setReadMode,
    TResult? Function(_SetDefaultValues value)? setDefaultValues,
    TResult? Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult? Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult? Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return setDeliveryType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDeliveryType value)? setDeliveryType,
    TResult Function(_SetEmailAddress value)? setEmailAddress,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult Function(_SetBillingSettings value)? setBillingSettings,
    TResult Function(_SetReadMode value)? setReadMode,
    TResult Function(_SetDefaultValues value)? setDefaultValues,
    TResult Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (setDeliveryType != null) {
      return setDeliveryType(this);
    }
    return orElse();
  }
}

abstract class _SetDeliveryType implements BillDeliveryEvent {
  const factory _SetDeliveryType(final BillDeliveryType deliveryType) =
      _$SetDeliveryTypeImpl;

  BillDeliveryType get deliveryType;

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDeliveryTypeImplCopyWith<_$SetDeliveryTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetEmailAddressImplCopyWith<$Res> {
  factory _$$SetEmailAddressImplCopyWith(_$SetEmailAddressImpl value,
          $Res Function(_$SetEmailAddressImpl) then) =
      __$$SetEmailAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SetEmailAddressImplCopyWithImpl<$Res>
    extends _$BillDeliveryEventCopyWithImpl<$Res, _$SetEmailAddressImpl>
    implements _$$SetEmailAddressImplCopyWith<$Res> {
  __$$SetEmailAddressImplCopyWithImpl(
      _$SetEmailAddressImpl _value, $Res Function(_$SetEmailAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SetEmailAddressImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetEmailAddressImpl implements _SetEmailAddress {
  const _$SetEmailAddressImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'BillDeliveryEvent.setEmailAddress(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetEmailAddressImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetEmailAddressImplCopyWith<_$SetEmailAddressImpl> get copyWith =>
      __$$SetEmailAddressImplCopyWithImpl<_$SetEmailAddressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BillDeliveryType deliveryType) setDeliveryType,
    required TResult Function(String email) setEmailAddress,
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function(int leadDays) setLeadDaysForBillReminder,
    required TResult Function(String email, String phoneNumber, int leadDays)
        setBillingSettings,
    required TResult Function(bool readmode) setReadMode,
    required TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)
        setDefaultValues,
    required TResult Function(BillDeliveryType billDeliveryType,
            String emailAddress, String phoneNumber, int leadDays)
        initializeBillingSettings,
    required TResult Function() validateEmailAddress,
    required TResult Function() validatePhoneNumber,
    required TResult Function(String residentId) update,
  }) {
    return setEmailAddress(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult? Function(String email)? setEmailAddress,
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function(int leadDays)? setLeadDaysForBillReminder,
    TResult? Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult? Function(bool readmode)? setReadMode,
    TResult? Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult? Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult? Function()? validateEmailAddress,
    TResult? Function()? validatePhoneNumber,
    TResult? Function(String residentId)? update,
  }) {
    return setEmailAddress?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult Function(String email)? setEmailAddress,
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function(int leadDays)? setLeadDaysForBillReminder,
    TResult Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult Function(bool readmode)? setReadMode,
    TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult Function()? validateEmailAddress,
    TResult Function()? validatePhoneNumber,
    TResult Function(String residentId)? update,
    required TResult orElse(),
  }) {
    if (setEmailAddress != null) {
      return setEmailAddress(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDeliveryType value) setDeliveryType,
    required TResult Function(_SetEmailAddress value) setEmailAddress,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_SetLeadDaysForBillReminder value)
        setLeadDaysForBillReminder,
    required TResult Function(_SetBillingSettings value) setBillingSettings,
    required TResult Function(_SetReadMode value) setReadMode,
    required TResult Function(_SetDefaultValues value) setDefaultValues,
    required TResult Function(_InitializeBillingSettings value)
        initializeBillingSettings,
    required TResult Function(_ValidateEmailAddress value) validateEmailAddress,
    required TResult Function(_ValidatePhoneNumber value) validatePhoneNumber,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return setEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDeliveryType value)? setDeliveryType,
    TResult? Function(_SetEmailAddress value)? setEmailAddress,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult? Function(_SetBillingSettings value)? setBillingSettings,
    TResult? Function(_SetReadMode value)? setReadMode,
    TResult? Function(_SetDefaultValues value)? setDefaultValues,
    TResult? Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult? Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult? Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return setEmailAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDeliveryType value)? setDeliveryType,
    TResult Function(_SetEmailAddress value)? setEmailAddress,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult Function(_SetBillingSettings value)? setBillingSettings,
    TResult Function(_SetReadMode value)? setReadMode,
    TResult Function(_SetDefaultValues value)? setDefaultValues,
    TResult Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (setEmailAddress != null) {
      return setEmailAddress(this);
    }
    return orElse();
  }
}

abstract class _SetEmailAddress implements BillDeliveryEvent {
  const factory _SetEmailAddress(final String email) = _$SetEmailAddressImpl;

  String get email;

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetEmailAddressImplCopyWith<_$SetEmailAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPhoneNumberImplCopyWith<$Res> {
  factory _$$SetPhoneNumberImplCopyWith(_$SetPhoneNumberImpl value,
          $Res Function(_$SetPhoneNumberImpl) then) =
      __$$SetPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$SetPhoneNumberImplCopyWithImpl<$Res>
    extends _$BillDeliveryEventCopyWithImpl<$Res, _$SetPhoneNumberImpl>
    implements _$$SetPhoneNumberImplCopyWith<$Res> {
  __$$SetPhoneNumberImplCopyWithImpl(
      _$SetPhoneNumberImpl _value, $Res Function(_$SetPhoneNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$SetPhoneNumberImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetPhoneNumberImpl implements _SetPhoneNumber {
  const _$SetPhoneNumberImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'BillDeliveryEvent.setPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPhoneNumberImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPhoneNumberImplCopyWith<_$SetPhoneNumberImpl> get copyWith =>
      __$$SetPhoneNumberImplCopyWithImpl<_$SetPhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BillDeliveryType deliveryType) setDeliveryType,
    required TResult Function(String email) setEmailAddress,
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function(int leadDays) setLeadDaysForBillReminder,
    required TResult Function(String email, String phoneNumber, int leadDays)
        setBillingSettings,
    required TResult Function(bool readmode) setReadMode,
    required TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)
        setDefaultValues,
    required TResult Function(BillDeliveryType billDeliveryType,
            String emailAddress, String phoneNumber, int leadDays)
        initializeBillingSettings,
    required TResult Function() validateEmailAddress,
    required TResult Function() validatePhoneNumber,
    required TResult Function(String residentId) update,
  }) {
    return setPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult? Function(String email)? setEmailAddress,
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function(int leadDays)? setLeadDaysForBillReminder,
    TResult? Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult? Function(bool readmode)? setReadMode,
    TResult? Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult? Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult? Function()? validateEmailAddress,
    TResult? Function()? validatePhoneNumber,
    TResult? Function(String residentId)? update,
  }) {
    return setPhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult Function(String email)? setEmailAddress,
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function(int leadDays)? setLeadDaysForBillReminder,
    TResult Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult Function(bool readmode)? setReadMode,
    TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult Function()? validateEmailAddress,
    TResult Function()? validatePhoneNumber,
    TResult Function(String residentId)? update,
    required TResult orElse(),
  }) {
    if (setPhoneNumber != null) {
      return setPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDeliveryType value) setDeliveryType,
    required TResult Function(_SetEmailAddress value) setEmailAddress,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_SetLeadDaysForBillReminder value)
        setLeadDaysForBillReminder,
    required TResult Function(_SetBillingSettings value) setBillingSettings,
    required TResult Function(_SetReadMode value) setReadMode,
    required TResult Function(_SetDefaultValues value) setDefaultValues,
    required TResult Function(_InitializeBillingSettings value)
        initializeBillingSettings,
    required TResult Function(_ValidateEmailAddress value) validateEmailAddress,
    required TResult Function(_ValidatePhoneNumber value) validatePhoneNumber,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return setPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDeliveryType value)? setDeliveryType,
    TResult? Function(_SetEmailAddress value)? setEmailAddress,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult? Function(_SetBillingSettings value)? setBillingSettings,
    TResult? Function(_SetReadMode value)? setReadMode,
    TResult? Function(_SetDefaultValues value)? setDefaultValues,
    TResult? Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult? Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult? Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return setPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDeliveryType value)? setDeliveryType,
    TResult Function(_SetEmailAddress value)? setEmailAddress,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult Function(_SetBillingSettings value)? setBillingSettings,
    TResult Function(_SetReadMode value)? setReadMode,
    TResult Function(_SetDefaultValues value)? setDefaultValues,
    TResult Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (setPhoneNumber != null) {
      return setPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _SetPhoneNumber implements BillDeliveryEvent {
  const factory _SetPhoneNumber(final String phoneNumber) =
      _$SetPhoneNumberImpl;

  String get phoneNumber;

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPhoneNumberImplCopyWith<_$SetPhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetLeadDaysForBillReminderImplCopyWith<$Res> {
  factory _$$SetLeadDaysForBillReminderImplCopyWith(
          _$SetLeadDaysForBillReminderImpl value,
          $Res Function(_$SetLeadDaysForBillReminderImpl) then) =
      __$$SetLeadDaysForBillReminderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int leadDays});
}

/// @nodoc
class __$$SetLeadDaysForBillReminderImplCopyWithImpl<$Res>
    extends _$BillDeliveryEventCopyWithImpl<$Res,
        _$SetLeadDaysForBillReminderImpl>
    implements _$$SetLeadDaysForBillReminderImplCopyWith<$Res> {
  __$$SetLeadDaysForBillReminderImplCopyWithImpl(
      _$SetLeadDaysForBillReminderImpl _value,
      $Res Function(_$SetLeadDaysForBillReminderImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leadDays = null,
  }) {
    return _then(_$SetLeadDaysForBillReminderImpl(
      null == leadDays
          ? _value.leadDays
          : leadDays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetLeadDaysForBillReminderImpl implements _SetLeadDaysForBillReminder {
  const _$SetLeadDaysForBillReminderImpl(this.leadDays);

  @override
  final int leadDays;

  @override
  String toString() {
    return 'BillDeliveryEvent.setLeadDaysForBillReminder(leadDays: $leadDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLeadDaysForBillReminderImpl &&
            (identical(other.leadDays, leadDays) ||
                other.leadDays == leadDays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leadDays);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLeadDaysForBillReminderImplCopyWith<_$SetLeadDaysForBillReminderImpl>
      get copyWith => __$$SetLeadDaysForBillReminderImplCopyWithImpl<
          _$SetLeadDaysForBillReminderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BillDeliveryType deliveryType) setDeliveryType,
    required TResult Function(String email) setEmailAddress,
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function(int leadDays) setLeadDaysForBillReminder,
    required TResult Function(String email, String phoneNumber, int leadDays)
        setBillingSettings,
    required TResult Function(bool readmode) setReadMode,
    required TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)
        setDefaultValues,
    required TResult Function(BillDeliveryType billDeliveryType,
            String emailAddress, String phoneNumber, int leadDays)
        initializeBillingSettings,
    required TResult Function() validateEmailAddress,
    required TResult Function() validatePhoneNumber,
    required TResult Function(String residentId) update,
  }) {
    return setLeadDaysForBillReminder(leadDays);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult? Function(String email)? setEmailAddress,
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function(int leadDays)? setLeadDaysForBillReminder,
    TResult? Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult? Function(bool readmode)? setReadMode,
    TResult? Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult? Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult? Function()? validateEmailAddress,
    TResult? Function()? validatePhoneNumber,
    TResult? Function(String residentId)? update,
  }) {
    return setLeadDaysForBillReminder?.call(leadDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult Function(String email)? setEmailAddress,
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function(int leadDays)? setLeadDaysForBillReminder,
    TResult Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult Function(bool readmode)? setReadMode,
    TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult Function()? validateEmailAddress,
    TResult Function()? validatePhoneNumber,
    TResult Function(String residentId)? update,
    required TResult orElse(),
  }) {
    if (setLeadDaysForBillReminder != null) {
      return setLeadDaysForBillReminder(leadDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDeliveryType value) setDeliveryType,
    required TResult Function(_SetEmailAddress value) setEmailAddress,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_SetLeadDaysForBillReminder value)
        setLeadDaysForBillReminder,
    required TResult Function(_SetBillingSettings value) setBillingSettings,
    required TResult Function(_SetReadMode value) setReadMode,
    required TResult Function(_SetDefaultValues value) setDefaultValues,
    required TResult Function(_InitializeBillingSettings value)
        initializeBillingSettings,
    required TResult Function(_ValidateEmailAddress value) validateEmailAddress,
    required TResult Function(_ValidatePhoneNumber value) validatePhoneNumber,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return setLeadDaysForBillReminder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDeliveryType value)? setDeliveryType,
    TResult? Function(_SetEmailAddress value)? setEmailAddress,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult? Function(_SetBillingSettings value)? setBillingSettings,
    TResult? Function(_SetReadMode value)? setReadMode,
    TResult? Function(_SetDefaultValues value)? setDefaultValues,
    TResult? Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult? Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult? Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return setLeadDaysForBillReminder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDeliveryType value)? setDeliveryType,
    TResult Function(_SetEmailAddress value)? setEmailAddress,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult Function(_SetBillingSettings value)? setBillingSettings,
    TResult Function(_SetReadMode value)? setReadMode,
    TResult Function(_SetDefaultValues value)? setDefaultValues,
    TResult Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (setLeadDaysForBillReminder != null) {
      return setLeadDaysForBillReminder(this);
    }
    return orElse();
  }
}

abstract class _SetLeadDaysForBillReminder implements BillDeliveryEvent {
  const factory _SetLeadDaysForBillReminder(final int leadDays) =
      _$SetLeadDaysForBillReminderImpl;

  int get leadDays;

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetLeadDaysForBillReminderImplCopyWith<_$SetLeadDaysForBillReminderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetBillingSettingsImplCopyWith<$Res> {
  factory _$$SetBillingSettingsImplCopyWith(_$SetBillingSettingsImpl value,
          $Res Function(_$SetBillingSettingsImpl) then) =
      __$$SetBillingSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String phoneNumber, int leadDays});
}

/// @nodoc
class __$$SetBillingSettingsImplCopyWithImpl<$Res>
    extends _$BillDeliveryEventCopyWithImpl<$Res, _$SetBillingSettingsImpl>
    implements _$$SetBillingSettingsImplCopyWith<$Res> {
  __$$SetBillingSettingsImplCopyWithImpl(_$SetBillingSettingsImpl _value,
      $Res Function(_$SetBillingSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phoneNumber = null,
    Object? leadDays = null,
  }) {
    return _then(_$SetBillingSettingsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      leadDays: null == leadDays
          ? _value.leadDays
          : leadDays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetBillingSettingsImpl implements _SetBillingSettings {
  const _$SetBillingSettingsImpl(
      {required this.email, required this.phoneNumber, required this.leadDays});

  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final int leadDays;

  @override
  String toString() {
    return 'BillDeliveryEvent.setBillingSettings(email: $email, phoneNumber: $phoneNumber, leadDays: $leadDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetBillingSettingsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.leadDays, leadDays) ||
                other.leadDays == leadDays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, phoneNumber, leadDays);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetBillingSettingsImplCopyWith<_$SetBillingSettingsImpl> get copyWith =>
      __$$SetBillingSettingsImplCopyWithImpl<_$SetBillingSettingsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BillDeliveryType deliveryType) setDeliveryType,
    required TResult Function(String email) setEmailAddress,
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function(int leadDays) setLeadDaysForBillReminder,
    required TResult Function(String email, String phoneNumber, int leadDays)
        setBillingSettings,
    required TResult Function(bool readmode) setReadMode,
    required TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)
        setDefaultValues,
    required TResult Function(BillDeliveryType billDeliveryType,
            String emailAddress, String phoneNumber, int leadDays)
        initializeBillingSettings,
    required TResult Function() validateEmailAddress,
    required TResult Function() validatePhoneNumber,
    required TResult Function(String residentId) update,
  }) {
    return setBillingSettings(email, phoneNumber, leadDays);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult? Function(String email)? setEmailAddress,
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function(int leadDays)? setLeadDaysForBillReminder,
    TResult? Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult? Function(bool readmode)? setReadMode,
    TResult? Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult? Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult? Function()? validateEmailAddress,
    TResult? Function()? validatePhoneNumber,
    TResult? Function(String residentId)? update,
  }) {
    return setBillingSettings?.call(email, phoneNumber, leadDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult Function(String email)? setEmailAddress,
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function(int leadDays)? setLeadDaysForBillReminder,
    TResult Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult Function(bool readmode)? setReadMode,
    TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult Function()? validateEmailAddress,
    TResult Function()? validatePhoneNumber,
    TResult Function(String residentId)? update,
    required TResult orElse(),
  }) {
    if (setBillingSettings != null) {
      return setBillingSettings(email, phoneNumber, leadDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDeliveryType value) setDeliveryType,
    required TResult Function(_SetEmailAddress value) setEmailAddress,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_SetLeadDaysForBillReminder value)
        setLeadDaysForBillReminder,
    required TResult Function(_SetBillingSettings value) setBillingSettings,
    required TResult Function(_SetReadMode value) setReadMode,
    required TResult Function(_SetDefaultValues value) setDefaultValues,
    required TResult Function(_InitializeBillingSettings value)
        initializeBillingSettings,
    required TResult Function(_ValidateEmailAddress value) validateEmailAddress,
    required TResult Function(_ValidatePhoneNumber value) validatePhoneNumber,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return setBillingSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDeliveryType value)? setDeliveryType,
    TResult? Function(_SetEmailAddress value)? setEmailAddress,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult? Function(_SetBillingSettings value)? setBillingSettings,
    TResult? Function(_SetReadMode value)? setReadMode,
    TResult? Function(_SetDefaultValues value)? setDefaultValues,
    TResult? Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult? Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult? Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return setBillingSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDeliveryType value)? setDeliveryType,
    TResult Function(_SetEmailAddress value)? setEmailAddress,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult Function(_SetBillingSettings value)? setBillingSettings,
    TResult Function(_SetReadMode value)? setReadMode,
    TResult Function(_SetDefaultValues value)? setDefaultValues,
    TResult Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (setBillingSettings != null) {
      return setBillingSettings(this);
    }
    return orElse();
  }
}

abstract class _SetBillingSettings implements BillDeliveryEvent {
  const factory _SetBillingSettings(
      {required final String email,
      required final String phoneNumber,
      required final int leadDays}) = _$SetBillingSettingsImpl;

  String get email;
  String get phoneNumber;
  int get leadDays;

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetBillingSettingsImplCopyWith<_$SetBillingSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetReadModeImplCopyWith<$Res> {
  factory _$$SetReadModeImplCopyWith(
          _$SetReadModeImpl value, $Res Function(_$SetReadModeImpl) then) =
      __$$SetReadModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool readmode});
}

/// @nodoc
class __$$SetReadModeImplCopyWithImpl<$Res>
    extends _$BillDeliveryEventCopyWithImpl<$Res, _$SetReadModeImpl>
    implements _$$SetReadModeImplCopyWith<$Res> {
  __$$SetReadModeImplCopyWithImpl(
      _$SetReadModeImpl _value, $Res Function(_$SetReadModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readmode = null,
  }) {
    return _then(_$SetReadModeImpl(
      null == readmode
          ? _value.readmode
          : readmode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetReadModeImpl implements _SetReadMode {
  const _$SetReadModeImpl(this.readmode);

  @override
  final bool readmode;

  @override
  String toString() {
    return 'BillDeliveryEvent.setReadMode(readmode: $readmode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetReadModeImpl &&
            (identical(other.readmode, readmode) ||
                other.readmode == readmode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, readmode);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetReadModeImplCopyWith<_$SetReadModeImpl> get copyWith =>
      __$$SetReadModeImplCopyWithImpl<_$SetReadModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BillDeliveryType deliveryType) setDeliveryType,
    required TResult Function(String email) setEmailAddress,
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function(int leadDays) setLeadDaysForBillReminder,
    required TResult Function(String email, String phoneNumber, int leadDays)
        setBillingSettings,
    required TResult Function(bool readmode) setReadMode,
    required TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)
        setDefaultValues,
    required TResult Function(BillDeliveryType billDeliveryType,
            String emailAddress, String phoneNumber, int leadDays)
        initializeBillingSettings,
    required TResult Function() validateEmailAddress,
    required TResult Function() validatePhoneNumber,
    required TResult Function(String residentId) update,
  }) {
    return setReadMode(readmode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult? Function(String email)? setEmailAddress,
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function(int leadDays)? setLeadDaysForBillReminder,
    TResult? Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult? Function(bool readmode)? setReadMode,
    TResult? Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult? Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult? Function()? validateEmailAddress,
    TResult? Function()? validatePhoneNumber,
    TResult? Function(String residentId)? update,
  }) {
    return setReadMode?.call(readmode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult Function(String email)? setEmailAddress,
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function(int leadDays)? setLeadDaysForBillReminder,
    TResult Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult Function(bool readmode)? setReadMode,
    TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult Function()? validateEmailAddress,
    TResult Function()? validatePhoneNumber,
    TResult Function(String residentId)? update,
    required TResult orElse(),
  }) {
    if (setReadMode != null) {
      return setReadMode(readmode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDeliveryType value) setDeliveryType,
    required TResult Function(_SetEmailAddress value) setEmailAddress,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_SetLeadDaysForBillReminder value)
        setLeadDaysForBillReminder,
    required TResult Function(_SetBillingSettings value) setBillingSettings,
    required TResult Function(_SetReadMode value) setReadMode,
    required TResult Function(_SetDefaultValues value) setDefaultValues,
    required TResult Function(_InitializeBillingSettings value)
        initializeBillingSettings,
    required TResult Function(_ValidateEmailAddress value) validateEmailAddress,
    required TResult Function(_ValidatePhoneNumber value) validatePhoneNumber,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return setReadMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDeliveryType value)? setDeliveryType,
    TResult? Function(_SetEmailAddress value)? setEmailAddress,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult? Function(_SetBillingSettings value)? setBillingSettings,
    TResult? Function(_SetReadMode value)? setReadMode,
    TResult? Function(_SetDefaultValues value)? setDefaultValues,
    TResult? Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult? Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult? Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return setReadMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDeliveryType value)? setDeliveryType,
    TResult Function(_SetEmailAddress value)? setEmailAddress,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult Function(_SetBillingSettings value)? setBillingSettings,
    TResult Function(_SetReadMode value)? setReadMode,
    TResult Function(_SetDefaultValues value)? setDefaultValues,
    TResult Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (setReadMode != null) {
      return setReadMode(this);
    }
    return orElse();
  }
}

abstract class _SetReadMode implements BillDeliveryEvent {
  const factory _SetReadMode(final bool readmode) = _$SetReadModeImpl;

  bool get readmode;

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetReadModeImplCopyWith<_$SetReadModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetDefaultValuesImplCopyWith<$Res> {
  factory _$$SetDefaultValuesImplCopyWith(_$SetDefaultValuesImpl value,
          $Res Function(_$SetDefaultValuesImpl) then) =
      __$$SetDefaultValuesImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BillDeliveryType defaultDeliveryType,
      BillDeliveryType selectedDeliveryType,
      String defaultEmail,
      String defaultPhoneNumber});

  $BillDeliveryTypeCopyWith<$Res> get defaultDeliveryType;
  $BillDeliveryTypeCopyWith<$Res> get selectedDeliveryType;
}

/// @nodoc
class __$$SetDefaultValuesImplCopyWithImpl<$Res>
    extends _$BillDeliveryEventCopyWithImpl<$Res, _$SetDefaultValuesImpl>
    implements _$$SetDefaultValuesImplCopyWith<$Res> {
  __$$SetDefaultValuesImplCopyWithImpl(_$SetDefaultValuesImpl _value,
      $Res Function(_$SetDefaultValuesImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultDeliveryType = null,
    Object? selectedDeliveryType = null,
    Object? defaultEmail = null,
    Object? defaultPhoneNumber = null,
  }) {
    return _then(_$SetDefaultValuesImpl(
      defaultDeliveryType: null == defaultDeliveryType
          ? _value.defaultDeliveryType
          : defaultDeliveryType // ignore: cast_nullable_to_non_nullable
              as BillDeliveryType,
      selectedDeliveryType: null == selectedDeliveryType
          ? _value.selectedDeliveryType
          : selectedDeliveryType // ignore: cast_nullable_to_non_nullable
              as BillDeliveryType,
      defaultEmail: null == defaultEmail
          ? _value.defaultEmail
          : defaultEmail // ignore: cast_nullable_to_non_nullable
              as String,
      defaultPhoneNumber: null == defaultPhoneNumber
          ? _value.defaultPhoneNumber
          : defaultPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillDeliveryTypeCopyWith<$Res> get defaultDeliveryType {
    return $BillDeliveryTypeCopyWith<$Res>(_value.defaultDeliveryType, (value) {
      return _then(_value.copyWith(defaultDeliveryType: value));
    });
  }

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillDeliveryTypeCopyWith<$Res> get selectedDeliveryType {
    return $BillDeliveryTypeCopyWith<$Res>(_value.selectedDeliveryType,
        (value) {
      return _then(_value.copyWith(selectedDeliveryType: value));
    });
  }
}

/// @nodoc

class _$SetDefaultValuesImpl implements _SetDefaultValues {
  const _$SetDefaultValuesImpl(
      {required this.defaultDeliveryType,
      required this.selectedDeliveryType,
      required this.defaultEmail,
      required this.defaultPhoneNumber});

  @override
  final BillDeliveryType defaultDeliveryType;
  @override
  final BillDeliveryType selectedDeliveryType;
  @override
  final String defaultEmail;
  @override
  final String defaultPhoneNumber;

  @override
  String toString() {
    return 'BillDeliveryEvent.setDefaultValues(defaultDeliveryType: $defaultDeliveryType, selectedDeliveryType: $selectedDeliveryType, defaultEmail: $defaultEmail, defaultPhoneNumber: $defaultPhoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDefaultValuesImpl &&
            (identical(other.defaultDeliveryType, defaultDeliveryType) ||
                other.defaultDeliveryType == defaultDeliveryType) &&
            (identical(other.selectedDeliveryType, selectedDeliveryType) ||
                other.selectedDeliveryType == selectedDeliveryType) &&
            (identical(other.defaultEmail, defaultEmail) ||
                other.defaultEmail == defaultEmail) &&
            (identical(other.defaultPhoneNumber, defaultPhoneNumber) ||
                other.defaultPhoneNumber == defaultPhoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, defaultDeliveryType,
      selectedDeliveryType, defaultEmail, defaultPhoneNumber);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDefaultValuesImplCopyWith<_$SetDefaultValuesImpl> get copyWith =>
      __$$SetDefaultValuesImplCopyWithImpl<_$SetDefaultValuesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BillDeliveryType deliveryType) setDeliveryType,
    required TResult Function(String email) setEmailAddress,
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function(int leadDays) setLeadDaysForBillReminder,
    required TResult Function(String email, String phoneNumber, int leadDays)
        setBillingSettings,
    required TResult Function(bool readmode) setReadMode,
    required TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)
        setDefaultValues,
    required TResult Function(BillDeliveryType billDeliveryType,
            String emailAddress, String phoneNumber, int leadDays)
        initializeBillingSettings,
    required TResult Function() validateEmailAddress,
    required TResult Function() validatePhoneNumber,
    required TResult Function(String residentId) update,
  }) {
    return setDefaultValues(defaultDeliveryType, selectedDeliveryType,
        defaultEmail, defaultPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult? Function(String email)? setEmailAddress,
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function(int leadDays)? setLeadDaysForBillReminder,
    TResult? Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult? Function(bool readmode)? setReadMode,
    TResult? Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult? Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult? Function()? validateEmailAddress,
    TResult? Function()? validatePhoneNumber,
    TResult? Function(String residentId)? update,
  }) {
    return setDefaultValues?.call(defaultDeliveryType, selectedDeliveryType,
        defaultEmail, defaultPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult Function(String email)? setEmailAddress,
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function(int leadDays)? setLeadDaysForBillReminder,
    TResult Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult Function(bool readmode)? setReadMode,
    TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult Function()? validateEmailAddress,
    TResult Function()? validatePhoneNumber,
    TResult Function(String residentId)? update,
    required TResult orElse(),
  }) {
    if (setDefaultValues != null) {
      return setDefaultValues(defaultDeliveryType, selectedDeliveryType,
          defaultEmail, defaultPhoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDeliveryType value) setDeliveryType,
    required TResult Function(_SetEmailAddress value) setEmailAddress,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_SetLeadDaysForBillReminder value)
        setLeadDaysForBillReminder,
    required TResult Function(_SetBillingSettings value) setBillingSettings,
    required TResult Function(_SetReadMode value) setReadMode,
    required TResult Function(_SetDefaultValues value) setDefaultValues,
    required TResult Function(_InitializeBillingSettings value)
        initializeBillingSettings,
    required TResult Function(_ValidateEmailAddress value) validateEmailAddress,
    required TResult Function(_ValidatePhoneNumber value) validatePhoneNumber,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return setDefaultValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDeliveryType value)? setDeliveryType,
    TResult? Function(_SetEmailAddress value)? setEmailAddress,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult? Function(_SetBillingSettings value)? setBillingSettings,
    TResult? Function(_SetReadMode value)? setReadMode,
    TResult? Function(_SetDefaultValues value)? setDefaultValues,
    TResult? Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult? Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult? Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return setDefaultValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDeliveryType value)? setDeliveryType,
    TResult Function(_SetEmailAddress value)? setEmailAddress,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult Function(_SetBillingSettings value)? setBillingSettings,
    TResult Function(_SetReadMode value)? setReadMode,
    TResult Function(_SetDefaultValues value)? setDefaultValues,
    TResult Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (setDefaultValues != null) {
      return setDefaultValues(this);
    }
    return orElse();
  }
}

abstract class _SetDefaultValues implements BillDeliveryEvent {
  const factory _SetDefaultValues(
      {required final BillDeliveryType defaultDeliveryType,
      required final BillDeliveryType selectedDeliveryType,
      required final String defaultEmail,
      required final String defaultPhoneNumber}) = _$SetDefaultValuesImpl;

  BillDeliveryType get defaultDeliveryType;
  BillDeliveryType get selectedDeliveryType;
  String get defaultEmail;
  String get defaultPhoneNumber;

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDefaultValuesImplCopyWith<_$SetDefaultValuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeBillingSettingsImplCopyWith<$Res> {
  factory _$$InitializeBillingSettingsImplCopyWith(
          _$InitializeBillingSettingsImpl value,
          $Res Function(_$InitializeBillingSettingsImpl) then) =
      __$$InitializeBillingSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BillDeliveryType billDeliveryType,
      String emailAddress,
      String phoneNumber,
      int leadDays});

  $BillDeliveryTypeCopyWith<$Res> get billDeliveryType;
}

/// @nodoc
class __$$InitializeBillingSettingsImplCopyWithImpl<$Res>
    extends _$BillDeliveryEventCopyWithImpl<$Res,
        _$InitializeBillingSettingsImpl>
    implements _$$InitializeBillingSettingsImplCopyWith<$Res> {
  __$$InitializeBillingSettingsImplCopyWithImpl(
      _$InitializeBillingSettingsImpl _value,
      $Res Function(_$InitializeBillingSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billDeliveryType = null,
    Object? emailAddress = null,
    Object? phoneNumber = null,
    Object? leadDays = null,
  }) {
    return _then(_$InitializeBillingSettingsImpl(
      billDeliveryType: null == billDeliveryType
          ? _value.billDeliveryType
          : billDeliveryType // ignore: cast_nullable_to_non_nullable
              as BillDeliveryType,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      leadDays: null == leadDays
          ? _value.leadDays
          : leadDays // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillDeliveryTypeCopyWith<$Res> get billDeliveryType {
    return $BillDeliveryTypeCopyWith<$Res>(_value.billDeliveryType, (value) {
      return _then(_value.copyWith(billDeliveryType: value));
    });
  }
}

/// @nodoc

class _$InitializeBillingSettingsImpl implements _InitializeBillingSettings {
  const _$InitializeBillingSettingsImpl(
      {required this.billDeliveryType,
      required this.emailAddress,
      required this.phoneNumber,
      required this.leadDays});

  @override
  final BillDeliveryType billDeliveryType;
  @override
  final String emailAddress;
  @override
  final String phoneNumber;
  @override
  final int leadDays;

  @override
  String toString() {
    return 'BillDeliveryEvent.initializeBillingSettings(billDeliveryType: $billDeliveryType, emailAddress: $emailAddress, phoneNumber: $phoneNumber, leadDays: $leadDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeBillingSettingsImpl &&
            (identical(other.billDeliveryType, billDeliveryType) ||
                other.billDeliveryType == billDeliveryType) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.leadDays, leadDays) ||
                other.leadDays == leadDays));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, billDeliveryType, emailAddress, phoneNumber, leadDays);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeBillingSettingsImplCopyWith<_$InitializeBillingSettingsImpl>
      get copyWith => __$$InitializeBillingSettingsImplCopyWithImpl<
          _$InitializeBillingSettingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BillDeliveryType deliveryType) setDeliveryType,
    required TResult Function(String email) setEmailAddress,
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function(int leadDays) setLeadDaysForBillReminder,
    required TResult Function(String email, String phoneNumber, int leadDays)
        setBillingSettings,
    required TResult Function(bool readmode) setReadMode,
    required TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)
        setDefaultValues,
    required TResult Function(BillDeliveryType billDeliveryType,
            String emailAddress, String phoneNumber, int leadDays)
        initializeBillingSettings,
    required TResult Function() validateEmailAddress,
    required TResult Function() validatePhoneNumber,
    required TResult Function(String residentId) update,
  }) {
    return initializeBillingSettings(
        billDeliveryType, emailAddress, phoneNumber, leadDays);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult? Function(String email)? setEmailAddress,
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function(int leadDays)? setLeadDaysForBillReminder,
    TResult? Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult? Function(bool readmode)? setReadMode,
    TResult? Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult? Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult? Function()? validateEmailAddress,
    TResult? Function()? validatePhoneNumber,
    TResult? Function(String residentId)? update,
  }) {
    return initializeBillingSettings?.call(
        billDeliveryType, emailAddress, phoneNumber, leadDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult Function(String email)? setEmailAddress,
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function(int leadDays)? setLeadDaysForBillReminder,
    TResult Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult Function(bool readmode)? setReadMode,
    TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult Function()? validateEmailAddress,
    TResult Function()? validatePhoneNumber,
    TResult Function(String residentId)? update,
    required TResult orElse(),
  }) {
    if (initializeBillingSettings != null) {
      return initializeBillingSettings(
          billDeliveryType, emailAddress, phoneNumber, leadDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDeliveryType value) setDeliveryType,
    required TResult Function(_SetEmailAddress value) setEmailAddress,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_SetLeadDaysForBillReminder value)
        setLeadDaysForBillReminder,
    required TResult Function(_SetBillingSettings value) setBillingSettings,
    required TResult Function(_SetReadMode value) setReadMode,
    required TResult Function(_SetDefaultValues value) setDefaultValues,
    required TResult Function(_InitializeBillingSettings value)
        initializeBillingSettings,
    required TResult Function(_ValidateEmailAddress value) validateEmailAddress,
    required TResult Function(_ValidatePhoneNumber value) validatePhoneNumber,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return initializeBillingSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDeliveryType value)? setDeliveryType,
    TResult? Function(_SetEmailAddress value)? setEmailAddress,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult? Function(_SetBillingSettings value)? setBillingSettings,
    TResult? Function(_SetReadMode value)? setReadMode,
    TResult? Function(_SetDefaultValues value)? setDefaultValues,
    TResult? Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult? Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult? Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return initializeBillingSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDeliveryType value)? setDeliveryType,
    TResult Function(_SetEmailAddress value)? setEmailAddress,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult Function(_SetBillingSettings value)? setBillingSettings,
    TResult Function(_SetReadMode value)? setReadMode,
    TResult Function(_SetDefaultValues value)? setDefaultValues,
    TResult Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (initializeBillingSettings != null) {
      return initializeBillingSettings(this);
    }
    return orElse();
  }
}

abstract class _InitializeBillingSettings implements BillDeliveryEvent {
  const factory _InitializeBillingSettings(
      {required final BillDeliveryType billDeliveryType,
      required final String emailAddress,
      required final String phoneNumber,
      required final int leadDays}) = _$InitializeBillingSettingsImpl;

  BillDeliveryType get billDeliveryType;
  String get emailAddress;
  String get phoneNumber;
  int get leadDays;

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeBillingSettingsImplCopyWith<_$InitializeBillingSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateEmailAddressImplCopyWith<$Res> {
  factory _$$ValidateEmailAddressImplCopyWith(_$ValidateEmailAddressImpl value,
          $Res Function(_$ValidateEmailAddressImpl) then) =
      __$$ValidateEmailAddressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateEmailAddressImplCopyWithImpl<$Res>
    extends _$BillDeliveryEventCopyWithImpl<$Res, _$ValidateEmailAddressImpl>
    implements _$$ValidateEmailAddressImplCopyWith<$Res> {
  __$$ValidateEmailAddressImplCopyWithImpl(_$ValidateEmailAddressImpl _value,
      $Res Function(_$ValidateEmailAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidateEmailAddressImpl implements _ValidateEmailAddress {
  const _$ValidateEmailAddressImpl();

  @override
  String toString() {
    return 'BillDeliveryEvent.validateEmailAddress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateEmailAddressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BillDeliveryType deliveryType) setDeliveryType,
    required TResult Function(String email) setEmailAddress,
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function(int leadDays) setLeadDaysForBillReminder,
    required TResult Function(String email, String phoneNumber, int leadDays)
        setBillingSettings,
    required TResult Function(bool readmode) setReadMode,
    required TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)
        setDefaultValues,
    required TResult Function(BillDeliveryType billDeliveryType,
            String emailAddress, String phoneNumber, int leadDays)
        initializeBillingSettings,
    required TResult Function() validateEmailAddress,
    required TResult Function() validatePhoneNumber,
    required TResult Function(String residentId) update,
  }) {
    return validateEmailAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult? Function(String email)? setEmailAddress,
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function(int leadDays)? setLeadDaysForBillReminder,
    TResult? Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult? Function(bool readmode)? setReadMode,
    TResult? Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult? Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult? Function()? validateEmailAddress,
    TResult? Function()? validatePhoneNumber,
    TResult? Function(String residentId)? update,
  }) {
    return validateEmailAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult Function(String email)? setEmailAddress,
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function(int leadDays)? setLeadDaysForBillReminder,
    TResult Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult Function(bool readmode)? setReadMode,
    TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult Function()? validateEmailAddress,
    TResult Function()? validatePhoneNumber,
    TResult Function(String residentId)? update,
    required TResult orElse(),
  }) {
    if (validateEmailAddress != null) {
      return validateEmailAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDeliveryType value) setDeliveryType,
    required TResult Function(_SetEmailAddress value) setEmailAddress,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_SetLeadDaysForBillReminder value)
        setLeadDaysForBillReminder,
    required TResult Function(_SetBillingSettings value) setBillingSettings,
    required TResult Function(_SetReadMode value) setReadMode,
    required TResult Function(_SetDefaultValues value) setDefaultValues,
    required TResult Function(_InitializeBillingSettings value)
        initializeBillingSettings,
    required TResult Function(_ValidateEmailAddress value) validateEmailAddress,
    required TResult Function(_ValidatePhoneNumber value) validatePhoneNumber,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return validateEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDeliveryType value)? setDeliveryType,
    TResult? Function(_SetEmailAddress value)? setEmailAddress,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult? Function(_SetBillingSettings value)? setBillingSettings,
    TResult? Function(_SetReadMode value)? setReadMode,
    TResult? Function(_SetDefaultValues value)? setDefaultValues,
    TResult? Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult? Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult? Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return validateEmailAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDeliveryType value)? setDeliveryType,
    TResult Function(_SetEmailAddress value)? setEmailAddress,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult Function(_SetBillingSettings value)? setBillingSettings,
    TResult Function(_SetReadMode value)? setReadMode,
    TResult Function(_SetDefaultValues value)? setDefaultValues,
    TResult Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (validateEmailAddress != null) {
      return validateEmailAddress(this);
    }
    return orElse();
  }
}

abstract class _ValidateEmailAddress implements BillDeliveryEvent {
  const factory _ValidateEmailAddress() = _$ValidateEmailAddressImpl;
}

/// @nodoc
abstract class _$$ValidatePhoneNumberImplCopyWith<$Res> {
  factory _$$ValidatePhoneNumberImplCopyWith(_$ValidatePhoneNumberImpl value,
          $Res Function(_$ValidatePhoneNumberImpl) then) =
      __$$ValidatePhoneNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidatePhoneNumberImplCopyWithImpl<$Res>
    extends _$BillDeliveryEventCopyWithImpl<$Res, _$ValidatePhoneNumberImpl>
    implements _$$ValidatePhoneNumberImplCopyWith<$Res> {
  __$$ValidatePhoneNumberImplCopyWithImpl(_$ValidatePhoneNumberImpl _value,
      $Res Function(_$ValidatePhoneNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidatePhoneNumberImpl implements _ValidatePhoneNumber {
  const _$ValidatePhoneNumberImpl();

  @override
  String toString() {
    return 'BillDeliveryEvent.validatePhoneNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidatePhoneNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BillDeliveryType deliveryType) setDeliveryType,
    required TResult Function(String email) setEmailAddress,
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function(int leadDays) setLeadDaysForBillReminder,
    required TResult Function(String email, String phoneNumber, int leadDays)
        setBillingSettings,
    required TResult Function(bool readmode) setReadMode,
    required TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)
        setDefaultValues,
    required TResult Function(BillDeliveryType billDeliveryType,
            String emailAddress, String phoneNumber, int leadDays)
        initializeBillingSettings,
    required TResult Function() validateEmailAddress,
    required TResult Function() validatePhoneNumber,
    required TResult Function(String residentId) update,
  }) {
    return validatePhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult? Function(String email)? setEmailAddress,
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function(int leadDays)? setLeadDaysForBillReminder,
    TResult? Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult? Function(bool readmode)? setReadMode,
    TResult? Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult? Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult? Function()? validateEmailAddress,
    TResult? Function()? validatePhoneNumber,
    TResult? Function(String residentId)? update,
  }) {
    return validatePhoneNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult Function(String email)? setEmailAddress,
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function(int leadDays)? setLeadDaysForBillReminder,
    TResult Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult Function(bool readmode)? setReadMode,
    TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult Function()? validateEmailAddress,
    TResult Function()? validatePhoneNumber,
    TResult Function(String residentId)? update,
    required TResult orElse(),
  }) {
    if (validatePhoneNumber != null) {
      return validatePhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDeliveryType value) setDeliveryType,
    required TResult Function(_SetEmailAddress value) setEmailAddress,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_SetLeadDaysForBillReminder value)
        setLeadDaysForBillReminder,
    required TResult Function(_SetBillingSettings value) setBillingSettings,
    required TResult Function(_SetReadMode value) setReadMode,
    required TResult Function(_SetDefaultValues value) setDefaultValues,
    required TResult Function(_InitializeBillingSettings value)
        initializeBillingSettings,
    required TResult Function(_ValidateEmailAddress value) validateEmailAddress,
    required TResult Function(_ValidatePhoneNumber value) validatePhoneNumber,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return validatePhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDeliveryType value)? setDeliveryType,
    TResult? Function(_SetEmailAddress value)? setEmailAddress,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult? Function(_SetBillingSettings value)? setBillingSettings,
    TResult? Function(_SetReadMode value)? setReadMode,
    TResult? Function(_SetDefaultValues value)? setDefaultValues,
    TResult? Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult? Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult? Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return validatePhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDeliveryType value)? setDeliveryType,
    TResult Function(_SetEmailAddress value)? setEmailAddress,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult Function(_SetBillingSettings value)? setBillingSettings,
    TResult Function(_SetReadMode value)? setReadMode,
    TResult Function(_SetDefaultValues value)? setDefaultValues,
    TResult Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (validatePhoneNumber != null) {
      return validatePhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _ValidatePhoneNumber implements BillDeliveryEvent {
  const factory _ValidatePhoneNumber() = _$ValidatePhoneNumberImpl;
}

/// @nodoc
abstract class _$$UpdateEventImplCopyWith<$Res> {
  factory _$$UpdateEventImplCopyWith(
          _$UpdateEventImpl value, $Res Function(_$UpdateEventImpl) then) =
      __$$UpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String residentId});
}

/// @nodoc
class __$$UpdateEventImplCopyWithImpl<$Res>
    extends _$BillDeliveryEventCopyWithImpl<$Res, _$UpdateEventImpl>
    implements _$$UpdateEventImplCopyWith<$Res> {
  __$$UpdateEventImplCopyWithImpl(
      _$UpdateEventImpl _value, $Res Function(_$UpdateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
  }) {
    return _then(_$UpdateEventImpl(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateEventImpl implements _UpdateEvent {
  const _$UpdateEventImpl({required this.residentId});

  @override
  final String residentId;

  @override
  String toString() {
    return 'BillDeliveryEvent.update(residentId: $residentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEventImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, residentId);

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      __$$UpdateEventImplCopyWithImpl<_$UpdateEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BillDeliveryType deliveryType) setDeliveryType,
    required TResult Function(String email) setEmailAddress,
    required TResult Function(String phoneNumber) setPhoneNumber,
    required TResult Function(int leadDays) setLeadDaysForBillReminder,
    required TResult Function(String email, String phoneNumber, int leadDays)
        setBillingSettings,
    required TResult Function(bool readmode) setReadMode,
    required TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)
        setDefaultValues,
    required TResult Function(BillDeliveryType billDeliveryType,
            String emailAddress, String phoneNumber, int leadDays)
        initializeBillingSettings,
    required TResult Function() validateEmailAddress,
    required TResult Function() validatePhoneNumber,
    required TResult Function(String residentId) update,
  }) {
    return update(residentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult? Function(String email)? setEmailAddress,
    TResult? Function(String phoneNumber)? setPhoneNumber,
    TResult? Function(int leadDays)? setLeadDaysForBillReminder,
    TResult? Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult? Function(bool readmode)? setReadMode,
    TResult? Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult? Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult? Function()? validateEmailAddress,
    TResult? Function()? validatePhoneNumber,
    TResult? Function(String residentId)? update,
  }) {
    return update?.call(residentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BillDeliveryType deliveryType)? setDeliveryType,
    TResult Function(String email)? setEmailAddress,
    TResult Function(String phoneNumber)? setPhoneNumber,
    TResult Function(int leadDays)? setLeadDaysForBillReminder,
    TResult Function(String email, String phoneNumber, int leadDays)?
        setBillingSettings,
    TResult Function(bool readmode)? setReadMode,
    TResult Function(
            BillDeliveryType defaultDeliveryType,
            BillDeliveryType selectedDeliveryType,
            String defaultEmail,
            String defaultPhoneNumber)?
        setDefaultValues,
    TResult Function(BillDeliveryType billDeliveryType, String emailAddress,
            String phoneNumber, int leadDays)?
        initializeBillingSettings,
    TResult Function()? validateEmailAddress,
    TResult Function()? validatePhoneNumber,
    TResult Function(String residentId)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(residentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDeliveryType value) setDeliveryType,
    required TResult Function(_SetEmailAddress value) setEmailAddress,
    required TResult Function(_SetPhoneNumber value) setPhoneNumber,
    required TResult Function(_SetLeadDaysForBillReminder value)
        setLeadDaysForBillReminder,
    required TResult Function(_SetBillingSettings value) setBillingSettings,
    required TResult Function(_SetReadMode value) setReadMode,
    required TResult Function(_SetDefaultValues value) setDefaultValues,
    required TResult Function(_InitializeBillingSettings value)
        initializeBillingSettings,
    required TResult Function(_ValidateEmailAddress value) validateEmailAddress,
    required TResult Function(_ValidatePhoneNumber value) validatePhoneNumber,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDeliveryType value)? setDeliveryType,
    TResult? Function(_SetEmailAddress value)? setEmailAddress,
    TResult? Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult? Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult? Function(_SetBillingSettings value)? setBillingSettings,
    TResult? Function(_SetReadMode value)? setReadMode,
    TResult? Function(_SetDefaultValues value)? setDefaultValues,
    TResult? Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult? Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult? Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDeliveryType value)? setDeliveryType,
    TResult Function(_SetEmailAddress value)? setEmailAddress,
    TResult Function(_SetPhoneNumber value)? setPhoneNumber,
    TResult Function(_SetLeadDaysForBillReminder value)?
        setLeadDaysForBillReminder,
    TResult Function(_SetBillingSettings value)? setBillingSettings,
    TResult Function(_SetReadMode value)? setReadMode,
    TResult Function(_SetDefaultValues value)? setDefaultValues,
    TResult Function(_InitializeBillingSettings value)?
        initializeBillingSettings,
    TResult Function(_ValidateEmailAddress value)? validateEmailAddress,
    TResult Function(_ValidatePhoneNumber value)? validatePhoneNumber,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent implements BillDeliveryEvent {
  const factory _UpdateEvent({required final String residentId}) =
      _$UpdateEventImpl;

  String get residentId;

  /// Create a copy of BillDeliveryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateEventImplCopyWith<_$UpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BillDeliveryState {
  BillDeliveryType get deliveryType => throw _privateConstructorUsedError;
  EmailInput get email => throw _privateConstructorUsedError;
  PhoneInput get phone => throw _privateConstructorUsedError;
  int get leadDaysForBillReminder => throw _privateConstructorUsedError;
  String? get emailErrorMessage => throw _privateConstructorUsedError;
  String? get phoneErrorMessage => throw _privateConstructorUsedError;
  BillingSettingsUpdateStatus get updateStatus =>
      throw _privateConstructorUsedError;
  bool get readMode => throw _privateConstructorUsedError;

  /// Create a copy of BillDeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillDeliveryStateCopyWith<BillDeliveryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillDeliveryStateCopyWith<$Res> {
  factory $BillDeliveryStateCopyWith(
          BillDeliveryState value, $Res Function(BillDeliveryState) then) =
      _$BillDeliveryStateCopyWithImpl<$Res, BillDeliveryState>;
  @useResult
  $Res call(
      {BillDeliveryType deliveryType,
      EmailInput email,
      PhoneInput phone,
      int leadDaysForBillReminder,
      String? emailErrorMessage,
      String? phoneErrorMessage,
      BillingSettingsUpdateStatus updateStatus,
      bool readMode});

  $BillDeliveryTypeCopyWith<$Res> get deliveryType;
  $BillingSettingsUpdateStatusCopyWith<$Res> get updateStatus;
}

/// @nodoc
class _$BillDeliveryStateCopyWithImpl<$Res, $Val extends BillDeliveryState>
    implements $BillDeliveryStateCopyWith<$Res> {
  _$BillDeliveryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillDeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryType = null,
    Object? email = null,
    Object? phone = null,
    Object? leadDaysForBillReminder = null,
    Object? emailErrorMessage = freezed,
    Object? phoneErrorMessage = freezed,
    Object? updateStatus = null,
    Object? readMode = null,
  }) {
    return _then(_value.copyWith(
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as BillDeliveryType,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneInput,
      leadDaysForBillReminder: null == leadDaysForBillReminder
          ? _value.leadDaysForBillReminder
          : leadDaysForBillReminder // ignore: cast_nullable_to_non_nullable
              as int,
      emailErrorMessage: freezed == emailErrorMessage
          ? _value.emailErrorMessage
          : emailErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneErrorMessage: freezed == phoneErrorMessage
          ? _value.phoneErrorMessage
          : phoneErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      updateStatus: null == updateStatus
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as BillingSettingsUpdateStatus,
      readMode: null == readMode
          ? _value.readMode
          : readMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of BillDeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillDeliveryTypeCopyWith<$Res> get deliveryType {
    return $BillDeliveryTypeCopyWith<$Res>(_value.deliveryType, (value) {
      return _then(_value.copyWith(deliveryType: value) as $Val);
    });
  }

  /// Create a copy of BillDeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillingSettingsUpdateStatusCopyWith<$Res> get updateStatus {
    return $BillingSettingsUpdateStatusCopyWith<$Res>(_value.updateStatus,
        (value) {
      return _then(_value.copyWith(updateStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BillDeliveryStateImplCopyWith<$Res>
    implements $BillDeliveryStateCopyWith<$Res> {
  factory _$$BillDeliveryStateImplCopyWith(_$BillDeliveryStateImpl value,
          $Res Function(_$BillDeliveryStateImpl) then) =
      __$$BillDeliveryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BillDeliveryType deliveryType,
      EmailInput email,
      PhoneInput phone,
      int leadDaysForBillReminder,
      String? emailErrorMessage,
      String? phoneErrorMessage,
      BillingSettingsUpdateStatus updateStatus,
      bool readMode});

  @override
  $BillDeliveryTypeCopyWith<$Res> get deliveryType;
  @override
  $BillingSettingsUpdateStatusCopyWith<$Res> get updateStatus;
}

/// @nodoc
class __$$BillDeliveryStateImplCopyWithImpl<$Res>
    extends _$BillDeliveryStateCopyWithImpl<$Res, _$BillDeliveryStateImpl>
    implements _$$BillDeliveryStateImplCopyWith<$Res> {
  __$$BillDeliveryStateImplCopyWithImpl(_$BillDeliveryStateImpl _value,
      $Res Function(_$BillDeliveryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryType = null,
    Object? email = null,
    Object? phone = null,
    Object? leadDaysForBillReminder = null,
    Object? emailErrorMessage = freezed,
    Object? phoneErrorMessage = freezed,
    Object? updateStatus = null,
    Object? readMode = null,
  }) {
    return _then(_$BillDeliveryStateImpl(
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as BillDeliveryType,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneInput,
      leadDaysForBillReminder: null == leadDaysForBillReminder
          ? _value.leadDaysForBillReminder
          : leadDaysForBillReminder // ignore: cast_nullable_to_non_nullable
              as int,
      emailErrorMessage: freezed == emailErrorMessage
          ? _value.emailErrorMessage
          : emailErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneErrorMessage: freezed == phoneErrorMessage
          ? _value.phoneErrorMessage
          : phoneErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      updateStatus: null == updateStatus
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as BillingSettingsUpdateStatus,
      readMode: null == readMode
          ? _value.readMode
          : readMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BillDeliveryStateImpl implements _BillDeliveryState {
  const _$BillDeliveryStateImpl(
      {this.deliveryType = const BillDeliveryType.email(),
      this.email = const EmailInput.pure(),
      this.phone = const PhoneInput.pure(),
      this.leadDaysForBillReminder = LeadDaysForBillReminderValues.none,
      this.emailErrorMessage = null,
      this.phoneErrorMessage = null,
      this.updateStatus = const _Initial(),
      this.readMode = false});

  @override
  @JsonKey()
  final BillDeliveryType deliveryType;
  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final PhoneInput phone;
  @override
  @JsonKey()
  final int leadDaysForBillReminder;
  @override
  @JsonKey()
  final String? emailErrorMessage;
  @override
  @JsonKey()
  final String? phoneErrorMessage;
  @override
  @JsonKey()
  final BillingSettingsUpdateStatus updateStatus;
  @override
  @JsonKey()
  final bool readMode;

  @override
  String toString() {
    return 'BillDeliveryState(deliveryType: $deliveryType, email: $email, phone: $phone, leadDaysForBillReminder: $leadDaysForBillReminder, emailErrorMessage: $emailErrorMessage, phoneErrorMessage: $phoneErrorMessage, updateStatus: $updateStatus, readMode: $readMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillDeliveryStateImpl &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(
                    other.leadDaysForBillReminder, leadDaysForBillReminder) ||
                other.leadDaysForBillReminder == leadDaysForBillReminder) &&
            (identical(other.emailErrorMessage, emailErrorMessage) ||
                other.emailErrorMessage == emailErrorMessage) &&
            (identical(other.phoneErrorMessage, phoneErrorMessage) ||
                other.phoneErrorMessage == phoneErrorMessage) &&
            (identical(other.updateStatus, updateStatus) ||
                other.updateStatus == updateStatus) &&
            (identical(other.readMode, readMode) ||
                other.readMode == readMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      deliveryType,
      email,
      phone,
      leadDaysForBillReminder,
      emailErrorMessage,
      phoneErrorMessage,
      updateStatus,
      readMode);

  /// Create a copy of BillDeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillDeliveryStateImplCopyWith<_$BillDeliveryStateImpl> get copyWith =>
      __$$BillDeliveryStateImplCopyWithImpl<_$BillDeliveryStateImpl>(
          this, _$identity);
}

abstract class _BillDeliveryState implements BillDeliveryState {
  const factory _BillDeliveryState(
      {final BillDeliveryType deliveryType,
      final EmailInput email,
      final PhoneInput phone,
      final int leadDaysForBillReminder,
      final String? emailErrorMessage,
      final String? phoneErrorMessage,
      final BillingSettingsUpdateStatus updateStatus,
      final bool readMode}) = _$BillDeliveryStateImpl;

  @override
  BillDeliveryType get deliveryType;
  @override
  EmailInput get email;
  @override
  PhoneInput get phone;
  @override
  int get leadDaysForBillReminder;
  @override
  String? get emailErrorMessage;
  @override
  String? get phoneErrorMessage;
  @override
  BillingSettingsUpdateStatus get updateStatus;
  @override
  bool get readMode;

  /// Create a copy of BillDeliveryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillDeliveryStateImplCopyWith<_$BillDeliveryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BillingSettingsUpdateStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updating,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updating value)? updating,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updating value)? updating,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingSettingsUpdateStatusCopyWith<$Res> {
  factory $BillingSettingsUpdateStatusCopyWith(
          BillingSettingsUpdateStatus value,
          $Res Function(BillingSettingsUpdateStatus) then) =
      _$BillingSettingsUpdateStatusCopyWithImpl<$Res,
          BillingSettingsUpdateStatus>;
}

/// @nodoc
class _$BillingSettingsUpdateStatusCopyWithImpl<$Res,
        $Val extends BillingSettingsUpdateStatus>
    implements $BillingSettingsUpdateStatusCopyWith<$Res> {
  _$BillingSettingsUpdateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingSettingsUpdateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BillingSettingsUpdateStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingSettingsUpdateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BillingSettingsUpdateStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updating,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updating value)? updating,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updating value)? updating,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BillingSettingsUpdateStatus {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UpdatingImplCopyWith<$Res> {
  factory _$$UpdatingImplCopyWith(
          _$UpdatingImpl value, $Res Function(_$UpdatingImpl) then) =
      __$$UpdatingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatingImplCopyWithImpl<$Res>
    extends _$BillingSettingsUpdateStatusCopyWithImpl<$Res, _$UpdatingImpl>
    implements _$$UpdatingImplCopyWith<$Res> {
  __$$UpdatingImplCopyWithImpl(
      _$UpdatingImpl _value, $Res Function(_$UpdatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingSettingsUpdateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdatingImpl implements _Updating {
  const _$UpdatingImpl();

  @override
  String toString() {
    return 'BillingSettingsUpdateStatus.updating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updating,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return updating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return updating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updating value)? updating,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updating value)? updating,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class _Updating implements BillingSettingsUpdateStatus {
  const factory _Updating() = _$UpdatingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$BillingSettingsUpdateStatusCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingSettingsUpdateStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'BillingSettingsUpdateStatus.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updating,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updating value)? updating,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updating value)? updating,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements BillingSettingsUpdateStatus {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$BillingSettingsUpdateStatusCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingSettingsUpdateStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BillingSettingsUpdateStatus.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BillingSettingsUpdateStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updating,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updating,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updating,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Updating value) updating,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Updating value)? updating,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Updating value)? updating,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements BillingSettingsUpdateStatus {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of BillingSettingsUpdateStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BillDeliveryType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() email,
    required TResult Function() mail,
    required TResult Function() phone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? email,
    TResult? Function()? mail,
    TResult? Function()? phone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? mail,
    TResult Function()? phone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Email value) email,
    required TResult Function(_Mail value) mail,
    required TResult Function(_Phone value) phone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Email value)? email,
    TResult? Function(_Mail value)? mail,
    TResult? Function(_Phone value)? phone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Email value)? email,
    TResult Function(_Mail value)? mail,
    TResult Function(_Phone value)? phone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillDeliveryTypeCopyWith<$Res> {
  factory $BillDeliveryTypeCopyWith(
          BillDeliveryType value, $Res Function(BillDeliveryType) then) =
      _$BillDeliveryTypeCopyWithImpl<$Res, BillDeliveryType>;
}

/// @nodoc
class _$BillDeliveryTypeCopyWithImpl<$Res, $Val extends BillDeliveryType>
    implements $BillDeliveryTypeCopyWith<$Res> {
  _$BillDeliveryTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillDeliveryType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmailImplCopyWith<$Res> {
  factory _$$EmailImplCopyWith(
          _$EmailImpl value, $Res Function(_$EmailImpl) then) =
      __$$EmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailImplCopyWithImpl<$Res>
    extends _$BillDeliveryTypeCopyWithImpl<$Res, _$EmailImpl>
    implements _$$EmailImplCopyWith<$Res> {
  __$$EmailImplCopyWithImpl(
      _$EmailImpl _value, $Res Function(_$EmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmailImpl implements _Email {
  const _$EmailImpl();

  @override
  String toString() {
    return 'BillDeliveryType.email()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() email,
    required TResult Function() mail,
    required TResult Function() phone,
  }) {
    return email();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? email,
    TResult? Function()? mail,
    TResult? Function()? phone,
  }) {
    return email?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? mail,
    TResult Function()? phone,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Email value) email,
    required TResult Function(_Mail value) mail,
    required TResult Function(_Phone value) phone,
  }) {
    return email(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Email value)? email,
    TResult? Function(_Mail value)? mail,
    TResult? Function(_Phone value)? phone,
  }) {
    return email?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Email value)? email,
    TResult Function(_Mail value)? mail,
    TResult Function(_Phone value)? phone,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(this);
    }
    return orElse();
  }
}

abstract class _Email implements BillDeliveryType {
  const factory _Email() = _$EmailImpl;
}

/// @nodoc
abstract class _$$MailImplCopyWith<$Res> {
  factory _$$MailImplCopyWith(
          _$MailImpl value, $Res Function(_$MailImpl) then) =
      __$$MailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MailImplCopyWithImpl<$Res>
    extends _$BillDeliveryTypeCopyWithImpl<$Res, _$MailImpl>
    implements _$$MailImplCopyWith<$Res> {
  __$$MailImplCopyWithImpl(_$MailImpl _value, $Res Function(_$MailImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MailImpl implements _Mail {
  const _$MailImpl();

  @override
  String toString() {
    return 'BillDeliveryType.mail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() email,
    required TResult Function() mail,
    required TResult Function() phone,
  }) {
    return mail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? email,
    TResult? Function()? mail,
    TResult? Function()? phone,
  }) {
    return mail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? mail,
    TResult Function()? phone,
    required TResult orElse(),
  }) {
    if (mail != null) {
      return mail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Email value) email,
    required TResult Function(_Mail value) mail,
    required TResult Function(_Phone value) phone,
  }) {
    return mail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Email value)? email,
    TResult? Function(_Mail value)? mail,
    TResult? Function(_Phone value)? phone,
  }) {
    return mail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Email value)? email,
    TResult Function(_Mail value)? mail,
    TResult Function(_Phone value)? phone,
    required TResult orElse(),
  }) {
    if (mail != null) {
      return mail(this);
    }
    return orElse();
  }
}

abstract class _Mail implements BillDeliveryType {
  const factory _Mail() = _$MailImpl;
}

/// @nodoc
abstract class _$$PhoneImplCopyWith<$Res> {
  factory _$$PhoneImplCopyWith(
          _$PhoneImpl value, $Res Function(_$PhoneImpl) then) =
      __$$PhoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhoneImplCopyWithImpl<$Res>
    extends _$BillDeliveryTypeCopyWithImpl<$Res, _$PhoneImpl>
    implements _$$PhoneImplCopyWith<$Res> {
  __$$PhoneImplCopyWithImpl(
      _$PhoneImpl _value, $Res Function(_$PhoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDeliveryType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PhoneImpl implements _Phone {
  const _$PhoneImpl();

  @override
  String toString() {
    return 'BillDeliveryType.phone()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PhoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() email,
    required TResult Function() mail,
    required TResult Function() phone,
  }) {
    return phone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? email,
    TResult? Function()? mail,
    TResult? Function()? phone,
  }) {
    return phone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? email,
    TResult Function()? mail,
    TResult Function()? phone,
    required TResult orElse(),
  }) {
    if (phone != null) {
      return phone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Email value) email,
    required TResult Function(_Mail value) mail,
    required TResult Function(_Phone value) phone,
  }) {
    return phone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Email value)? email,
    TResult? Function(_Mail value)? mail,
    TResult? Function(_Phone value)? phone,
  }) {
    return phone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Email value)? email,
    TResult Function(_Mail value)? mail,
    TResult Function(_Phone value)? phone,
    required TResult orElse(),
  }) {
    if (phone != null) {
      return phone(this);
    }
    return orElse();
  }
}

abstract class _Phone implements BillDeliveryType {
  const factory _Phone() = _$PhoneImpl;
}
