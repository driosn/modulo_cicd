// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'legal_documents_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LegalDocumentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLegalDocuments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLegalDocuments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLegalDocuments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLegalDocumentsEvent value) getLegalDocuments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLegalDocumentsEvent value)? getLegalDocuments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLegalDocumentsEvent value)? getLegalDocuments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegalDocumentsEventCopyWith<$Res> {
  factory $LegalDocumentsEventCopyWith(
          LegalDocumentsEvent value, $Res Function(LegalDocumentsEvent) then) =
      _$LegalDocumentsEventCopyWithImpl<$Res, LegalDocumentsEvent>;
}

/// @nodoc
class _$LegalDocumentsEventCopyWithImpl<$Res, $Val extends LegalDocumentsEvent>
    implements $LegalDocumentsEventCopyWith<$Res> {
  _$LegalDocumentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LegalDocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetLegalDocumentsEventImplCopyWith<$Res> {
  factory _$$GetLegalDocumentsEventImplCopyWith(
          _$GetLegalDocumentsEventImpl value,
          $Res Function(_$GetLegalDocumentsEventImpl) then) =
      __$$GetLegalDocumentsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLegalDocumentsEventImplCopyWithImpl<$Res>
    extends _$LegalDocumentsEventCopyWithImpl<$Res,
        _$GetLegalDocumentsEventImpl>
    implements _$$GetLegalDocumentsEventImplCopyWith<$Res> {
  __$$GetLegalDocumentsEventImplCopyWithImpl(
      _$GetLegalDocumentsEventImpl _value,
      $Res Function(_$GetLegalDocumentsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LegalDocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetLegalDocumentsEventImpl implements _GetLegalDocumentsEvent {
  const _$GetLegalDocumentsEventImpl();

  @override
  String toString() {
    return 'LegalDocumentsEvent.getLegalDocuments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLegalDocumentsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLegalDocuments,
  }) {
    return getLegalDocuments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLegalDocuments,
  }) {
    return getLegalDocuments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLegalDocuments,
    required TResult orElse(),
  }) {
    if (getLegalDocuments != null) {
      return getLegalDocuments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLegalDocumentsEvent value) getLegalDocuments,
  }) {
    return getLegalDocuments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLegalDocumentsEvent value)? getLegalDocuments,
  }) {
    return getLegalDocuments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLegalDocumentsEvent value)? getLegalDocuments,
    required TResult orElse(),
  }) {
    if (getLegalDocuments != null) {
      return getLegalDocuments(this);
    }
    return orElse();
  }
}

abstract class _GetLegalDocumentsEvent implements LegalDocumentsEvent {
  const factory _GetLegalDocumentsEvent() = _$GetLegalDocumentsEventImpl;
}

/// @nodoc
mixin _$LegalDocumentsState {
  LegalDocumentsStatus get status => throw _privateConstructorUsedError;
  Document get legalDocuments => throw _privateConstructorUsedError;

  /// Create a copy of LegalDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LegalDocumentsStateCopyWith<LegalDocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegalDocumentsStateCopyWith<$Res> {
  factory $LegalDocumentsStateCopyWith(
          LegalDocumentsState value, $Res Function(LegalDocumentsState) then) =
      _$LegalDocumentsStateCopyWithImpl<$Res, LegalDocumentsState>;
  @useResult
  $Res call({LegalDocumentsStatus status, Document legalDocuments});
}

/// @nodoc
class _$LegalDocumentsStateCopyWithImpl<$Res, $Val extends LegalDocumentsState>
    implements $LegalDocumentsStateCopyWith<$Res> {
  _$LegalDocumentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LegalDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? legalDocuments = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LegalDocumentsStatus,
      legalDocuments: null == legalDocuments
          ? _value.legalDocuments
          : legalDocuments // ignore: cast_nullable_to_non_nullable
              as Document,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LegalDocumentsStateImplCopyWith<$Res>
    implements $LegalDocumentsStateCopyWith<$Res> {
  factory _$$LegalDocumentsStateImplCopyWith(_$LegalDocumentsStateImpl value,
          $Res Function(_$LegalDocumentsStateImpl) then) =
      __$$LegalDocumentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LegalDocumentsStatus status, Document legalDocuments});
}

/// @nodoc
class __$$LegalDocumentsStateImplCopyWithImpl<$Res>
    extends _$LegalDocumentsStateCopyWithImpl<$Res, _$LegalDocumentsStateImpl>
    implements _$$LegalDocumentsStateImplCopyWith<$Res> {
  __$$LegalDocumentsStateImplCopyWithImpl(_$LegalDocumentsStateImpl _value,
      $Res Function(_$LegalDocumentsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LegalDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? legalDocuments = null,
  }) {
    return _then(_$LegalDocumentsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LegalDocumentsStatus,
      legalDocuments: null == legalDocuments
          ? _value.legalDocuments
          : legalDocuments // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }
}

/// @nodoc

class _$LegalDocumentsStateImpl implements _LegalDocumentsState {
  const _$LegalDocumentsStateImpl(
      {this.status = LegalDocumentsStatus.initial,
      this.legalDocuments =
          const Document(title: '', subtitle: '', sections: [])});

  @override
  @JsonKey()
  final LegalDocumentsStatus status;
  @override
  @JsonKey()
  final Document legalDocuments;

  @override
  String toString() {
    return 'LegalDocumentsState(status: $status, legalDocuments: $legalDocuments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LegalDocumentsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.legalDocuments, legalDocuments) ||
                other.legalDocuments == legalDocuments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, legalDocuments);

  /// Create a copy of LegalDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LegalDocumentsStateImplCopyWith<_$LegalDocumentsStateImpl> get copyWith =>
      __$$LegalDocumentsStateImplCopyWithImpl<_$LegalDocumentsStateImpl>(
          this, _$identity);
}

abstract class _LegalDocumentsState implements LegalDocumentsState {
  const factory _LegalDocumentsState(
      {final LegalDocumentsStatus status,
      final Document legalDocuments}) = _$LegalDocumentsStateImpl;

  @override
  LegalDocumentsStatus get status;
  @override
  Document get legalDocuments;

  /// Create a copy of LegalDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LegalDocumentsStateImplCopyWith<_$LegalDocumentsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
