// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_content_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompanyContentEvent {
  String get companyId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyId) getAutoPayAuthorizationText,
    required TResult Function(String companyId)
        getOneTimePaymentAuthorizationText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyId)? getAutoPayAuthorizationText,
    TResult? Function(String companyId)? getOneTimePaymentAuthorizationText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyId)? getAutoPayAuthorizationText,
    TResult Function(String companyId)? getOneTimePaymentAuthorizationText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAutoPayAuthorizationTextEvent value)
        getAutoPayAuthorizationText,
    required TResult Function(_GetOneTimePaymentAuthorizationTextEvent value)
        getOneTimePaymentAuthorizationText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAutoPayAuthorizationTextEvent value)?
        getAutoPayAuthorizationText,
    TResult? Function(_GetOneTimePaymentAuthorizationTextEvent value)?
        getOneTimePaymentAuthorizationText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAutoPayAuthorizationTextEvent value)?
        getAutoPayAuthorizationText,
    TResult Function(_GetOneTimePaymentAuthorizationTextEvent value)?
        getOneTimePaymentAuthorizationText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CompanyContentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyContentEventCopyWith<CompanyContentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyContentEventCopyWith<$Res> {
  factory $CompanyContentEventCopyWith(
          CompanyContentEvent value, $Res Function(CompanyContentEvent) then) =
      _$CompanyContentEventCopyWithImpl<$Res, CompanyContentEvent>;
  @useResult
  $Res call({String companyId});
}

/// @nodoc
class _$CompanyContentEventCopyWithImpl<$Res, $Val extends CompanyContentEvent>
    implements $CompanyContentEventCopyWith<$Res> {
  _$CompanyContentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyContentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
  }) {
    return _then(_value.copyWith(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAutoPayAuthorizationTextEventImplCopyWith<$Res>
    implements $CompanyContentEventCopyWith<$Res> {
  factory _$$GetAutoPayAuthorizationTextEventImplCopyWith(
          _$GetAutoPayAuthorizationTextEventImpl value,
          $Res Function(_$GetAutoPayAuthorizationTextEventImpl) then) =
      __$$GetAutoPayAuthorizationTextEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String companyId});
}

/// @nodoc
class __$$GetAutoPayAuthorizationTextEventImplCopyWithImpl<$Res>
    extends _$CompanyContentEventCopyWithImpl<$Res,
        _$GetAutoPayAuthorizationTextEventImpl>
    implements _$$GetAutoPayAuthorizationTextEventImplCopyWith<$Res> {
  __$$GetAutoPayAuthorizationTextEventImplCopyWithImpl(
      _$GetAutoPayAuthorizationTextEventImpl _value,
      $Res Function(_$GetAutoPayAuthorizationTextEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyContentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
  }) {
    return _then(_$GetAutoPayAuthorizationTextEventImpl(
      null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAutoPayAuthorizationTextEventImpl
    implements _GetAutoPayAuthorizationTextEvent {
  const _$GetAutoPayAuthorizationTextEventImpl(this.companyId);

  @override
  final String companyId;

  @override
  String toString() {
    return 'CompanyContentEvent.getAutoPayAuthorizationText(companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAutoPayAuthorizationTextEventImpl &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyId);

  /// Create a copy of CompanyContentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAutoPayAuthorizationTextEventImplCopyWith<
          _$GetAutoPayAuthorizationTextEventImpl>
      get copyWith => __$$GetAutoPayAuthorizationTextEventImplCopyWithImpl<
          _$GetAutoPayAuthorizationTextEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyId) getAutoPayAuthorizationText,
    required TResult Function(String companyId)
        getOneTimePaymentAuthorizationText,
  }) {
    return getAutoPayAuthorizationText(companyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyId)? getAutoPayAuthorizationText,
    TResult? Function(String companyId)? getOneTimePaymentAuthorizationText,
  }) {
    return getAutoPayAuthorizationText?.call(companyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyId)? getAutoPayAuthorizationText,
    TResult Function(String companyId)? getOneTimePaymentAuthorizationText,
    required TResult orElse(),
  }) {
    if (getAutoPayAuthorizationText != null) {
      return getAutoPayAuthorizationText(companyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAutoPayAuthorizationTextEvent value)
        getAutoPayAuthorizationText,
    required TResult Function(_GetOneTimePaymentAuthorizationTextEvent value)
        getOneTimePaymentAuthorizationText,
  }) {
    return getAutoPayAuthorizationText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAutoPayAuthorizationTextEvent value)?
        getAutoPayAuthorizationText,
    TResult? Function(_GetOneTimePaymentAuthorizationTextEvent value)?
        getOneTimePaymentAuthorizationText,
  }) {
    return getAutoPayAuthorizationText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAutoPayAuthorizationTextEvent value)?
        getAutoPayAuthorizationText,
    TResult Function(_GetOneTimePaymentAuthorizationTextEvent value)?
        getOneTimePaymentAuthorizationText,
    required TResult orElse(),
  }) {
    if (getAutoPayAuthorizationText != null) {
      return getAutoPayAuthorizationText(this);
    }
    return orElse();
  }
}

