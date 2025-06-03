// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreditCardPaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestIntelliPayCodeParams params)
        processIntelliPayDialog,
    required TResult Function() approvePayment,
    required TResult Function() declinePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestIntelliPayCodeParams params)?
        processIntelliPayDialog,
    TResult? Function()? approvePayment,
    TResult? Function()? declinePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestIntelliPayCodeParams params)?
        processIntelliPayDialog,
    TResult Function()? approvePayment,
    TResult Function()? declinePayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessIntelliPayDialogEvent value)
        processIntelliPayDialog,
    required TResult Function(_ApprovePaymentEvent value) approvePayment,
    required TResult Function(_DeclinePaymentEvent value) declinePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessIntelliPayDialogEvent value)?
        processIntelliPayDialog,
    TResult? Function(_ApprovePaymentEvent value)? approvePayment,
    TResult? Function(_DeclinePaymentEvent value)? declinePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessIntelliPayDialogEvent value)?
        processIntelliPayDialog,
    TResult Function(_ApprovePaymentEvent value)? approvePayment,
    TResult Function(_DeclinePaymentEvent value)? declinePayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardPaymentEventCopyWith<$Res> {
  factory $CreditCardPaymentEventCopyWith(CreditCardPaymentEvent value,
          $Res Function(CreditCardPaymentEvent) then) =
      _$CreditCardPaymentEventCopyWithImpl<$Res, CreditCardPaymentEvent>;
}

/// @nodoc
class _$CreditCardPaymentEventCopyWithImpl<$Res,
        $Val extends CreditCardPaymentEvent>
    implements $CreditCardPaymentEventCopyWith<$Res> {
  _$CreditCardPaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreditCardPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProcessIntelliPayDialogEventImplCopyWith<$Res> {
  factory _$$ProcessIntelliPayDialogEventImplCopyWith(
          _$ProcessIntelliPayDialogEventImpl value,
          $Res Function(_$ProcessIntelliPayDialogEventImpl) then) =
      __$$ProcessIntelliPayDialogEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestIntelliPayCodeParams params});
}

/// @nodoc
class __$$ProcessIntelliPayDialogEventImplCopyWithImpl<$Res>
    extends _$CreditCardPaymentEventCopyWithImpl<$Res,
        _$ProcessIntelliPayDialogEventImpl>
    implements _$$ProcessIntelliPayDialogEventImplCopyWith<$Res> {
  __$$ProcessIntelliPayDialogEventImplCopyWithImpl(
      _$ProcessIntelliPayDialogEventImpl _value,
      $Res Function(_$ProcessIntelliPayDialogEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditCardPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ProcessIntelliPayDialogEventImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as RequestIntelliPayCodeParams,
    ));
  }
}

/// @nodoc

class _$ProcessIntelliPayDialogEventImpl
    implements _ProcessIntelliPayDialogEvent {
  const _$ProcessIntelliPayDialogEventImpl(this.params);

  @override
  final RequestIntelliPayCodeParams params;

  @override
  String toString() {
    return 'CreditCardPaymentEvent.processIntelliPayDialog(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessIntelliPayDialogEventImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  /// Create a copy of CreditCardPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessIntelliPayDialogEventImplCopyWith<
          _$ProcessIntelliPayDialogEventImpl>
      get copyWith => __$$ProcessIntelliPayDialogEventImplCopyWithImpl<
          _$ProcessIntelliPayDialogEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestIntelliPayCodeParams params)
        processIntelliPayDialog,
    required TResult Function() approvePayment,
    required TResult Function() declinePayment,
  }) {
    return processIntelliPayDialog(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestIntelliPayCodeParams params)?
        processIntelliPayDialog,
    TResult? Function()? approvePayment,
    TResult? Function()? declinePayment,
  }) {
    return processIntelliPayDialog?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestIntelliPayCodeParams params)?
        processIntelliPayDialog,
    TResult Function()? approvePayment,
    TResult Function()? declinePayment,
    required TResult orElse(),
  }) {
    if (processIntelliPayDialog != null) {
      return processIntelliPayDialog(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessIntelliPayDialogEvent value)
        processIntelliPayDialog,
    required TResult Function(_ApprovePaymentEvent value) approvePayment,
    required TResult Function(_DeclinePaymentEvent value) declinePayment,
  }) {
    return processIntelliPayDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessIntelliPayDialogEvent value)?
        processIntelliPayDialog,
    TResult? Function(_ApprovePaymentEvent value)? approvePayment,
    TResult? Function(_DeclinePaymentEvent value)? declinePayment,
  }) {
    return processIntelliPayDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessIntelliPayDialogEvent value)?
        processIntelliPayDialog,
    TResult Function(_ApprovePaymentEvent value)? approvePayment,
    TResult Function(_DeclinePaymentEvent value)? declinePayment,
    required TResult orElse(),
  }) {
    if (processIntelliPayDialog != null) {
      return processIntelliPayDialog(this);
    }
    return orElse();
  }
}

