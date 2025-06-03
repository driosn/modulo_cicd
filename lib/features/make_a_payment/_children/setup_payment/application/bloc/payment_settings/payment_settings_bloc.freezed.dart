// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentSettingsEvent {
  String get propertyId => throw _privateConstructorUsedError;
  PayToType get payToType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId, PayToType payToType)
        getPaymentSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId, PayToType payToType)?
        getPaymentSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId, PayToType payToType)?
        getPaymentSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentSettings value) getPaymentSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentSettings value)? getPaymentSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentSettings value)? getPaymentSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaymentSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentSettingsEventCopyWith<PaymentSettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentSettingsEventCopyWith<$Res> {
  factory $PaymentSettingsEventCopyWith(PaymentSettingsEvent value,
          $Res Function(PaymentSettingsEvent) then) =
      _$PaymentSettingsEventCopyWithImpl<$Res, PaymentSettingsEvent>;
  @useResult
  $Res call({String propertyId, PayToType payToType});

  $PayToTypeCopyWith<$Res> get payToType;
}

/// @nodoc
class _$PaymentSettingsEventCopyWithImpl<$Res,
        $Val extends PaymentSettingsEvent>
    implements $PaymentSettingsEventCopyWith<$Res> {
  _$PaymentSettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? payToType = null,
  }) {
    return _then(_value.copyWith(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      payToType: null == payToType
          ? _value.payToType
          : payToType // ignore: cast_nullable_to_non_nullable
              as PayToType,
    ) as $Val);
  }

  /// Create a copy of PaymentSettingsEvent
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
abstract class _$$GetPaymentSettingsImplCopyWith<$Res>
    implements $PaymentSettingsEventCopyWith<$Res> {
  factory _$$GetPaymentSettingsImplCopyWith(_$GetPaymentSettingsImpl value,
          $Res Function(_$GetPaymentSettingsImpl) then) =
      __$$GetPaymentSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String propertyId, PayToType payToType});

  @override
  $PayToTypeCopyWith<$Res> get payToType;
}

/// @nodoc
class __$$GetPaymentSettingsImplCopyWithImpl<$Res>
    extends _$PaymentSettingsEventCopyWithImpl<$Res, _$GetPaymentSettingsImpl>
    implements _$$GetPaymentSettingsImplCopyWith<$Res> {
  __$$GetPaymentSettingsImplCopyWithImpl(_$GetPaymentSettingsImpl _value,
      $Res Function(_$GetPaymentSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? payToType = null,
  }) {
    return _then(_$GetPaymentSettingsImpl(
      null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      null == payToType
          ? _value.payToType
          : payToType // ignore: cast_nullable_to_non_nullable
              as PayToType,
    ));
  }
}

/// @nodoc

class _$GetPaymentSettingsImpl implements _GetPaymentSettings {
  const _$GetPaymentSettingsImpl(this.propertyId, this.payToType);

  @override
  final String propertyId;
  @override
  final PayToType payToType;

  @override
  String toString() {
    return 'PaymentSettingsEvent.getPaymentSettings(propertyId: $propertyId, payToType: $payToType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentSettingsImpl &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.payToType, payToType) ||
                other.payToType == payToType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propertyId, payToType);