abstract class _GetAutoPayAuthorizationTextEvent
    implements CompanyContentEvent {
  const factory _GetAutoPayAuthorizationTextEvent(final String companyId) =
      _$GetAutoPayAuthorizationTextEventImpl;

  @override
  String get companyId;

  /// Create a copy of CompanyContentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAutoPayAuthorizationTextEventImplCopyWith<
          _$GetAutoPayAuthorizationTextEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOneTimePaymentAuthorizationTextEventImplCopyWith<$Res>
    implements $CompanyContentEventCopyWith<$Res> {
  factory _$$GetOneTimePaymentAuthorizationTextEventImplCopyWith(
          _$GetOneTimePaymentAuthorizationTextEventImpl value,
          $Res Function(_$GetOneTimePaymentAuthorizationTextEventImpl) then) =
      __$$GetOneTimePaymentAuthorizationTextEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String companyId});
}

/// @nodoc
class __$$GetOneTimePaymentAuthorizationTextEventImplCopyWithImpl<$Res>
    extends _$CompanyContentEventCopyWithImpl<$Res,
        _$GetOneTimePaymentAuthorizationTextEventImpl>
    implements _$$GetOneTimePaymentAuthorizationTextEventImplCopyWith<$Res> {
  __$$GetOneTimePaymentAuthorizationTextEventImplCopyWithImpl(
      _$GetOneTimePaymentAuthorizationTextEventImpl _value,
      $Res Function(_$GetOneTimePaymentAuthorizationTextEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyContentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
  }) {
    return _then(_$GetOneTimePaymentAuthorizationTextEventImpl(
      null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOneTimePaymentAuthorizationTextEventImpl
    implements _GetOneTimePaymentAuthorizationTextEvent {
  const _$GetOneTimePaymentAuthorizationTextEventImpl(this.companyId);

  @override
  final String companyId;

  @override
  String toString() {
    return 'CompanyContentEvent.getOneTimePaymentAuthorizationText(companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOneTimePaymentAuthorizationTextEventImpl &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyId);

  /// Create a copy of CompanyContentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOneTimePaymentAuthorizationTextEventImplCopyWith<
          _$GetOneTimePaymentAuthorizationTextEventImpl>
      get copyWith =>
          __$$GetOneTimePaymentAuthorizationTextEventImplCopyWithImpl<
              _$GetOneTimePaymentAuthorizationTextEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String companyId) getAutoPayAuthorizationText,
    required TResult Function(String companyId)
        getOneTimePaymentAuthorizationText,
  }) {
    return getOneTimePaymentAuthorizationText(companyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String companyId)? getAutoPayAuthorizationText,
    TResult? Function(String companyId)? getOneTimePaymentAuthorizationText,
  }) {
    return getOneTimePaymentAuthorizationText?.call(companyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String companyId)? getAutoPayAuthorizationText,
    TResult Function(String companyId)? getOneTimePaymentAuthorizationText,
    required TResult orElse(),
  }) {
    if (getOneTimePaymentAuthorizationText != null) {
      return getOneTimePaymentAuthorizationText(companyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAutoPayAuthorizationTextEvent value)
        getAutoPayAuthorizationText,
    required TResult Function(_GetOneTimePaymentAuthorizationTextEvent value)
        getOneTimePaymentAuthorizationText,
  }) {
    return getOneTimePaymentAuthorizationText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAutoPayAuthorizationTextEvent value)?
        getAutoPayAuthorizationText,
    TResult? Function(_GetOneTimePaymentAuthorizationTextEvent value)?
        getOneTimePaymentAuthorizationText,
  }) {
    return getOneTimePaymentAuthorizationText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAutoPayAuthorizationTextEvent value)?
        getAutoPayAuthorizationText,
    TResult Function(_GetOneTimePaymentAuthorizationTextEvent value)?
        getOneTimePaymentAuthorizationText,
    required TResult orElse(),
  }) {
    if (getOneTimePaymentAuthorizationText != null) {
      return getOneTimePaymentAuthorizationText(this);
    }
    return orElse();
  }
}

