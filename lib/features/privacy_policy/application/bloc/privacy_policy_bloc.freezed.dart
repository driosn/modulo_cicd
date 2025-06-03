// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'privacy_policy_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PrivacyPolicyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPrivacyPolicy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPrivacyPolicy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPrivacyPolicy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrivacyPolicyEvent value) getPrivacyPolicy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrivacyPolicyEvent value)? getPrivacyPolicy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrivacyPolicyEvent value)? getPrivacyPolicy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacyPolicyEventCopyWith<$Res> {
  factory $PrivacyPolicyEventCopyWith(
          PrivacyPolicyEvent value, $Res Function(PrivacyPolicyEvent) then) =
      _$PrivacyPolicyEventCopyWithImpl<$Res, PrivacyPolicyEvent>;
}

/// @nodoc
class _$PrivacyPolicyEventCopyWithImpl<$Res, $Val extends PrivacyPolicyEvent>
    implements $PrivacyPolicyEventCopyWith<$Res> {
  _$PrivacyPolicyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivacyPolicyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPrivacyPolicyEventImplCopyWith<$Res> {
  factory _$$GetPrivacyPolicyEventImplCopyWith(
          _$GetPrivacyPolicyEventImpl value,
          $Res Function(_$GetPrivacyPolicyEventImpl) then) =
      __$$GetPrivacyPolicyEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPrivacyPolicyEventImplCopyWithImpl<$Res>
    extends _$PrivacyPolicyEventCopyWithImpl<$Res, _$GetPrivacyPolicyEventImpl>
    implements _$$GetPrivacyPolicyEventImplCopyWith<$Res> {
  __$$GetPrivacyPolicyEventImplCopyWithImpl(_$GetPrivacyPolicyEventImpl _value,
      $Res Function(_$GetPrivacyPolicyEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivacyPolicyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPrivacyPolicyEventImpl implements _GetPrivacyPolicyEvent {
  const _$GetPrivacyPolicyEventImpl();

  @override
  String toString() {
    return 'PrivacyPolicyEvent.getPrivacyPolicy()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPrivacyPolicyEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPrivacyPolicy,
  }) {
    return getPrivacyPolicy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPrivacyPolicy,
  }) {
    return getPrivacyPolicy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (getPrivacyPolicy != null) {
      return getPrivacyPolicy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPrivacyPolicyEvent value) getPrivacyPolicy,
  }) {
    return getPrivacyPolicy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPrivacyPolicyEvent value)? getPrivacyPolicy,
  }) {
    return getPrivacyPolicy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPrivacyPolicyEvent value)? getPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (getPrivacyPolicy != null) {
      return getPrivacyPolicy(this);
    }
    return orElse();
  }
}

abstract class _GetPrivacyPolicyEvent implements PrivacyPolicyEvent {
  const factory _GetPrivacyPolicyEvent() = _$GetPrivacyPolicyEventImpl;
}

/// @nodoc
mixin _$PrivacyPolicyState {
  PrivacyPolicyStatus get status => throw _privateConstructorUsedError;
  Document get privacyPolicy => throw _privateConstructorUsedError;

  /// Create a copy of PrivacyPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivacyPolicyStateCopyWith<PrivacyPolicyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacyPolicyStateCopyWith<$Res> {
  factory $PrivacyPolicyStateCopyWith(
          PrivacyPolicyState value, $Res Function(PrivacyPolicyState) then) =
      _$PrivacyPolicyStateCopyWithImpl<$Res, PrivacyPolicyState>;
  @useResult
  $Res call({PrivacyPolicyStatus status, Document privacyPolicy});
}

/// @nodoc
class _$PrivacyPolicyStateCopyWithImpl<$Res, $Val extends PrivacyPolicyState>
    implements $PrivacyPolicyStateCopyWith<$Res> {
  _$PrivacyPolicyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivacyPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? privacyPolicy = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PrivacyPolicyStatus,
      privacyPolicy: null == privacyPolicy
          ? _value.privacyPolicy
          : privacyPolicy // ignore: cast_nullable_to_non_nullable
              as Document,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivacyPolicyStateImplCopyWith<$Res>
    implements $PrivacyPolicyStateCopyWith<$Res> {
  factory _$$PrivacyPolicyStateImplCopyWith(_$PrivacyPolicyStateImpl value,
          $Res Function(_$PrivacyPolicyStateImpl) then) =
      __$$PrivacyPolicyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PrivacyPolicyStatus status, Document privacyPolicy});
}

/// @nodoc
class __$$PrivacyPolicyStateImplCopyWithImpl<$Res>
    extends _$PrivacyPolicyStateCopyWithImpl<$Res, _$PrivacyPolicyStateImpl>
    implements _$$PrivacyPolicyStateImplCopyWith<$Res> {
  __$$PrivacyPolicyStateImplCopyWithImpl(_$PrivacyPolicyStateImpl _value,
      $Res Function(_$PrivacyPolicyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivacyPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? privacyPolicy = null,
  }) {
    return _then(_$PrivacyPolicyStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PrivacyPolicyStatus,
      privacyPolicy: null == privacyPolicy
          ? _value.privacyPolicy
          : privacyPolicy // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }
}

/// @nodoc

class _$PrivacyPolicyStateImpl implements _PrivacyPolicyState {
  const _$PrivacyPolicyStateImpl(
      {this.status = PrivacyPolicyStatus.initial,
      this.privacyPolicy =
          const Document(title: '', subtitle: '', sections: [])});

  @override
  @JsonKey()
  final PrivacyPolicyStatus status;
  @override
  @JsonKey()
  final Document privacyPolicy;

  @override
  String toString() {
    return 'PrivacyPolicyState(status: $status, privacyPolicy: $privacyPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacyPolicyStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.privacyPolicy, privacyPolicy) ||
                other.privacyPolicy == privacyPolicy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, privacyPolicy);

  /// Create a copy of PrivacyPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacyPolicyStateImplCopyWith<_$PrivacyPolicyStateImpl> get copyWith =>
      __$$PrivacyPolicyStateImplCopyWithImpl<_$PrivacyPolicyStateImpl>(
          this, _$identity);
}

abstract class _PrivacyPolicyState implements PrivacyPolicyState {
  const factory _PrivacyPolicyState(
      {final PrivacyPolicyStatus status,
      final Document privacyPolicy}) = _$PrivacyPolicyStateImpl;

  @override
  PrivacyPolicyStatus get status;
  @override
  Document get privacyPolicy;

  /// Create a copy of PrivacyPolicyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivacyPolicyStateImplCopyWith<_$PrivacyPolicyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