abstract class _ProcessIntelliPayDialogEvent implements CreditCardPaymentEvent {
  const factory _ProcessIntelliPayDialogEvent(
          final RequestIntelliPayCodeParams params) =
      _$ProcessIntelliPayDialogEventImpl;

  RequestIntelliPayCodeParams get params;

  /// Create a copy of CreditCardPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProcessIntelliPayDialogEventImplCopyWith<
          _$ProcessIntelliPayDialogEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApprovePaymentEventImplCopyWith<$Res> {
  factory _$$ApprovePaymentEventImplCopyWith(_$ApprovePaymentEventImpl value,
          $Res Function(_$ApprovePaymentEventImpl) then) =
      __$$ApprovePaymentEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApprovePaymentEventImplCopyWithImpl<$Res>
    extends _$CreditCardPaymentEventCopyWithImpl<$Res,
        _$ApprovePaymentEventImpl>
    implements _$$ApprovePaymentEventImplCopyWith<$Res> {
  __$$ApprovePaymentEventImplCopyWithImpl(_$ApprovePaymentEventImpl _value,
      $Res Function(_$ApprovePaymentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditCardPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ApprovePaymentEventImpl implements _ApprovePaymentEvent {
  const _$ApprovePaymentEventImpl();

  @override
  String toString() {
    return 'CreditCardPaymentEvent.approvePayment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovePaymentEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestIntelliPayCodeParams params)
        processIntelliPayDialog,
    required TResult Function() approvePayment,
    required TResult Function() declinePayment,
  }) {
    return approvePayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestIntelliPayCodeParams params)?
        processIntelliPayDialog,
    TResult? Function()? approvePayment,
    TResult? Function()? declinePayment,
  }) {
    return approvePayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestIntelliPayCodeParams params)?
        processIntelliPayDialog,
    TResult Function()? approvePayment,
    TResult Function()? declinePayment,
    required TResult orElse(),
  }) {
    if (approvePayment != null) {
      return approvePayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessIntelliPayDialogEvent value)
        processIntelliPayDialog,
    required TResult Function(_ApprovePaymentEvent value) approvePayment,
    required TResult Function(_DeclinePaymentEvent value) declinePayment,
  }) {
    return approvePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessIntelliPayDialogEvent value)?
        processIntelliPayDialog,
    TResult? Function(_ApprovePaymentEvent value)? approvePayment,
    TResult? Function(_DeclinePaymentEvent value)? declinePayment,
  }) {
    return approvePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessIntelliPayDialogEvent value)?
        processIntelliPayDialog,
    TResult Function(_ApprovePaymentEvent value)? approvePayment,
    TResult Function(_DeclinePaymentEvent value)? declinePayment,
    required TResult orElse(),
  }) {
    if (approvePayment != null) {
      return approvePayment(this);
    }
    return orElse();
  }
}

abstract class _ApprovePaymentEvent implements CreditCardPaymentEvent {
  const factory _ApprovePaymentEvent() = _$ApprovePaymentEventImpl;
}

