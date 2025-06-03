// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_accounts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentAccountsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) getPaymentAccounts,
    required TResult Function(bool isRBCPaymentAccount) setIsRBCPaymentAccount,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        create,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        update,
    required TResult Function(String residentId) deletePaymentAccounts,
    required TResult Function() restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? getPaymentAccounts,
    TResult? Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult? Function(String residentId)? deletePaymentAccounts,
    TResult? Function()? restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? getPaymentAccounts,
    TResult Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult Function(String residentId)? deletePaymentAccounts,
    TResult Function()? restart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentAccountsEvent value)
        getPaymentAccounts,
    required TResult Function(_SetIsRBCPaymentAccountEvent value)
        setIsRBCPaymentAccount,
    required TResult Function(_CreatePaymentAccountsEvent value) create,
    required TResult Function(_UpdatePaymentAccountsEvent value) update,
    required TResult Function(_DeletePaymentAccountsEvent value)
        deletePaymentAccounts,
    required TResult Function(_RestartPaymentAccountsEvent value) restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult? Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult? Function(_CreatePaymentAccountsEvent value)? create,
    TResult? Function(_UpdatePaymentAccountsEvent value)? update,
    TResult? Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult? Function(_RestartPaymentAccountsEvent value)? restart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult Function(_CreatePaymentAccountsEvent value)? create,
    TResult Function(_UpdatePaymentAccountsEvent value)? update,
    TResult Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult Function(_RestartPaymentAccountsEvent value)? restart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAccountsEventCopyWith<$Res> {
  factory $PaymentAccountsEventCopyWith(PaymentAccountsEvent value,
          $Res Function(PaymentAccountsEvent) then) =
      _$PaymentAccountsEventCopyWithImpl<$Res, PaymentAccountsEvent>;
}

/// @nodoc
class _$PaymentAccountsEventCopyWithImpl<$Res,
        $Val extends PaymentAccountsEvent>
    implements $PaymentAccountsEventCopyWith<$Res> {
  _$PaymentAccountsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPaymentAccountsEventImplCopyWith<$Res> {
  factory _$$GetPaymentAccountsEventImplCopyWith(
          _$GetPaymentAccountsEventImpl value,
          $Res Function(_$GetPaymentAccountsEventImpl) then) =
      __$$GetPaymentAccountsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String residentId});
}

