// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FaqEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuestions,
    required TResult Function(String query) filterQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuestions,
    TResult? Function(String query)? filterQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuestions,
    TResult Function(String query)? filterQuestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuestionsEvent value) getQuestions,
    required TResult Function(_FilterQuestionsEvent value) filterQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestionsEvent value)? getQuestions,
    TResult? Function(_FilterQuestionsEvent value)? filterQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestionsEvent value)? getQuestions,
    TResult Function(_FilterQuestionsEvent value)? filterQuestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqEventCopyWith<$Res> {
  factory $FaqEventCopyWith(FaqEvent value, $Res Function(FaqEvent) then) =
      _$FaqEventCopyWithImpl<$Res, FaqEvent>;
}

/// @nodoc
class _$FaqEventCopyWithImpl<$Res, $Val extends FaqEvent>
    implements $FaqEventCopyWith<$Res> {
  _$FaqEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetQuestionsEventImplCopyWith<$Res> {
  factory _$$GetQuestionsEventImplCopyWith(_$GetQuestionsEventImpl value,
          $Res Function(_$GetQuestionsEventImpl) then) =
      __$$GetQuestionsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetQuestionsEventImplCopyWithImpl<$Res>
    extends _$FaqEventCopyWithImpl<$Res, _$GetQuestionsEventImpl>
    implements _$$GetQuestionsEventImplCopyWith<$Res> {
  __$$GetQuestionsEventImplCopyWithImpl(_$GetQuestionsEventImpl _value,
      $Res Function(_$GetQuestionsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetQuestionsEventImpl implements _GetQuestionsEvent {
  const _$GetQuestionsEventImpl();

  @override
  String toString() {
    return 'FaqEvent.getQuestions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetQuestionsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuestions,
    required TResult Function(String query) filterQuestions,
  }) {
    return getQuestions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuestions,
    TResult? Function(String query)? filterQuestions,
  }) {
    return getQuestions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuestions,
    TResult Function(String query)? filterQuestions,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuestionsEvent value) getQuestions,
    required TResult Function(_FilterQuestionsEvent value) filterQuestions,
  }) {
    return getQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestionsEvent value)? getQuestions,
    TResult? Function(_FilterQuestionsEvent value)? filterQuestions,
  }) {
    return getQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestionsEvent value)? getQuestions,
    TResult Function(_FilterQuestionsEvent value)? filterQuestions,
    required TResult orElse(),
  }) {
    if (getQuestions != null) {
      return getQuestions(this);
    }
    return orElse();
  }
}

abstract class _GetQuestionsEvent implements FaqEvent {
  const factory _GetQuestionsEvent() = _$GetQuestionsEventImpl;
}

/// @nodoc
abstract class _$$FilterQuestionsEventImplCopyWith<$Res> {
  factory _$$FilterQuestionsEventImplCopyWith(_$FilterQuestionsEventImpl value,
          $Res Function(_$FilterQuestionsEventImpl) then) =
      __$$FilterQuestionsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$FilterQuestionsEventImplCopyWithImpl<$Res>
    extends _$FaqEventCopyWithImpl<$Res, _$FilterQuestionsEventImpl>
    implements _$$FilterQuestionsEventImplCopyWith<$Res> {
  __$$FilterQuestionsEventImplCopyWithImpl(_$FilterQuestionsEventImpl _value,
      $Res Function(_$FilterQuestionsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$FilterQuestionsEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterQuestionsEventImpl implements _FilterQuestionsEvent {
  const _$FilterQuestionsEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'FaqEvent.filterQuestions(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterQuestionsEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of FaqEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterQuestionsEventImplCopyWith<_$FilterQuestionsEventImpl>
      get copyWith =>
          __$$FilterQuestionsEventImplCopyWithImpl<_$FilterQuestionsEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuestions,
    required TResult Function(String query) filterQuestions,
  }) {
    return filterQuestions(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuestions,
    TResult? Function(String query)? filterQuestions,
  }) {
    return filterQuestions?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuestions,
    TResult Function(String query)? filterQuestions,
    required TResult orElse(),
  }) {
    if (filterQuestions != null) {
      return filterQuestions(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuestionsEvent value) getQuestions,
    required TResult Function(_FilterQuestionsEvent value) filterQuestions,
  }) {
    return filterQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuestionsEvent value)? getQuestions,
    TResult? Function(_FilterQuestionsEvent value)? filterQuestions,
  }) {
    return filterQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuestionsEvent value)? getQuestions,
    TResult Function(_FilterQuestionsEvent value)? filterQuestions,
    required TResult orElse(),
  }) {
    if (filterQuestions != null) {
      return filterQuestions(this);
    }
    return orElse();
  }
}

abstract class _FilterQuestionsEvent implements FaqEvent {
  const factory _FilterQuestionsEvent(final String query) =
      _$FilterQuestionsEventImpl;

  String get query;

