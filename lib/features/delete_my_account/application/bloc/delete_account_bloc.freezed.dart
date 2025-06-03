// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteAccountEvent {
  String get residentId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteAccountEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteAccountEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteAccountEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DeleteAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteAccountEventCopyWith<DeleteAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountEventCopyWith<$Res> {
  factory $DeleteAccountEventCopyWith(
          DeleteAccountEvent value, $Res Function(DeleteAccountEvent) then) =
      _$DeleteAccountEventCopyWithImpl<$Res, DeleteAccountEvent>;
  @useResult
  $Res call({String residentId});
}

/// @nodoc
class _$DeleteAccountEventCopyWithImpl<$Res, $Val extends DeleteAccountEvent>
    implements $DeleteAccountEventCopyWith<$Res> {
  _$DeleteAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
  }) {
    return _then(_value.copyWith(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteAccountEventImplCopyWith<$Res>
    implements $DeleteAccountEventCopyWith<$Res> {
  factory _$$DeleteAccountEventImplCopyWith(_$DeleteAccountEventImpl value,
          $Res Function(_$DeleteAccountEventImpl) then) =
      __$$DeleteAccountEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String residentId});
}

/// @nodoc
class __$$DeleteAccountEventImplCopyWithImpl<$Res>
    extends _$DeleteAccountEventCopyWithImpl<$Res, _$DeleteAccountEventImpl>
    implements _$$DeleteAccountEventImplCopyWith<$Res> {
  __$$DeleteAccountEventImplCopyWithImpl(_$DeleteAccountEventImpl _value,
      $Res Function(_$DeleteAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
  }) {
    return _then(_$DeleteAccountEventImpl(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAccountEventImpl implements _DeleteAccountEvent {
  const _$DeleteAccountEventImpl({required this.residentId});

  @override
  final String residentId;

  @override
  String toString() {
    return 'DeleteAccountEvent.delete(residentId: $residentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountEventImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, residentId);

  /// Create a copy of DeleteAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountEventImplCopyWith<_$DeleteAccountEventImpl> get copyWith =>
      __$$DeleteAccountEventImplCopyWithImpl<_$DeleteAccountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) delete,
  }) {
    return delete(residentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? delete,
  }) {
    return delete?.call(residentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(residentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteAccountEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteAccountEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteAccountEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccountEvent implements DeleteAccountEvent {
  const factory _DeleteAccountEvent({required final String residentId}) =
      _$DeleteAccountEventImpl;

  @override
  String get residentId;

  /// Create a copy of DeleteAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAccountEventImplCopyWith<_$DeleteAccountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteAccountState {
  DeleteAccountStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteAccountStateCopyWith<DeleteAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountStateCopyWith<$Res> {
  factory $DeleteAccountStateCopyWith(
          DeleteAccountState value, $Res Function(DeleteAccountState) then) =
      _$DeleteAccountStateCopyWithImpl<$Res, DeleteAccountState>;
  @useResult
  $Res call({DeleteAccountStatus status, String? errorMessage});

  $DeleteAccountStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$DeleteAccountStateCopyWithImpl<$Res, $Val extends DeleteAccountState>
    implements $DeleteAccountStateCopyWith<$Res> {
  _$DeleteAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeleteAccountStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteAccountStatusCopyWith<$Res> get status {
    return $DeleteAccountStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteAccountStateImplCopyWith<$Res>
    implements $DeleteAccountStateCopyWith<$Res> {
  factory _$$DeleteAccountStateImplCopyWith(_$DeleteAccountStateImpl value,
          $Res Function(_$DeleteAccountStateImpl) then) =
      __$$DeleteAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeleteAccountStatus status, String? errorMessage});

  @override
  $DeleteAccountStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$DeleteAccountStateImplCopyWithImpl<$Res>
    extends _$DeleteAccountStateCopyWithImpl<$Res, _$DeleteAccountStateImpl>
    implements _$$DeleteAccountStateImplCopyWith<$Res> {
  __$$DeleteAccountStateImplCopyWithImpl(_$DeleteAccountStateImpl _value,
      $Res Function(_$DeleteAccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$DeleteAccountStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeleteAccountStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteAccountStateImpl implements _DeleteAccountState {
  const _$DeleteAccountStateImpl(
      {this.status = const DeleteAccountStatus.initial(), this.errorMessage});

  @override
  @JsonKey()
  final DeleteAccountStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DeleteAccountState(status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage);

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountStateImplCopyWith<_$DeleteAccountStateImpl> get copyWith =>
      __$$DeleteAccountStateImplCopyWithImpl<_$DeleteAccountStateImpl>(
          this, _$identity);
}

abstract class _DeleteAccountState implements DeleteAccountState {
  const factory _DeleteAccountState(
      {final DeleteAccountStatus status,
      final String? errorMessage}) = _$DeleteAccountStateImpl;

  @override
  DeleteAccountStatus get status;
  @override
  String? get errorMessage;

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAccountStateImplCopyWith<_$DeleteAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteAccountStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MAError message) failure,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MAError message)? failure,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MAError message)? failure,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountStatusCopyWith<$Res> {
  factory $DeleteAccountStatusCopyWith(
          DeleteAccountStatus value, $Res Function(DeleteAccountStatus) then) =
      _$DeleteAccountStatusCopyWithImpl<$Res, DeleteAccountStatus>;
}

/// @nodoc
class _$DeleteAccountStatusCopyWithImpl<$Res, $Val extends DeleteAccountStatus>
    implements $DeleteAccountStatusCopyWith<$Res> {
  _$DeleteAccountStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteAccountStatus
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
    extends _$DeleteAccountStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DeleteAccountStatus.initial()';
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
    required TResult Function(MAError message) failure,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MAError message)? failure,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MAError message)? failure,
    TResult Function()? success,
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
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DeleteAccountStatus {
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
    extends _$DeleteAccountStatusCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DeleteAccountStatus.loading()';
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
    required TResult Function(MAError message) failure,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MAError message)? failure,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MAError message)? failure,
    TResult Function()? success,
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
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DeleteAccountStatus {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MAError message});

  $MAErrorCopyWith<$Res> get message;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$DeleteAccountStatusCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountStatus
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
              as MAError,
    ));
  }

  /// Create a copy of DeleteAccountStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MAErrorCopyWith<$Res> get message {
    return $MAErrorCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final MAError message;

  @override
  String toString() {
    return 'DeleteAccountStatus.failure(message: $message)';
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

  /// Create a copy of DeleteAccountStatus
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
    required TResult Function(MAError message) failure,
    required TResult Function() success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MAError message)? failure,
    TResult? Function()? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MAError message)? failure,
    TResult Function()? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements DeleteAccountStatus {
  const factory _Failure(final MAError message) = _$FailureImpl;

  MAError get message;

  /// Create a copy of DeleteAccountStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$DeleteAccountStatusCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'DeleteAccountStatus.success()';
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
    required TResult Function() loading,
    required TResult Function(MAError message) failure,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MAError message)? failure,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MAError message)? failure,
    TResult Function()? success,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements DeleteAccountStatus {
  const factory _Success() = _$SuccessImpl;
}