abstract class _GetOneTimePaymentAuthorizationTextEvent
    implements CompanyContentEvent {
  const factory _GetOneTimePaymentAuthorizationTextEvent(
      final String companyId) = _$GetOneTimePaymentAuthorizationTextEventImpl;

  @override
  String get companyId;

  /// Create a copy of CompanyContentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOneTimePaymentAuthorizationTextEventImplCopyWith<
          _$GetOneTimePaymentAuthorizationTextEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompanyContentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)
        success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)?
        success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyContentStateCopyWith<$Res> {
  factory $CompanyContentStateCopyWith(
          CompanyContentState value, $Res Function(CompanyContentState) then) =
      _$CompanyContentStateCopyWithImpl<$Res, CompanyContentState>;
}

/// @nodoc
class _$CompanyContentStateCopyWithImpl<$Res, $Val extends CompanyContentState>
    implements $CompanyContentStateCopyWith<$Res> {
  _$CompanyContentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyContentState
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
    extends _$CompanyContentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyContentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CompanyContentState.initial()';
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
    required TResult Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)
        success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)?
        success,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)?
        success,
    TResult Function()? error,
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
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CompanyContentState {
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
    extends _$CompanyContentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyContentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CompanyContentState.loading()';
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
    required TResult Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)
        success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)?
        success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)?
        success,
    TResult Function()? error,
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
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CompanyContentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String oneTimePaymentAuthorizationText,
      String autoPayAuthorizationText});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CompanyContentStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyContentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oneTimePaymentAuthorizationText = null,
    Object? autoPayAuthorizationText = null,
  }) {
    return _then(_$SuccessImpl(
      oneTimePaymentAuthorizationText: null == oneTimePaymentAuthorizationText
          ? _value.oneTimePaymentAuthorizationText
          : oneTimePaymentAuthorizationText // ignore: cast_nullable_to_non_nullable
              as String,
      autoPayAuthorizationText: null == autoPayAuthorizationText
          ? _value.autoPayAuthorizationText
          : autoPayAuthorizationText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {this.oneTimePaymentAuthorizationText = '',
      this.autoPayAuthorizationText = ''});

  @override
  @JsonKey()
  final String oneTimePaymentAuthorizationText;
  @override
  @JsonKey()
  final String autoPayAuthorizationText;

  @override
  String toString() {
    return 'CompanyContentState.success(oneTimePaymentAuthorizationText: $oneTimePaymentAuthorizationText, autoPayAuthorizationText: $autoPayAuthorizationText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.oneTimePaymentAuthorizationText,
                    oneTimePaymentAuthorizationText) ||
                other.oneTimePaymentAuthorizationText ==
                    oneTimePaymentAuthorizationText) &&
            (identical(
                    other.autoPayAuthorizationText, autoPayAuthorizationText) ||
                other.autoPayAuthorizationText == autoPayAuthorizationText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, oneTimePaymentAuthorizationText, autoPayAuthorizationText);

  /// Create a copy of CompanyContentState
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
    required TResult Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)
        success,
    required TResult Function() error,
  }) {
    return success(oneTimePaymentAuthorizationText, autoPayAuthorizationText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)?
        success,
    TResult? Function()? error,
  }) {
    return success?.call(
        oneTimePaymentAuthorizationText, autoPayAuthorizationText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(oneTimePaymentAuthorizationText, autoPayAuthorizationText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CompanyContentState {
  const factory _Success(
      {final String oneTimePaymentAuthorizationText,
      final String autoPayAuthorizationText}) = _$SuccessImpl;

  String get oneTimePaymentAuthorizationText;
  String get autoPayAuthorizationText;

  /// Create a copy of CompanyContentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CompanyContentStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyContentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'CompanyContentState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)
        success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)?
        success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String oneTimePaymentAuthorizationText,
            String autoPayAuthorizationText)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CompanyContentState {
  const factory _Error() = _$ErrorImpl;
}