  /// Create a copy of FaqEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterQuestionsEventImplCopyWith<_$FilterQuestionsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FaqStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
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
abstract class $FaqStatusCopyWith<$Res> {
  factory $FaqStatusCopyWith(FaqStatus value, $Res Function(FaqStatus) then) =
      _$FaqStatusCopyWithImpl<$Res, FaqStatus>;
}

/// @nodoc
class _$FaqStatusCopyWithImpl<$Res, $Val extends FaqStatus>
    implements $FaqStatusCopyWith<$Res> {
  _$FaqStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqStatus
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
    extends _$FaqStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FaqStatus.initial()';
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
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
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

abstract class _Initial implements FaqStatus {
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
    extends _$FaqStatusCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FaqStatus.loading()';
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
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String message)? failure,
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

abstract class _Loading implements FaqStatus {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$FaqStatusCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'FaqStatus.success()';
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
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
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

abstract class _Success implements FaqStatus {
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
    extends _$FaqStatusCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqStatus
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
    return 'FaqStatus.failure(message: $message)';
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

  /// Create a copy of FaqStatus
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
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
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

abstract class _Failure implements FaqStatus {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of FaqStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FaqState {
  List<FaqQuestion> get questions => throw _privateConstructorUsedError;
  List<FaqQuestion> get filteredQuestions => throw _privateConstructorUsedError;
  FaqStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqStateCopyWith<FaqState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqStateCopyWith<$Res> {
  factory $FaqStateCopyWith(FaqState value, $Res Function(FaqState) then) =
      _$FaqStateCopyWithImpl<$Res, FaqState>;
  @useResult
  $Res call(
      {List<FaqQuestion> questions,
      List<FaqQuestion> filteredQuestions,
      FaqStatus status});

  $FaqStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$FaqStateCopyWithImpl<$Res, $Val extends FaqState>
    implements $FaqStateCopyWith<$Res> {
  _$FaqStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? filteredQuestions = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<FaqQuestion>,
      filteredQuestions: null == filteredQuestions
          ? _value.filteredQuestions
          : filteredQuestions // ignore: cast_nullable_to_non_nullable
              as List<FaqQuestion>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FaqStatus,
    ) as $Val);
  }

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FaqStatusCopyWith<$Res> get status {
    return $FaqStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FaqStateImplCopyWith<$Res>
    implements $FaqStateCopyWith<$Res> {
  factory _$$FaqStateImplCopyWith(
          _$FaqStateImpl value, $Res Function(_$FaqStateImpl) then) =
      __$$FaqStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FaqQuestion> questions,
      List<FaqQuestion> filteredQuestions,
      FaqStatus status});

  @override
  $FaqStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$FaqStateImplCopyWithImpl<$Res>
    extends _$FaqStateCopyWithImpl<$Res, _$FaqStateImpl>
    implements _$$FaqStateImplCopyWith<$Res> {
  __$$FaqStateImplCopyWithImpl(
      _$FaqStateImpl _value, $Res Function(_$FaqStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? filteredQuestions = null,
    Object? status = null,
  }) {
    return _then(_$FaqStateImpl(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<FaqQuestion>,
      filteredQuestions: null == filteredQuestions
          ? _value._filteredQuestions
          : filteredQuestions // ignore: cast_nullable_to_non_nullable
              as List<FaqQuestion>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FaqStatus,
    ));
  }
}

/// @nodoc

class _$FaqStateImpl implements _FaqState {
  const _$FaqStateImpl(
      {final List<FaqQuestion> questions = const <FaqQuestion>[],
      final List<FaqQuestion> filteredQuestions = const <FaqQuestion>[],
      this.status = const FaqStatus.initial()})
      : _questions = questions,
        _filteredQuestions = filteredQuestions;

  final List<FaqQuestion> _questions;
  @override
  @JsonKey()
  List<FaqQuestion> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<FaqQuestion> _filteredQuestions;
  @override
  @JsonKey()
  List<FaqQuestion> get filteredQuestions {
    if (_filteredQuestions is EqualUnmodifiableListView)
      return _filteredQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredQuestions);
  }

  @override
  @JsonKey()
  final FaqStatus status;

  @override
  String toString() {
    return 'FaqState(questions: $questions, filteredQuestions: $filteredQuestions, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqStateImpl &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality()
                .equals(other._filteredQuestions, _filteredQuestions) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_filteredQuestions),
      status);

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqStateImplCopyWith<_$FaqStateImpl> get copyWith =>
      __$$FaqStateImplCopyWithImpl<_$FaqStateImpl>(this, _$identity);
}

abstract class _FaqState implements FaqState {
  const factory _FaqState(
      {final List<FaqQuestion> questions,
      final List<FaqQuestion> filteredQuestions,
      final FaqStatus status}) = _$FaqStateImpl;

  @override
  List<FaqQuestion> get questions;
  @override
  List<FaqQuestion> get filteredQuestions;
  @override
  FaqStatus get status;

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqStateImplCopyWith<_$FaqStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