/// @nodoc
class __$$GetPaymentAccountsEventImplCopyWithImpl<$Res>
    extends _$PaymentAccountsEventCopyWithImpl<$Res,
        _$GetPaymentAccountsEventImpl>
    implements _$$GetPaymentAccountsEventImplCopyWith<$Res> {
  __$$GetPaymentAccountsEventImplCopyWithImpl(
      _$GetPaymentAccountsEventImpl _value,
      $Res Function(_$GetPaymentAccountsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
  }) {
    return _then(_$GetPaymentAccountsEventImpl(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPaymentAccountsEventImpl
    with DiagnosticableTreeMixin
    implements _GetPaymentAccountsEvent {
  const _$GetPaymentAccountsEventImpl({required this.residentId});

  @override
  final String residentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentAccountsEvent.getPaymentAccounts(residentId: $residentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PaymentAccountsEvent.getPaymentAccounts'))
      ..add(DiagnosticsProperty('residentId', residentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPaymentAccountsEventImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, residentId);

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPaymentAccountsEventImplCopyWith<_$GetPaymentAccountsEventImpl>
      get copyWith => __$$GetPaymentAccountsEventImplCopyWithImpl<
          _$GetPaymentAccountsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) getPaymentAccounts,
    required TResult Function(bool isRBCPaymentAccount) setIsRBCPaymentAccount,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        create,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        update,
    required TResult Function(String residentId) deletePaymentAccounts,
    required TResult Function() restart,
  }) {
    return getPaymentAccounts(residentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? getPaymentAccounts,
    TResult? Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult? Function(String residentId)? deletePaymentAccounts,
    TResult? Function()? restart,
  }) {
    return getPaymentAccounts?.call(residentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? getPaymentAccounts,
    TResult Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult Function(String residentId)? deletePaymentAccounts,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (getPaymentAccounts != null) {
      return getPaymentAccounts(residentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentAccountsEvent value)
        getPaymentAccounts,
    required TResult Function(_SetIsRBCPaymentAccountEvent value)
        setIsRBCPaymentAccount,
    required TResult Function(_CreatePaymentAccountsEvent value) create,
    required TResult Function(_UpdatePaymentAccountsEvent value) update,
    required TResult Function(_DeletePaymentAccountsEvent value)
        deletePaymentAccounts,
    required TResult Function(_RestartPaymentAccountsEvent value) restart,
  }) {
    return getPaymentAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult? Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult? Function(_CreatePaymentAccountsEvent value)? create,
    TResult? Function(_UpdatePaymentAccountsEvent value)? update,
    TResult? Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult? Function(_RestartPaymentAccountsEvent value)? restart,
  }) {
    return getPaymentAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult Function(_CreatePaymentAccountsEvent value)? create,
    TResult Function(_UpdatePaymentAccountsEvent value)? update,
    TResult Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult Function(_RestartPaymentAccountsEvent value)? restart,
    required TResult orElse(),
  }) {
    if (getPaymentAccounts != null) {
      return getPaymentAccounts(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentAccountsEvent implements PaymentAccountsEvent {
  const factory _GetPaymentAccountsEvent({required final String residentId}) =
      _$GetPaymentAccountsEventImpl;

  String get residentId;

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPaymentAccountsEventImplCopyWith<_$GetPaymentAccountsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetIsRBCPaymentAccountEventImplCopyWith<$Res> {
  factory _$$SetIsRBCPaymentAccountEventImplCopyWith(
          _$SetIsRBCPaymentAccountEventImpl value,
          $Res Function(_$SetIsRBCPaymentAccountEventImpl) then) =
      __$$SetIsRBCPaymentAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRBCPaymentAccount});
}

/// @nodoc
class __$$SetIsRBCPaymentAccountEventImplCopyWithImpl<$Res>
    extends _$PaymentAccountsEventCopyWithImpl<$Res,
        _$SetIsRBCPaymentAccountEventImpl>
    implements _$$SetIsRBCPaymentAccountEventImplCopyWith<$Res> {
  __$$SetIsRBCPaymentAccountEventImplCopyWithImpl(
      _$SetIsRBCPaymentAccountEventImpl _value,
      $Res Function(_$SetIsRBCPaymentAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRBCPaymentAccount = null,
  }) {
    return _then(_$SetIsRBCPaymentAccountEventImpl(
      isRBCPaymentAccount: null == isRBCPaymentAccount
          ? _value.isRBCPaymentAccount
          : isRBCPaymentAccount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetIsRBCPaymentAccountEventImpl
    with DiagnosticableTreeMixin
    implements _SetIsRBCPaymentAccountEvent {
  const _$SetIsRBCPaymentAccountEventImpl({required this.isRBCPaymentAccount});

  @override
  final bool isRBCPaymentAccount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentAccountsEvent.setIsRBCPaymentAccount(isRBCPaymentAccount: $isRBCPaymentAccount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PaymentAccountsEvent.setIsRBCPaymentAccount'))
      ..add(DiagnosticsProperty('isRBCPaymentAccount', isRBCPaymentAccount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIsRBCPaymentAccountEventImpl &&
            (identical(other.isRBCPaymentAccount, isRBCPaymentAccount) ||
                other.isRBCPaymentAccount == isRBCPaymentAccount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRBCPaymentAccount);

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIsRBCPaymentAccountEventImplCopyWith<_$SetIsRBCPaymentAccountEventImpl>
      get copyWith => __$$SetIsRBCPaymentAccountEventImplCopyWithImpl<
          _$SetIsRBCPaymentAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) getPaymentAccounts,
    required TResult Function(bool isRBCPaymentAccount) setIsRBCPaymentAccount,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        create,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        update,
    required TResult Function(String residentId) deletePaymentAccounts,
    required TResult Function() restart,
  }) {
    return setIsRBCPaymentAccount(isRBCPaymentAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? getPaymentAccounts,
    TResult? Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult? Function(String residentId)? deletePaymentAccounts,
    TResult? Function()? restart,
  }) {
    return setIsRBCPaymentAccount?.call(isRBCPaymentAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? getPaymentAccounts,
    TResult Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult Function(String residentId)? deletePaymentAccounts,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (setIsRBCPaymentAccount != null) {
      return setIsRBCPaymentAccount(isRBCPaymentAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentAccountsEvent value)
        getPaymentAccounts,
    required TResult Function(_SetIsRBCPaymentAccountEvent value)
        setIsRBCPaymentAccount,
    required TResult Function(_CreatePaymentAccountsEvent value) create,
    required TResult Function(_UpdatePaymentAccountsEvent value) update,
    required TResult Function(_DeletePaymentAccountsEvent value)
        deletePaymentAccounts,
    required TResult Function(_RestartPaymentAccountsEvent value) restart,
  }) {
    return setIsRBCPaymentAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult? Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult? Function(_CreatePaymentAccountsEvent value)? create,
    TResult? Function(_UpdatePaymentAccountsEvent value)? update,
    TResult? Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult? Function(_RestartPaymentAccountsEvent value)? restart,
  }) {
    return setIsRBCPaymentAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult Function(_CreatePaymentAccountsEvent value)? create,
    TResult Function(_UpdatePaymentAccountsEvent value)? update,
    TResult Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult Function(_RestartPaymentAccountsEvent value)? restart,
    required TResult orElse(),
  }) {
    if (setIsRBCPaymentAccount != null) {
      return setIsRBCPaymentAccount(this);
    }
    return orElse();
  }
}

abstract class _SetIsRBCPaymentAccountEvent implements PaymentAccountsEvent {
  const factory _SetIsRBCPaymentAccountEvent(
          {required final bool isRBCPaymentAccount}) =
      _$SetIsRBCPaymentAccountEventImpl;

  bool get isRBCPaymentAccount;

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetIsRBCPaymentAccountEventImplCopyWith<_$SetIsRBCPaymentAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePaymentAccountsEventImplCopyWith<$Res> {
  factory _$$CreatePaymentAccountsEventImplCopyWith(
          _$CreatePaymentAccountsEventImpl value,
          $Res Function(_$CreatePaymentAccountsEventImpl) then) =
      __$$CreatePaymentAccountsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String residentId,
      String residentUserId,
      NewPaymentAccount paymentAccount});
}

/// @nodoc
class __$$CreatePaymentAccountsEventImplCopyWithImpl<$Res>
    extends _$PaymentAccountsEventCopyWithImpl<$Res,
        _$CreatePaymentAccountsEventImpl>
    implements _$$CreatePaymentAccountsEventImplCopyWith<$Res> {
  __$$CreatePaymentAccountsEventImplCopyWithImpl(
      _$CreatePaymentAccountsEventImpl _value,
      $Res Function(_$CreatePaymentAccountsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
    Object? residentUserId = null,
    Object? paymentAccount = null,
  }) {
    return _then(_$CreatePaymentAccountsEventImpl(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAccount: null == paymentAccount
          ? _value.paymentAccount
          : paymentAccount // ignore: cast_nullable_to_non_nullable
              as NewPaymentAccount,
    ));
  }
}

/// @nodoc

class _$CreatePaymentAccountsEventImpl
    with DiagnosticableTreeMixin
    implements _CreatePaymentAccountsEvent {
  const _$CreatePaymentAccountsEventImpl(
      {required this.residentId,
      required this.residentUserId,
      required this.paymentAccount});

  @override
  final String residentId;
  @override
  final String residentUserId;
  @override
  final NewPaymentAccount paymentAccount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentAccountsEvent.create(residentId: $residentId, residentUserId: $residentUserId, paymentAccount: $paymentAccount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentAccountsEvent.create'))
      ..add(DiagnosticsProperty('residentId', residentId))
      ..add(DiagnosticsProperty('residentUserId', residentUserId))
      ..add(DiagnosticsProperty('paymentAccount', paymentAccount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePaymentAccountsEventImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId) &&
            (identical(other.residentUserId, residentUserId) ||
                other.residentUserId == residentUserId) &&
            (identical(other.paymentAccount, paymentAccount) ||
                other.paymentAccount == paymentAccount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, residentId, residentUserId, paymentAccount);

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePaymentAccountsEventImplCopyWith<_$CreatePaymentAccountsEventImpl>
      get copyWith => __$$CreatePaymentAccountsEventImplCopyWithImpl<
          _$CreatePaymentAccountsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) getPaymentAccounts,
    required TResult Function(bool isRBCPaymentAccount) setIsRBCPaymentAccount,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        create,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        update,
    required TResult Function(String residentId) deletePaymentAccounts,
    required TResult Function() restart,
  }) {
    return create(residentId, residentUserId, paymentAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? getPaymentAccounts,
    TResult? Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult? Function(String residentId)? deletePaymentAccounts,
    TResult? Function()? restart,
  }) {
    return create?.call(residentId, residentUserId, paymentAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? getPaymentAccounts,
    TResult Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult Function(String residentId)? deletePaymentAccounts,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(residentId, residentUserId, paymentAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentAccountsEvent value)
        getPaymentAccounts,
    required TResult Function(_SetIsRBCPaymentAccountEvent value)
        setIsRBCPaymentAccount,
    required TResult Function(_CreatePaymentAccountsEvent value) create,
    required TResult Function(_UpdatePaymentAccountsEvent value) update,
    required TResult Function(_DeletePaymentAccountsEvent value)
        deletePaymentAccounts,
    required TResult Function(_RestartPaymentAccountsEvent value) restart,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult? Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult? Function(_CreatePaymentAccountsEvent value)? create,
    TResult? Function(_UpdatePaymentAccountsEvent value)? update,
    TResult? Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult? Function(_RestartPaymentAccountsEvent value)? restart,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult Function(_CreatePaymentAccountsEvent value)? create,
    TResult Function(_UpdatePaymentAccountsEvent value)? update,
    TResult Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult Function(_RestartPaymentAccountsEvent value)? restart,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _CreatePaymentAccountsEvent implements PaymentAccountsEvent {
  const factory _CreatePaymentAccountsEvent(
          {required final String residentId,
          required final String residentUserId,
          required final NewPaymentAccount paymentAccount}) =
      _$CreatePaymentAccountsEventImpl;

  String get residentId;
  String get residentUserId;
  NewPaymentAccount get paymentAccount;

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePaymentAccountsEventImplCopyWith<_$CreatePaymentAccountsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePaymentAccountsEventImplCopyWith<$Res> {
  factory _$$UpdatePaymentAccountsEventImplCopyWith(
          _$UpdatePaymentAccountsEventImpl value,
          $Res Function(_$UpdatePaymentAccountsEventImpl) then) =
      __$$UpdatePaymentAccountsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String residentId,
      String residentUserId,
      NewPaymentAccount paymentAccount});
}

/// @nodoc
class __$$UpdatePaymentAccountsEventImplCopyWithImpl<$Res>
    extends _$PaymentAccountsEventCopyWithImpl<$Res,
        _$UpdatePaymentAccountsEventImpl>
    implements _$$UpdatePaymentAccountsEventImplCopyWith<$Res> {
  __$$UpdatePaymentAccountsEventImplCopyWithImpl(
      _$UpdatePaymentAccountsEventImpl _value,
      $Res Function(_$UpdatePaymentAccountsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
    Object? residentUserId = null,
    Object? paymentAccount = null,
  }) {
    return _then(_$UpdatePaymentAccountsEventImpl(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAccount: null == paymentAccount
          ? _value.paymentAccount
          : paymentAccount // ignore: cast_nullable_to_non_nullable
              as NewPaymentAccount,
    ));
  }
}

/// @nodoc

class _$UpdatePaymentAccountsEventImpl
    with DiagnosticableTreeMixin
    implements _UpdatePaymentAccountsEvent {
  const _$UpdatePaymentAccountsEventImpl(
      {required this.residentId,
      required this.residentUserId,
      required this.paymentAccount});

  @override
  final String residentId;
  @override
  final String residentUserId;
  @override
  final NewPaymentAccount paymentAccount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentAccountsEvent.update(residentId: $residentId, residentUserId: $residentUserId, paymentAccount: $paymentAccount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentAccountsEvent.update'))
      ..add(DiagnosticsProperty('residentId', residentId))
      ..add(DiagnosticsProperty('residentUserId', residentUserId))
      ..add(DiagnosticsProperty('paymentAccount', paymentAccount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePaymentAccountsEventImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId) &&
            (identical(other.residentUserId, residentUserId) ||
                other.residentUserId == residentUserId) &&
            (identical(other.paymentAccount, paymentAccount) ||
                other.paymentAccount == paymentAccount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, residentId, residentUserId, paymentAccount);

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePaymentAccountsEventImplCopyWith<_$UpdatePaymentAccountsEventImpl>
      get copyWith => __$$UpdatePaymentAccountsEventImplCopyWithImpl<
          _$UpdatePaymentAccountsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) getPaymentAccounts,
    required TResult Function(bool isRBCPaymentAccount) setIsRBCPaymentAccount,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        create,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        update,
    required TResult Function(String residentId) deletePaymentAccounts,
    required TResult Function() restart,
  }) {
    return update(residentId, residentUserId, paymentAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? getPaymentAccounts,
    TResult? Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult? Function(String residentId)? deletePaymentAccounts,
    TResult? Function()? restart,
  }) {
    return update?.call(residentId, residentUserId, paymentAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? getPaymentAccounts,
    TResult Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult Function(String residentId)? deletePaymentAccounts,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(residentId, residentUserId, paymentAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentAccountsEvent value)
        getPaymentAccounts,
    required TResult Function(_SetIsRBCPaymentAccountEvent value)
        setIsRBCPaymentAccount,
    required TResult Function(_CreatePaymentAccountsEvent value) create,
    required TResult Function(_UpdatePaymentAccountsEvent value) update,
    required TResult Function(_DeletePaymentAccountsEvent value)
        deletePaymentAccounts,
    required TResult Function(_RestartPaymentAccountsEvent value) restart,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult? Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult? Function(_CreatePaymentAccountsEvent value)? create,
    TResult? Function(_UpdatePaymentAccountsEvent value)? update,
    TResult? Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult? Function(_RestartPaymentAccountsEvent value)? restart,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult Function(_CreatePaymentAccountsEvent value)? create,
    TResult Function(_UpdatePaymentAccountsEvent value)? update,
    TResult Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult Function(_RestartPaymentAccountsEvent value)? restart,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdatePaymentAccountsEvent implements PaymentAccountsEvent {
  const factory _UpdatePaymentAccountsEvent(
          {required final String residentId,
          required final String residentUserId,
          required final NewPaymentAccount paymentAccount}) =
      _$UpdatePaymentAccountsEventImpl;

  String get residentId;
  String get residentUserId;
  NewPaymentAccount get paymentAccount;

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePaymentAccountsEventImplCopyWith<_$UpdatePaymentAccountsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePaymentAccountsEventImplCopyWith<$Res> {
  factory _$$DeletePaymentAccountsEventImplCopyWith(
          _$DeletePaymentAccountsEventImpl value,
          $Res Function(_$DeletePaymentAccountsEventImpl) then) =
      __$$DeletePaymentAccountsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String residentId});
}

/// @nodoc
class __$$DeletePaymentAccountsEventImplCopyWithImpl<$Res>
    extends _$PaymentAccountsEventCopyWithImpl<$Res,
        _$DeletePaymentAccountsEventImpl>
    implements _$$DeletePaymentAccountsEventImplCopyWith<$Res> {
  __$$DeletePaymentAccountsEventImplCopyWithImpl(
      _$DeletePaymentAccountsEventImpl _value,
      $Res Function(_$DeletePaymentAccountsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
  }) {
    return _then(_$DeletePaymentAccountsEventImpl(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePaymentAccountsEventImpl
    with DiagnosticableTreeMixin
    implements _DeletePaymentAccountsEvent {
  const _$DeletePaymentAccountsEventImpl({required this.residentId});

  @override
  final String residentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentAccountsEvent.deletePaymentAccounts(residentId: $residentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PaymentAccountsEvent.deletePaymentAccounts'))
      ..add(DiagnosticsProperty('residentId', residentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePaymentAccountsEventImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, residentId);

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePaymentAccountsEventImplCopyWith<_$DeletePaymentAccountsEventImpl>
      get copyWith => __$$DeletePaymentAccountsEventImplCopyWithImpl<
          _$DeletePaymentAccountsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) getPaymentAccounts,
    required TResult Function(bool isRBCPaymentAccount) setIsRBCPaymentAccount,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        create,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        update,
    required TResult Function(String residentId) deletePaymentAccounts,
    required TResult Function() restart,
  }) {
    return deletePaymentAccounts(residentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? getPaymentAccounts,
    TResult? Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult? Function(String residentId)? deletePaymentAccounts,
    TResult? Function()? restart,
  }) {
    return deletePaymentAccounts?.call(residentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? getPaymentAccounts,
    TResult Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult Function(String residentId)? deletePaymentAccounts,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (deletePaymentAccounts != null) {
      return deletePaymentAccounts(residentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentAccountsEvent value)
        getPaymentAccounts,
    required TResult Function(_SetIsRBCPaymentAccountEvent value)
        setIsRBCPaymentAccount,
    required TResult Function(_CreatePaymentAccountsEvent value) create,
    required TResult Function(_UpdatePaymentAccountsEvent value) update,
    required TResult Function(_DeletePaymentAccountsEvent value)
        deletePaymentAccounts,
    required TResult Function(_RestartPaymentAccountsEvent value) restart,
  }) {
    return deletePaymentAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult? Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult? Function(_CreatePaymentAccountsEvent value)? create,
    TResult? Function(_UpdatePaymentAccountsEvent value)? update,
    TResult? Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult? Function(_RestartPaymentAccountsEvent value)? restart,
  }) {
    return deletePaymentAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult Function(_CreatePaymentAccountsEvent value)? create,
    TResult Function(_UpdatePaymentAccountsEvent value)? update,
    TResult Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult Function(_RestartPaymentAccountsEvent value)? restart,
    required TResult orElse(),
  }) {
    if (deletePaymentAccounts != null) {
      return deletePaymentAccounts(this);
    }
    return orElse();
  }
}

abstract class _DeletePaymentAccountsEvent implements PaymentAccountsEvent {
  const factory _DeletePaymentAccountsEvent(
      {required final String residentId}) = _$DeletePaymentAccountsEventImpl;

  String get residentId;

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletePaymentAccountsEventImplCopyWith<_$DeletePaymentAccountsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestartPaymentAccountsEventImplCopyWith<$Res> {
  factory _$$RestartPaymentAccountsEventImplCopyWith(
          _$RestartPaymentAccountsEventImpl value,
          $Res Function(_$RestartPaymentAccountsEventImpl) then) =
      __$$RestartPaymentAccountsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestartPaymentAccountsEventImplCopyWithImpl<$Res>
    extends _$PaymentAccountsEventCopyWithImpl<$Res,
        _$RestartPaymentAccountsEventImpl>
    implements _$$RestartPaymentAccountsEventImplCopyWith<$Res> {
  __$$RestartPaymentAccountsEventImplCopyWithImpl(
      _$RestartPaymentAccountsEventImpl _value,
      $Res Function(_$RestartPaymentAccountsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAccountsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestartPaymentAccountsEventImpl
    with DiagnosticableTreeMixin
    implements _RestartPaymentAccountsEvent {
  const _$RestartPaymentAccountsEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentAccountsEvent.restart()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PaymentAccountsEvent.restart'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestartPaymentAccountsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) getPaymentAccounts,
    required TResult Function(bool isRBCPaymentAccount) setIsRBCPaymentAccount,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        create,
    required TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)
        update,
    required TResult Function(String residentId) deletePaymentAccounts,
    required TResult Function() restart,
  }) {
    return restart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? getPaymentAccounts,
    TResult? Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult? Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult? Function(String residentId)? deletePaymentAccounts,
    TResult? Function()? restart,
  }) {
    return restart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? getPaymentAccounts,
    TResult Function(bool isRBCPaymentAccount)? setIsRBCPaymentAccount,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        create,
    TResult Function(String residentId, String residentUserId,
            NewPaymentAccount paymentAccount)?
        update,
    TResult Function(String residentId)? deletePaymentAccounts,
    TResult Function()? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPaymentAccountsEvent value)
        getPaymentAccounts,
    required TResult Function(_SetIsRBCPaymentAccountEvent value)
        setIsRBCPaymentAccount,
    required TResult Function(_CreatePaymentAccountsEvent value) create,
    required TResult Function(_UpdatePaymentAccountsEvent value) update,
    required TResult Function(_DeletePaymentAccountsEvent value)
        deletePaymentAccounts,
    required TResult Function(_RestartPaymentAccountsEvent value) restart,
  }) {
    return restart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult? Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult? Function(_CreatePaymentAccountsEvent value)? create,
    TResult? Function(_UpdatePaymentAccountsEvent value)? update,
    TResult? Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult? Function(_RestartPaymentAccountsEvent value)? restart,
  }) {
    return restart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPaymentAccountsEvent value)? getPaymentAccounts,
    TResult Function(_SetIsRBCPaymentAccountEvent value)?
        setIsRBCPaymentAccount,
    TResult Function(_CreatePaymentAccountsEvent value)? create,
    TResult Function(_UpdatePaymentAccountsEvent value)? update,
    TResult Function(_DeletePaymentAccountsEvent value)? deletePaymentAccounts,
    TResult Function(_RestartPaymentAccountsEvent value)? restart,
    required TResult orElse(),
  }) {
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class _RestartPaymentAccountsEvent implements PaymentAccountsEvent {
  const factory _RestartPaymentAccountsEvent() =
      _$RestartPaymentAccountsEventImpl;
}

/// @nodoc
mixin _$PaymentAccountsState {
  PaymentAccounts get paymentAccounts => throw _privateConstructorUsedError;
  PaymentAccountsStatus get paymentAccountsStatus =>
      throw _privateConstructorUsedError;
  bool get isRBCPaymentAccount => throw _privateConstructorUsedError;
  PaymentAccountsOperationStatus get createStatus =>
      throw _privateConstructorUsedError;
  PaymentAccountsOperationStatus get updateStatus =>
      throw _privateConstructorUsedError;
  PaymentAccountsOperationStatus get deleteStatus =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaymentAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentAccountsStateCopyWith<PaymentAccountsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAccountsStateCopyWith<$Res> {
  factory $PaymentAccountsStateCopyWith(PaymentAccountsState value,
          $Res Function(PaymentAccountsState) then) =
      _$PaymentAccountsStateCopyWithImpl<$Res, PaymentAccountsState>;
  @useResult
  $Res call(
      {PaymentAccounts paymentAccounts,
      PaymentAccountsStatus paymentAccountsStatus,
      bool isRBCPaymentAccount,
      PaymentAccountsOperationStatus createStatus,
      PaymentAccountsOperationStatus updateStatus,
      PaymentAccountsOperationStatus deleteStatus});

  $PaymentAccountsOperationStatusCopyWith<$Res> get createStatus;
  $PaymentAccountsOperationStatusCopyWith<$Res> get updateStatus;
  $PaymentAccountsOperationStatusCopyWith<$Res> get deleteStatus;
}

/// @nodoc
class _$PaymentAccountsStateCopyWithImpl<$Res,
        $Val extends PaymentAccountsState>
    implements $PaymentAccountsStateCopyWith<$Res> {
  _$PaymentAccountsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAccounts = null,
    Object? paymentAccountsStatus = null,
    Object? isRBCPaymentAccount = null,
    Object? createStatus = null,
    Object? updateStatus = null,
    Object? deleteStatus = null,
  }) {
    return _then(_value.copyWith(
      paymentAccounts: null == paymentAccounts
          ? _value.paymentAccounts
          : paymentAccounts // ignore: cast_nullable_to_non_nullable
              as PaymentAccounts,
      paymentAccountsStatus: null == paymentAccountsStatus
          ? _value.paymentAccountsStatus
          : paymentAccountsStatus // ignore: cast_nullable_to_non_nullable
              as PaymentAccountsStatus,
      isRBCPaymentAccount: null == isRBCPaymentAccount
          ? _value.isRBCPaymentAccount
          : isRBCPaymentAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      createStatus: null == createStatus
          ? _value.createStatus
          : createStatus // ignore: cast_nullable_to_non_nullable
              as PaymentAccountsOperationStatus,
      updateStatus: null == updateStatus
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as PaymentAccountsOperationStatus,
      deleteStatus: null == deleteStatus
          ? _value.deleteStatus
          : deleteStatus // ignore: cast_nullable_to_non_nullable
              as PaymentAccountsOperationStatus,
    ) as $Val);
  }

  /// Create a copy of PaymentAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentAccountsOperationStatusCopyWith<$Res> get createStatus {
    return $PaymentAccountsOperationStatusCopyWith<$Res>(_value.createStatus,
        (value) {
      return _then(_value.copyWith(createStatus: value) as $Val);
    });
  }

  /// Create a copy of PaymentAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentAccountsOperationStatusCopyWith<$Res> get updateStatus {
    return $PaymentAccountsOperationStatusCopyWith<$Res>(_value.updateStatus,
        (value) {
      return _then(_value.copyWith(updateStatus: value) as $Val);
    });
  }

  /// Create a copy of PaymentAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentAccountsOperationStatusCopyWith<$Res> get deleteStatus {
    return $PaymentAccountsOperationStatusCopyWith<$Res>(_value.deleteStatus,
        (value) {
      return _then(_value.copyWith(deleteStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentAccountsStateImplCopyWith<$Res>
    implements $PaymentAccountsStateCopyWith<$Res> {
  factory _$$PaymentAccountsStateImplCopyWith(_$PaymentAccountsStateImpl value,
          $Res Function(_$PaymentAccountsStateImpl) then) =
      __$$PaymentAccountsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentAccounts paymentAccounts,
      PaymentAccountsStatus paymentAccountsStatus,
      bool isRBCPaymentAccount,
      PaymentAccountsOperationStatus createStatus,
      PaymentAccountsOperationStatus updateStatus,
      PaymentAccountsOperationStatus deleteStatus});

  @override
  $PaymentAccountsOperationStatusCopyWith<$Res> get createStatus;
  @override
  $PaymentAccountsOperationStatusCopyWith<$Res> get updateStatus;
  @override
  $PaymentAccountsOperationStatusCopyWith<$Res> get deleteStatus;
}

/// @nodoc
class __$$PaymentAccountsStateImplCopyWithImpl<$Res>
    extends _$PaymentAccountsStateCopyWithImpl<$Res, _$PaymentAccountsStateImpl>
    implements _$$PaymentAccountsStateImplCopyWith<$Res> {
  __$$PaymentAccountsStateImplCopyWithImpl(_$PaymentAccountsStateImpl _value,
      $Res Function(_$PaymentAccountsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAccounts = null,
    Object? paymentAccountsStatus = null,
    Object? isRBCPaymentAccount = null,
    Object? createStatus = null,
    Object? updateStatus = null,
    Object? deleteStatus = null,
  }) {
    return _then(_$PaymentAccountsStateImpl(
      paymentAccounts: null == paymentAccounts
          ? _value.paymentAccounts
          : paymentAccounts // ignore: cast_nullable_to_non_nullable
              as PaymentAccounts,
      paymentAccountsStatus: null == paymentAccountsStatus
          ? _value.paymentAccountsStatus
          : paymentAccountsStatus // ignore: cast_nullable_to_non_nullable
              as PaymentAccountsStatus,
      isRBCPaymentAccount: null == isRBCPaymentAccount
          ? _value.isRBCPaymentAccount
          : isRBCPaymentAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      createStatus: null == createStatus
          ? _value.createStatus
          : createStatus // ignore: cast_nullable_to_non_nullable
              as PaymentAccountsOperationStatus,
      updateStatus: null == updateStatus
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as PaymentAccountsOperationStatus,
      deleteStatus: null == deleteStatus
          ? _value.deleteStatus
          : deleteStatus // ignore: cast_nullable_to_non_nullable
              as PaymentAccountsOperationStatus,
    ));
  }
}

/// @nodoc

class _$PaymentAccountsStateImpl
    with DiagnosticableTreeMixin
    implements _PaymentAccountsState {
  const _$PaymentAccountsStateImpl(
      {this.paymentAccounts = PaymentAccounts.empty,
      this.paymentAccountsStatus = PaymentAccountsStatus.initial,
      this.isRBCPaymentAccount = false,
      this.createStatus = const _Initial(),
      this.updateStatus = const _Initial(),
      this.deleteStatus = const _Initial()});

  @override
  @JsonKey()
  final PaymentAccounts paymentAccounts;
  @override
  @JsonKey()
  final PaymentAccountsStatus paymentAccountsStatus;
  @override
  @JsonKey()
  final bool isRBCPaymentAccount;
  @override
  @JsonKey()
  final PaymentAccountsOperationStatus createStatus;
  @override
  @JsonKey()
  final PaymentAccountsOperationStatus updateStatus;
  @override
  @JsonKey()
  final PaymentAccountsOperationStatus deleteStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentAccountsState(paymentAccounts: $paymentAccounts, paymentAccountsStatus: $paymentAccountsStatus, isRBCPaymentAccount: $isRBCPaymentAccount, createStatus: $createStatus, updateStatus: $updateStatus, deleteStatus: $deleteStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentAccountsState'))
      ..add(DiagnosticsProperty('paymentAccounts', paymentAccounts))
      ..add(DiagnosticsProperty('paymentAccountsStatus', paymentAccountsStatus))
      ..add(DiagnosticsProperty('isRBCPaymentAccount', isRBCPaymentAccount))
      ..add(DiagnosticsProperty('createStatus', createStatus))
      ..add(DiagnosticsProperty('updateStatus', updateStatus))
      ..add(DiagnosticsProperty('deleteStatus', deleteStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentAccountsStateImpl &&
            (identical(other.paymentAccounts, paymentAccounts) ||
                other.paymentAccounts == paymentAccounts) &&
            (identical(other.paymentAccountsStatus, paymentAccountsStatus) ||
                other.paymentAccountsStatus == paymentAccountsStatus) &&
            (identical(other.isRBCPaymentAccount, isRBCPaymentAccount) ||
                other.isRBCPaymentAccount == isRBCPaymentAccount) &&
            (identical(other.createStatus, createStatus) ||
                other.createStatus == createStatus) &&
            (identical(other.updateStatus, updateStatus) ||
                other.updateStatus == updateStatus) &&
            (identical(other.deleteStatus, deleteStatus) ||
                other.deleteStatus == deleteStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentAccounts,
      paymentAccountsStatus,
      isRBCPaymentAccount,
      createStatus,
      updateStatus,
      deleteStatus);

  /// Create a copy of PaymentAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentAccountsStateImplCopyWith<_$PaymentAccountsStateImpl>
      get copyWith =>
          __$$PaymentAccountsStateImplCopyWithImpl<_$PaymentAccountsStateImpl>(
              this, _$identity);
}

abstract class _PaymentAccountsState implements PaymentAccountsState {
  const factory _PaymentAccountsState(
          {final PaymentAccounts paymentAccounts,
          final PaymentAccountsStatus paymentAccountsStatus,
          final bool isRBCPaymentAccount,
          final PaymentAccountsOperationStatus createStatus,
          final PaymentAccountsOperationStatus updateStatus,
          final PaymentAccountsOperationStatus deleteStatus}) =
      _$PaymentAccountsStateImpl;

  @override
  PaymentAccounts get paymentAccounts;
  @override
  PaymentAccountsStatus get paymentAccountsStatus;
  @override
  bool get isRBCPaymentAccount;
  @override
  PaymentAccountsOperationStatus get createStatus;
  @override
  PaymentAccountsOperationStatus get updateStatus;
  @override
  PaymentAccountsOperationStatus get deleteStatus;

  /// Create a copy of PaymentAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentAccountsStateImplCopyWith<_$PaymentAccountsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentAccountsOperationStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function(MAError error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function(MAError error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAccountsOperationStatusCopyWith<$Res> {
  factory $PaymentAccountsOperationStatusCopyWith(
          PaymentAccountsOperationStatus value,
          $Res Function(PaymentAccountsOperationStatus) then) =
      _$PaymentAccountsOperationStatusCopyWithImpl<$Res,
          PaymentAccountsOperationStatus>;
}

/// @nodoc
class _$PaymentAccountsOperationStatusCopyWithImpl<$Res,
        $Val extends PaymentAccountsOperationStatus>
    implements $PaymentAccountsOperationStatusCopyWith<$Res> {
  _$PaymentAccountsOperationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentAccountsOperationStatus
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
    extends _$PaymentAccountsOperationStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAccountsOperationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentAccountsOperationStatus.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'PaymentAccountsOperationStatus.initial'));
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
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function(MAError error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
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

abstract class _Initial implements PaymentAccountsOperationStatus {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ProcessingImplCopyWith<$Res> {
  factory _$$ProcessingImplCopyWith(
          _$ProcessingImpl value, $Res Function(_$ProcessingImpl) then) =
      __$$ProcessingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingImplCopyWithImpl<$Res>
    extends _$PaymentAccountsOperationStatusCopyWithImpl<$Res, _$ProcessingImpl>
    implements _$$ProcessingImplCopyWith<$Res> {
  __$$ProcessingImplCopyWithImpl(
      _$ProcessingImpl _value, $Res Function(_$ProcessingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAccountsOperationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProcessingImpl with DiagnosticableTreeMixin implements _Processing {
  const _$ProcessingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentAccountsOperationStatus.processing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'PaymentAccountsOperationStatus.processing'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function(MAError error) failure,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function(MAError error)? failure,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements PaymentAccountsOperationStatus {
  const factory _Processing() = _$ProcessingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PaymentAccountsOperationStatusCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAccountsOperationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements _Success {
  const _$SuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentAccountsOperationStatus.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'PaymentAccountsOperationStatus.success'));
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
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function(MAError error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function(MAError error)? failure,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
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

abstract class _Success implements PaymentAccountsOperationStatus {
  const factory _Success() = _$SuccessImpl;
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
    extends _$PaymentAccountsOperationStatusCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAccountsOperationStatus
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

  /// Create a copy of PaymentAccountsOperationStatus
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

class _$FailureImpl with DiagnosticableTreeMixin implements _Failure {
  const _$FailureImpl(this.error);

  @override
  final MAError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentAccountsOperationStatus.failure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PaymentAccountsOperationStatus.failure'))
      ..add(DiagnosticsProperty('error', error));
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

  /// Create a copy of PaymentAccountsOperationStatus
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
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function(MAError error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? processing,
    TResult? Function()? success,
    TResult? Function(MAError error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
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

abstract class _Failure implements PaymentAccountsOperationStatus {
  const factory _Failure(final MAError error) = _$FailureImpl;

  MAError get error;

  /// Create a copy of PaymentAccountsOperationStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