/// @nodoc
abstract class _$$DeclinePaymentEventImplCopyWith<$Res> {
  factory _$$DeclinePaymentEventImplCopyWith(_$DeclinePaymentEventImpl value,
          $Res Function(_$DeclinePaymentEventImpl) then) =
      __$$DeclinePaymentEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeclinePaymentEventImplCopyWithImpl<$Res>
    extends _$CreditCardPaymentEventCopyWithImpl<$Res,
        _$DeclinePaymentEventImpl>
    implements _$$DeclinePaymentEventImplCopyWith<$Res> {
  __$$DeclinePaymentEventImplCopyWithImpl(_$DeclinePaymentEventImpl _value,
      $Res Function(_$DeclinePaymentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditCardPaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeclinePaymentEventImpl implements _DeclinePaymentEvent {
  const _$DeclinePaymentEventImpl();

  @override
  String toString() {
    return 'CreditCardPaymentEvent.declinePayment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeclinePaymentEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestIntelliPayCodeParams params)
        processIntelliPayDialog,
    required TResult Function() approvePayment,
    required TResult Function() declinePayment,
  }) {
    return declinePayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestIntelliPayCodeParams params)?
        processIntelliPayDialog,
    TResult? Function()? approvePayment,
    TResult? Function()? declinePayment,
  }) {
    return declinePayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestIntelliPayCodeParams params)?
        processIntelliPayDialog,
    TResult Function()? approvePayment,
    TResult Function()? declinePayment,
    required TResult orElse(),
  }) {
    if (declinePayment != null) {
      return declinePayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProcessIntelliPayDialogEvent value)
        processIntelliPayDialog,
    required TResult Function(_ApprovePaymentEvent value) approvePayment,
    required TResult Function(_DeclinePaymentEvent value) declinePayment,
  }) {
    return declinePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProcessIntelliPayDialogEvent value)?
        processIntelliPayDialog,
    TResult? Function(_ApprovePaymentEvent value)? approvePayment,
    TResult? Function(_DeclinePaymentEvent value)? declinePayment,
  }) {
    return declinePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProcessIntelliPayDialogEvent value)?
        processIntelliPayDialog,
    TResult Function(_ApprovePaymentEvent value)? approvePayment,
    TResult Function(_DeclinePaymentEvent value)? declinePayment,
    required TResult orElse(),
  }) {
    if (declinePayment != null) {
      return declinePayment(this);
    }
    return orElse();
  }
}

abstract class _DeclinePaymentEvent implements CreditCardPaymentEvent {
  const factory _DeclinePaymentEvent() = _$DeclinePaymentEventImpl;
}

/// @nodoc
mixin _$CreditCardPaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingIntelliPayDialog,
    required TResult Function(
            HttpServer server, RequestIntelliPayCode requestCode)
        readyIntelliPayDialog,
    required TResult Function() success,
    required TResult Function(
            MAError error, MakeAPaymentError? makeAPaymentError)
        failureIntelliPayDialog,
    required TResult Function() paymentDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingIntelliPayDialog,
    TResult? Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult? Function()? success,
    TResult? Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult? Function()? paymentDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingIntelliPayDialog,
    TResult Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult Function()? success,
    TResult Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult Function()? paymentDeclined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingIntelliPayDialog value)
        loadingIntelliPayDialog,
    required TResult Function(_ReadyIntelliPayDialog value)
        readyIntelliPayDialog,
    required TResult Function(_Success value) success,
    required TResult Function(_FailureIntelliPayDialog value)
        failureIntelliPayDialog,
    required TResult Function(_PaymentDeclined value) paymentDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult? Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult? Function(_Success value)? success,
    TResult? Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult? Function(_PaymentDeclined value)? paymentDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult Function(_Success value)? success,
    TResult Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult Function(_PaymentDeclined value)? paymentDeclined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardPaymentStateCopyWith<$Res> {
  factory $CreditCardPaymentStateCopyWith(CreditCardPaymentState value,
          $Res Function(CreditCardPaymentState) then) =
      _$CreditCardPaymentStateCopyWithImpl<$Res, CreditCardPaymentState>;
}