  /// Create a copy of PaymentSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentSettingsImplCopyWith<_$GetPaymentSettingsImpl> get copyWith =>
      __$$GetPaymentSettingsImplCopyWithImpl<_$GetPaymentSettingsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String propertyId, PayToType payToType)
        getPaymentSettings,
  }) {
    return getPaymentSettings(propertyId, payToType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String propertyId, PayToType payToType)?
        getPaymentSettings,
  }) {
    return getPaymentSettings?.call(propertyId, payToType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String propertyId, PayToType payToType)?
        getPaymentSettings,
    required TResult orElse(),
  }) {
    if (getPaymentSettings != null) {
      return getPaymentSettings(propertyId, payToType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentSettings value) getPaymentSettings,
  }) {
    return getPaymentSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentSettings value)? getPaymentSettings,
  }) {
    return getPaymentSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentSettings value)? getPaymentSettings,
    required TResult orElse(),
  }) {
    if (getPaymentSettings != null) {
      return getPaymentSettings(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentSettings implements PaymentSettingsEvent {
  const factory _GetPaymentSettings(
          final String propertyId, final PayToType payToType) =
      _$GetPaymentSettingsImpl;

  @override
  String get propertyId;
  @override
  PayToType get payToType;

  /// Create a copy of PaymentSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPaymentSettingsImplCopyWith<_$GetPaymentSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentSettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)
        success,
    required TResult Function(MAError error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)?
        success,
    TResult? Function(MAError error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)?
        success,
    TResult Function(MAError error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentSettingsStateCopyWith<$Res> {
  factory $PaymentSettingsStateCopyWith(PaymentSettingsState value,
          $Res Function(PaymentSettingsState) then) =
      _$PaymentSettingsStateCopyWithImpl<$Res, PaymentSettingsState>;
}

/// @nodoc
class _$PaymentSettingsStateCopyWithImpl<$Res,
        $Val extends PaymentSettingsState>
    implements $PaymentSettingsStateCopyWith<$Res> {
  _$PaymentSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentSettingsState
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
    extends _$PaymentSettingsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentSettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PaymentSettingsState.initial()';
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
    required TResult Function() loading,
    required TResult Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)
        success,
    required TResult Function(MAError error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)?
        success,
    TResult? Function(MAError error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)?
        success,
    TResult Function(MAError error)? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Initial implements PaymentSettingsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PaymentSettingsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentSettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PaymentSettingsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)
        success,
    required TResult Function(MAError error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)?
        success,
    TResult? Function(MAError error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)?
        success,
    TResult Function(MAError error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PaymentSettingsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool displayBankAccount,
      bool displayCreditCard,
      bool displayMobileWallet,
      bool displayGooglePlay,
      bool displayPayPal,
      bool displayVenmo,
      bool isRBCPaymentAccount});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PaymentSettingsStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayBankAccount = null,
    Object? displayCreditCard = null,
    Object? displayMobileWallet = null,
    Object? displayGooglePlay = null,
    Object? displayPayPal = null,
    Object? displayVenmo = null,
    Object? isRBCPaymentAccount = null,
  }) {
    return _then(_$SuccessImpl(
      displayBankAccount: null == displayBankAccount
          ? _value.displayBankAccount
          : displayBankAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      displayCreditCard: null == displayCreditCard
          ? _value.displayCreditCard
          : displayCreditCard // ignore: cast_nullable_to_non_nullable
              as bool,
      displayMobileWallet: null == displayMobileWallet
          ? _value.displayMobileWallet
          : displayMobileWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      displayGooglePlay: null == displayGooglePlay
          ? _value.displayGooglePlay
          : displayGooglePlay // ignore: cast_nullable_to_non_nullable
              as bool,
      displayPayPal: null == displayPayPal
          ? _value.displayPayPal
          : displayPayPal // ignore: cast_nullable_to_non_nullable
              as bool,
      displayVenmo: null == displayVenmo
          ? _value.displayVenmo
          : displayVenmo // ignore: cast_nullable_to_non_nullable
              as bool,
      isRBCPaymentAccount: null == isRBCPaymentAccount
          ? _value.isRBCPaymentAccount
          : isRBCPaymentAccount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {this.displayBankAccount = false,
      this.displayCreditCard = false,
      this.displayMobileWallet = false,
      this.displayGooglePlay = false,
      this.displayPayPal = false,
      this.displayVenmo = false,
      this.isRBCPaymentAccount = false});

  @override
  @JsonKey()
  final bool displayBankAccount;
  @override
  @JsonKey()
  final bool displayCreditCard;
  @override
  @JsonKey()
  final bool displayMobileWallet;
  @override
  @JsonKey()
  final bool displayGooglePlay;
  @override
  @JsonKey()
  final bool displayPayPal;
  @override
  @JsonKey()
  final bool displayVenmo;
  @override
  @JsonKey()
  final bool isRBCPaymentAccount;

  @override
  String toString() {
    return 'PaymentSettingsState.success(displayBankAccount: $displayBankAccount, displayCreditCard: $displayCreditCard, displayMobileWallet: $displayMobileWallet, displayGooglePlay: $displayGooglePlay, displayPayPal: $displayPayPal, displayVenmo: $displayVenmo, isRBCPaymentAccount: $isRBCPaymentAccount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.displayBankAccount, displayBankAccount) ||
                other.displayBankAccount == displayBankAccount) &&
            (identical(other.displayCreditCard, displayCreditCard) ||
                other.displayCreditCard == displayCreditCard) &&
            (identical(other.displayMobileWallet, displayMobileWallet) ||
                other.displayMobileWallet == displayMobileWallet) &&
            (identical(other.displayGooglePlay, displayGooglePlay) ||
                other.displayGooglePlay == displayGooglePlay) &&
            (identical(other.displayPayPal, displayPayPal) ||
                other.displayPayPal == displayPayPal) &&
            (identical(other.displayVenmo, displayVenmo) ||
                other.displayVenmo == displayVenmo) &&
            (identical(other.isRBCPaymentAccount, isRBCPaymentAccount) ||
                other.isRBCPaymentAccount == isRBCPaymentAccount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      displayBankAccount,
      displayCreditCard,
      displayMobileWallet,
      displayGooglePlay,
      displayPayPal,
      displayVenmo,
      isRBCPaymentAccount);

  /// Create a copy of PaymentSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)
        success,
    required TResult Function(MAError error) failure,
  }) {
    return success(displayBankAccount, displayCreditCard, displayMobileWallet,
        displayGooglePlay, displayPayPal, displayVenmo, isRBCPaymentAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)?
        success,
    TResult? Function(MAError error)? failure,
  }) {
    return success?.call(
        displayBankAccount,
        displayCreditCard,
        displayMobileWallet,
        displayGooglePlay,
        displayPayPal,
        displayVenmo,
        isRBCPaymentAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)?
        success,
    TResult Function(MAError error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(displayBankAccount, displayCreditCard, displayMobileWallet,
          displayGooglePlay, displayPayPal, displayVenmo, isRBCPaymentAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Success implements PaymentSettingsState {
  const factory _Success(
      {final bool displayBankAccount,
      final bool displayCreditCard,
      final bool displayMobileWallet,
      final bool displayGooglePlay,
      final bool displayPayPal,
      final bool displayVenmo,
      final bool isRBCPaymentAccount}) = _$SuccessImpl;

  bool get displayBankAccount;
  bool get displayCreditCard;
  bool get displayMobileWallet;
  bool get displayGooglePlay;
  bool get displayPayPal;
  bool get displayVenmo;
  bool get isRBCPaymentAccount;

  /// Create a copy of PaymentSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MAError error});

  $MAErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$PaymentSettingsStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MAError,
    ));
  }

  /// Create a copy of PaymentSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MAErrorCopyWith<$Res> get error {
    return $MAErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.error);

  @override
  final MAError error;

  @override
  String toString() {
    return 'PaymentSettingsState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of PaymentSettingsState
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
    required TResult Function() loading,
    required TResult Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)
        success,
    required TResult Function(MAError error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)?
        success,
    TResult? Function(MAError error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            bool displayBankAccount,
            bool displayCreditCard,
            bool displayMobileWallet,
            bool displayGooglePlay,
            bool displayPayPal,
            bool displayVenmo,
            bool isRBCPaymentAccount)?
        success,
    TResult Function(MAError error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Failure implements PaymentSettingsState {
  const factory _Failure(final MAError error) = _$FailureImpl;

  MAError get error;

  /// Create a copy of PaymentSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