/// @nodoc
class _$CreditCardPaymentStateCopyWithImpl<$Res,
        $Val extends CreditCardPaymentState>
    implements $CreditCardPaymentStateCopyWith<$Res> {
  _$CreditCardPaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreditCardPaymentState
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
    extends _$CreditCardPaymentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditCardPaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CreditCardPaymentState.initial()';
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
    required TResult Function() loadingIntelliPayDialog,
    required TResult Function(
            HttpServer server, RequestIntelliPayCode requestCode)
        readyIntelliPayDialog,
    required TResult Function() success,
    required TResult Function(
            MAError error, MakeAPaymentError? makeAPaymentError)
        failureIntelliPayDialog,
    required TResult Function() paymentDeclined,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingIntelliPayDialog,
    TResult? Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult? Function()? success,
    TResult? Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult? Function()? paymentDeclined,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingIntelliPayDialog,
    TResult Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult Function()? success,
    TResult Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult Function()? paymentDeclined,
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
    required TResult Function(_LoadingIntelliPayDialog value)
        loadingIntelliPayDialog,
    required TResult Function(_ReadyIntelliPayDialog value)
        readyIntelliPayDialog,
    required TResult Function(_Success value) success,
    required TResult Function(_FailureIntelliPayDialog value)
        failureIntelliPayDialog,
    required TResult Function(_PaymentDeclined value) paymentDeclined,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult? Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult? Function(_Success value)? success,
    TResult? Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult? Function(_PaymentDeclined value)? paymentDeclined,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult Function(_Success value)? success,
    TResult Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult Function(_PaymentDeclined value)? paymentDeclined,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreditCardPaymentState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingIntelliPayDialogImplCopyWith<$Res> {
  factory _$$LoadingIntelliPayDialogImplCopyWith(
          _$LoadingIntelliPayDialogImpl value,
          $Res Function(_$LoadingIntelliPayDialogImpl) then) =
      __$$LoadingIntelliPayDialogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingIntelliPayDialogImplCopyWithImpl<$Res>
    extends _$CreditCardPaymentStateCopyWithImpl<$Res,
        _$LoadingIntelliPayDialogImpl>
    implements _$$LoadingIntelliPayDialogImplCopyWith<$Res> {
  __$$LoadingIntelliPayDialogImplCopyWithImpl(
      _$LoadingIntelliPayDialogImpl _value,
      $Res Function(_$LoadingIntelliPayDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditCardPaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingIntelliPayDialogImpl implements _LoadingIntelliPayDialog {
  const _$LoadingIntelliPayDialogImpl();

  @override
  String toString() {
    return 'CreditCardPaymentState.loadingIntelliPayDialog()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingIntelliPayDialogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingIntelliPayDialog,
    required TResult Function(
            HttpServer server, RequestIntelliPayCode requestCode)
        readyIntelliPayDialog,
    required TResult Function() success,
    required TResult Function(
            MAError error, MakeAPaymentError? makeAPaymentError)
        failureIntelliPayDialog,
    required TResult Function() paymentDeclined,
  }) {
    return loadingIntelliPayDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingIntelliPayDialog,
    TResult? Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult? Function()? success,
    TResult? Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult? Function()? paymentDeclined,
  }) {
    return loadingIntelliPayDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingIntelliPayDialog,
    TResult Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult Function()? success,
    TResult Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult Function()? paymentDeclined,
    required TResult orElse(),
  }) {
    if (loadingIntelliPayDialog != null) {
      return loadingIntelliPayDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingIntelliPayDialog value)
        loadingIntelliPayDialog,
    required TResult Function(_ReadyIntelliPayDialog value)
        readyIntelliPayDialog,
    required TResult Function(_Success value) success,
    required TResult Function(_FailureIntelliPayDialog value)
        failureIntelliPayDialog,
    required TResult Function(_PaymentDeclined value) paymentDeclined,
  }) {
    return loadingIntelliPayDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult? Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult? Function(_Success value)? success,
    TResult? Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult? Function(_PaymentDeclined value)? paymentDeclined,
  }) {
    return loadingIntelliPayDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult Function(_Success value)? success,
    TResult Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult Function(_PaymentDeclined value)? paymentDeclined,
    required TResult orElse(),
  }) {
    if (loadingIntelliPayDialog != null) {
      return loadingIntelliPayDialog(this);
    }
    return orElse();
  }
}

abstract class _LoadingIntelliPayDialog implements CreditCardPaymentState {
  const factory _LoadingIntelliPayDialog() = _$LoadingIntelliPayDialogImpl;
}

/// @nodoc
abstract class _$$ReadyIntelliPayDialogImplCopyWith<$Res> {
  factory _$$ReadyIntelliPayDialogImplCopyWith(
          _$ReadyIntelliPayDialogImpl value,
          $Res Function(_$ReadyIntelliPayDialogImpl) then) =
      __$$ReadyIntelliPayDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HttpServer server, RequestIntelliPayCode requestCode});
}

/// @nodoc
class __$$ReadyIntelliPayDialogImplCopyWithImpl<$Res>
    extends _$CreditCardPaymentStateCopyWithImpl<$Res,
        _$ReadyIntelliPayDialogImpl>
    implements _$$ReadyIntelliPayDialogImplCopyWith<$Res> {
  __$$ReadyIntelliPayDialogImplCopyWithImpl(_$ReadyIntelliPayDialogImpl _value,
      $Res Function(_$ReadyIntelliPayDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditCardPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? server = null,
    Object? requestCode = null,
  }) {
    return _then(_$ReadyIntelliPayDialogImpl(
      null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as HttpServer,
      null == requestCode
          ? _value.requestCode
          : requestCode // ignore: cast_nullable_to_non_nullable
              as RequestIntelliPayCode,
    ));
  }
}

/// @nodoc

class _$ReadyIntelliPayDialogImpl implements _ReadyIntelliPayDialog {
  const _$ReadyIntelliPayDialogImpl(this.server, this.requestCode);

  @override
  final HttpServer server;
  @override
  final RequestIntelliPayCode requestCode;

  @override
  String toString() {
    return 'CreditCardPaymentState.readyIntelliPayDialog(server: $server, requestCode: $requestCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyIntelliPayDialogImpl &&
            (identical(other.server, server) || other.server == server) &&
            (identical(other.requestCode, requestCode) ||
                other.requestCode == requestCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, server, requestCode);

  /// Create a copy of CreditCardPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyIntelliPayDialogImplCopyWith<_$ReadyIntelliPayDialogImpl>
      get copyWith => __$$ReadyIntelliPayDialogImplCopyWithImpl<
          _$ReadyIntelliPayDialogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingIntelliPayDialog,
    required TResult Function(
            HttpServer server, RequestIntelliPayCode requestCode)
        readyIntelliPayDialog,
    required TResult Function() success,
    required TResult Function(
            MAError error, MakeAPaymentError? makeAPaymentError)
        failureIntelliPayDialog,
    required TResult Function() paymentDeclined,
  }) {
    return readyIntelliPayDialog(server, requestCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingIntelliPayDialog,
    TResult? Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult? Function()? success,
    TResult? Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult? Function()? paymentDeclined,
  }) {
    return readyIntelliPayDialog?.call(server, requestCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingIntelliPayDialog,
    TResult Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult Function()? success,
    TResult Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult Function()? paymentDeclined,
    required TResult orElse(),
  }) {
    if (readyIntelliPayDialog != null) {
      return readyIntelliPayDialog(server, requestCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingIntelliPayDialog value)
        loadingIntelliPayDialog,
    required TResult Function(_ReadyIntelliPayDialog value)
        readyIntelliPayDialog,
    required TResult Function(_Success value) success,
    required TResult Function(_FailureIntelliPayDialog value)
        failureIntelliPayDialog,
    required TResult Function(_PaymentDeclined value) paymentDeclined,
  }) {
    return readyIntelliPayDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult? Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult? Function(_Success value)? success,
    TResult? Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult? Function(_PaymentDeclined value)? paymentDeclined,
  }) {
    return readyIntelliPayDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult Function(_Success value)? success,
    TResult Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult Function(_PaymentDeclined value)? paymentDeclined,
    required TResult orElse(),
  }) {
    if (readyIntelliPayDialog != null) {
      return readyIntelliPayDialog(this);
    }
    return orElse();
  }
}

abstract class _ReadyIntelliPayDialog implements CreditCardPaymentState {
  const factory _ReadyIntelliPayDialog(
          final HttpServer server, final RequestIntelliPayCode requestCode) =
      _$ReadyIntelliPayDialogImpl;

  HttpServer get server;
  RequestIntelliPayCode get requestCode;

  /// Create a copy of CreditCardPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadyIntelliPayDialogImplCopyWith<_$ReadyIntelliPayDialogImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CreditCardPaymentStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditCardPaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'CreditCardPaymentState.success()';
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
    required TResult Function() loadingIntelliPayDialog,
    required TResult Function(
            HttpServer server, RequestIntelliPayCode requestCode)
        readyIntelliPayDialog,
    required TResult Function() success,
    required TResult Function(
            MAError error, MakeAPaymentError? makeAPaymentError)
        failureIntelliPayDialog,
    required TResult Function() paymentDeclined,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingIntelliPayDialog,
    TResult? Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult? Function()? success,
    TResult? Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult? Function()? paymentDeclined,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingIntelliPayDialog,
    TResult Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult Function()? success,
    TResult Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult Function()? paymentDeclined,
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
    required TResult Function(_LoadingIntelliPayDialog value)
        loadingIntelliPayDialog,
    required TResult Function(_ReadyIntelliPayDialog value)
        readyIntelliPayDialog,
    required TResult Function(_Success value) success,
    required TResult Function(_FailureIntelliPayDialog value)
        failureIntelliPayDialog,
    required TResult Function(_PaymentDeclined value) paymentDeclined,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult? Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult? Function(_Success value)? success,
    TResult? Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult? Function(_PaymentDeclined value)? paymentDeclined,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult Function(_Success value)? success,
    TResult Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult Function(_PaymentDeclined value)? paymentDeclined,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CreditCardPaymentState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureIntelliPayDialogImplCopyWith<$Res> {
  factory _$$FailureIntelliPayDialogImplCopyWith(
          _$FailureIntelliPayDialogImpl value,
          $Res Function(_$FailureIntelliPayDialogImpl) then) =
      __$$FailureIntelliPayDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MAError error, MakeAPaymentError? makeAPaymentError});

  $MAErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$FailureIntelliPayDialogImplCopyWithImpl<$Res>
    extends _$CreditCardPaymentStateCopyWithImpl<$Res,
        _$FailureIntelliPayDialogImpl>
    implements _$$FailureIntelliPayDialogImplCopyWith<$Res> {
  __$$FailureIntelliPayDialogImplCopyWithImpl(
      _$FailureIntelliPayDialogImpl _value,
      $Res Function(_$FailureIntelliPayDialogImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditCardPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? makeAPaymentError = freezed,
  }) {
    return _then(_$FailureIntelliPayDialogImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as MAError,
      freezed == makeAPaymentError
          ? _value.makeAPaymentError
          : makeAPaymentError // ignore: cast_nullable_to_non_nullable
              as MakeAPaymentError?,
    ));
  }

  /// Create a copy of CreditCardPaymentState
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

class _$FailureIntelliPayDialogImpl implements _FailureIntelliPayDialog {
  const _$FailureIntelliPayDialogImpl(this.error, this.makeAPaymentError);

  @override
  final MAError error;
  @override
  final MakeAPaymentError? makeAPaymentError;

  @override
  String toString() {
    return 'CreditCardPaymentState.failureIntelliPayDialog(error: $error, makeAPaymentError: $makeAPaymentError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureIntelliPayDialogImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.makeAPaymentError, makeAPaymentError) ||
                other.makeAPaymentError == makeAPaymentError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, makeAPaymentError);

  /// Create a copy of CreditCardPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureIntelliPayDialogImplCopyWith<_$FailureIntelliPayDialogImpl>
      get copyWith => __$$FailureIntelliPayDialogImplCopyWithImpl<
          _$FailureIntelliPayDialogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingIntelliPayDialog,
    required TResult Function(
            HttpServer server, RequestIntelliPayCode requestCode)
        readyIntelliPayDialog,
    required TResult Function() success,
    required TResult Function(
            MAError error, MakeAPaymentError? makeAPaymentError)
        failureIntelliPayDialog,
    required TResult Function() paymentDeclined,
  }) {
    return failureIntelliPayDialog(error, makeAPaymentError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingIntelliPayDialog,
    TResult? Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult? Function()? success,
    TResult? Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult? Function()? paymentDeclined,
  }) {
    return failureIntelliPayDialog?.call(error, makeAPaymentError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingIntelliPayDialog,
    TResult Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult Function()? success,
    TResult Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult Function()? paymentDeclined,
    required TResult orElse(),
  }) {
    if (failureIntelliPayDialog != null) {
      return failureIntelliPayDialog(error, makeAPaymentError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingIntelliPayDialog value)
        loadingIntelliPayDialog,
    required TResult Function(_ReadyIntelliPayDialog value)
        readyIntelliPayDialog,
    required TResult Function(_Success value) success,
    required TResult Function(_FailureIntelliPayDialog value)
        failureIntelliPayDialog,
    required TResult Function(_PaymentDeclined value) paymentDeclined,
  }) {
    return failureIntelliPayDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult? Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult? Function(_Success value)? success,
    TResult? Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult? Function(_PaymentDeclined value)? paymentDeclined,
  }) {
    return failureIntelliPayDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult Function(_Success value)? success,
    TResult Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult Function(_PaymentDeclined value)? paymentDeclined,
    required TResult orElse(),
  }) {
    if (failureIntelliPayDialog != null) {
      return failureIntelliPayDialog(this);
    }
    return orElse();
  }
}

abstract class _FailureIntelliPayDialog implements CreditCardPaymentState {
  const factory _FailureIntelliPayDialog(
          final MAError error, final MakeAPaymentError? makeAPaymentError) =
      _$FailureIntelliPayDialogImpl;

  MAError get error;
  MakeAPaymentError? get makeAPaymentError;

  /// Create a copy of CreditCardPaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureIntelliPayDialogImplCopyWith<_$FailureIntelliPayDialogImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentDeclinedImplCopyWith<$Res> {
  factory _$$PaymentDeclinedImplCopyWith(_$PaymentDeclinedImpl value,
          $Res Function(_$PaymentDeclinedImpl) then) =
      __$$PaymentDeclinedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentDeclinedImplCopyWithImpl<$Res>
    extends _$CreditCardPaymentStateCopyWithImpl<$Res, _$PaymentDeclinedImpl>
    implements _$$PaymentDeclinedImplCopyWith<$Res> {
  __$$PaymentDeclinedImplCopyWithImpl(
      _$PaymentDeclinedImpl _value, $Res Function(_$PaymentDeclinedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditCardPaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentDeclinedImpl implements _PaymentDeclined {
  const _$PaymentDeclinedImpl();

  @override
  String toString() {
    return 'CreditCardPaymentState.paymentDeclined()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentDeclinedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingIntelliPayDialog,
    required TResult Function(
            HttpServer server, RequestIntelliPayCode requestCode)
        readyIntelliPayDialog,
    required TResult Function() success,
    required TResult Function(
            MAError error, MakeAPaymentError? makeAPaymentError)
        failureIntelliPayDialog,
    required TResult Function() paymentDeclined,
  }) {
    return paymentDeclined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingIntelliPayDialog,
    TResult? Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult? Function()? success,
    TResult? Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult? Function()? paymentDeclined,
  }) {
    return paymentDeclined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingIntelliPayDialog,
    TResult Function(HttpServer server, RequestIntelliPayCode requestCode)?
        readyIntelliPayDialog,
    TResult Function()? success,
    TResult Function(MAError error, MakeAPaymentError? makeAPaymentError)?
        failureIntelliPayDialog,
    TResult Function()? paymentDeclined,
    required TResult orElse(),
  }) {
    if (paymentDeclined != null) {
      return paymentDeclined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingIntelliPayDialog value)
        loadingIntelliPayDialog,
    required TResult Function(_ReadyIntelliPayDialog value)
        readyIntelliPayDialog,
    required TResult Function(_Success value) success,
    required TResult Function(_FailureIntelliPayDialog value)
        failureIntelliPayDialog,
    required TResult Function(_PaymentDeclined value) paymentDeclined,
  }) {
    return paymentDeclined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult? Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult? Function(_Success value)? success,
    TResult? Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult? Function(_PaymentDeclined value)? paymentDeclined,
  }) {
    return paymentDeclined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingIntelliPayDialog value)? loadingIntelliPayDialog,
    TResult Function(_ReadyIntelliPayDialog value)? readyIntelliPayDialog,
    TResult Function(_Success value)? success,
    TResult Function(_FailureIntelliPayDialog value)? failureIntelliPayDialog,
    TResult Function(_PaymentDeclined value)? paymentDeclined,
    required TResult orElse(),
  }) {
    if (paymentDeclined != null) {
      return paymentDeclined(this);
    }
    return orElse();
  }
}

abstract class _PaymentDeclined implements CreditCardPaymentState {
  const factory _PaymentDeclined() = _$PaymentDeclinedImpl;
}
