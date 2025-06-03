// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcements_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnnouncementsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentUserId) getAnnouncements,
    required TResult Function(String announcementId) setRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentUserId)? getAnnouncements,
    TResult? Function(String announcementId)? setRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentUserId)? getAnnouncements,
    TResult Function(String announcementId)? setRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAnnouncementsEvent value) getAnnouncements,
    required TResult Function(_SetReadEvent value) setRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAnnouncementsEvent value)? getAnnouncements,
    TResult? Function(_SetReadEvent value)? setRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAnnouncementsEvent value)? getAnnouncements,
    TResult Function(_SetReadEvent value)? setRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementsEventCopyWith<$Res> {
  factory $AnnouncementsEventCopyWith(
          AnnouncementsEvent value, $Res Function(AnnouncementsEvent) then) =
      _$AnnouncementsEventCopyWithImpl<$Res, AnnouncementsEvent>;
}

/// @nodoc
class _$AnnouncementsEventCopyWithImpl<$Res, $Val extends AnnouncementsEvent>
    implements $AnnouncementsEventCopyWith<$Res> {
  _$AnnouncementsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAnnouncementsEventImplCopyWith<$Res> {
  factory _$$GetAnnouncementsEventImplCopyWith(
          _$GetAnnouncementsEventImpl value,
          $Res Function(_$GetAnnouncementsEventImpl) then) =
      __$$GetAnnouncementsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String residentUserId});
}

/// @nodoc
class __$$GetAnnouncementsEventImplCopyWithImpl<$Res>
    extends _$AnnouncementsEventCopyWithImpl<$Res, _$GetAnnouncementsEventImpl>
    implements _$$GetAnnouncementsEventImplCopyWith<$Res> {
  __$$GetAnnouncementsEventImplCopyWithImpl(_$GetAnnouncementsEventImpl _value,
      $Res Function(_$GetAnnouncementsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentUserId = null,
  }) {
    return _then(_$GetAnnouncementsEventImpl(
      null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAnnouncementsEventImpl implements _GetAnnouncementsEvent {
  const _$GetAnnouncementsEventImpl(this.residentUserId);

  @override
  final String residentUserId;

  @override
  String toString() {
    return 'AnnouncementsEvent.getAnnouncements(residentUserId: $residentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAnnouncementsEventImpl &&
            (identical(other.residentUserId, residentUserId) ||
                other.residentUserId == residentUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, residentUserId);

  /// Create a copy of AnnouncementsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAnnouncementsEventImplCopyWith<_$GetAnnouncementsEventImpl>
      get copyWith => __$$GetAnnouncementsEventImplCopyWithImpl<
          _$GetAnnouncementsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentUserId) getAnnouncements,
    required TResult Function(String announcementId) setRead,
  }) {
    return getAnnouncements(residentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentUserId)? getAnnouncements,
    TResult? Function(String announcementId)? setRead,
  }) {
    return getAnnouncements?.call(residentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentUserId)? getAnnouncements,
    TResult Function(String announcementId)? setRead,
    required TResult orElse(),
  }) {
    if (getAnnouncements != null) {
      return getAnnouncements(residentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAnnouncementsEvent value) getAnnouncements,
    required TResult Function(_SetReadEvent value) setRead,
  }) {
    return getAnnouncements(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAnnouncementsEvent value)? getAnnouncements,
    TResult? Function(_SetReadEvent value)? setRead,
  }) {
    return getAnnouncements?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAnnouncementsEvent value)? getAnnouncements,
    TResult Function(_SetReadEvent value)? setRead,
    required TResult orElse(),
  }) {
    if (getAnnouncements != null) {
      return getAnnouncements(this);
    }
    return orElse();
  }
}

abstract class _GetAnnouncementsEvent implements AnnouncementsEvent {
  const factory _GetAnnouncementsEvent(final String residentUserId) =
      _$GetAnnouncementsEventImpl;

  String get residentUserId;

  /// Create a copy of AnnouncementsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAnnouncementsEventImplCopyWith<_$GetAnnouncementsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetReadEventImplCopyWith<$Res> {
  factory _$$SetReadEventImplCopyWith(
          _$SetReadEventImpl value, $Res Function(_$SetReadEventImpl) then) =
      __$$SetReadEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String announcementId});
}

/// @nodoc
class __$$SetReadEventImplCopyWithImpl<$Res>
    extends _$AnnouncementsEventCopyWithImpl<$Res, _$SetReadEventImpl>
    implements _$$SetReadEventImplCopyWith<$Res> {
  __$$SetReadEventImplCopyWithImpl(
      _$SetReadEventImpl _value, $Res Function(_$SetReadEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcementId = null,
  }) {
    return _then(_$SetReadEventImpl(
      null == announcementId
          ? _value.announcementId
          : announcementId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetReadEventImpl implements _SetReadEvent {
  const _$SetReadEventImpl(this.announcementId);

  @override
  final String announcementId;

  @override
  String toString() {
    return 'AnnouncementsEvent.setRead(announcementId: $announcementId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetReadEventImpl &&
            (identical(other.announcementId, announcementId) ||
                other.announcementId == announcementId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, announcementId);

  /// Create a copy of AnnouncementsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetReadEventImplCopyWith<_$SetReadEventImpl> get copyWith =>
      __$$SetReadEventImplCopyWithImpl<_$SetReadEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentUserId) getAnnouncements,
    required TResult Function(String announcementId) setRead,
  }) {
    return setRead(announcementId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentUserId)? getAnnouncements,
    TResult? Function(String announcementId)? setRead,
  }) {
    return setRead?.call(announcementId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentUserId)? getAnnouncements,
    TResult Function(String announcementId)? setRead,
    required TResult orElse(),
  }) {
    if (setRead != null) {
      return setRead(announcementId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAnnouncementsEvent value) getAnnouncements,
    required TResult Function(_SetReadEvent value) setRead,
  }) {
    return setRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAnnouncementsEvent value)? getAnnouncements,
    TResult? Function(_SetReadEvent value)? setRead,
  }) {
    return setRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAnnouncementsEvent value)? getAnnouncements,
    TResult Function(_SetReadEvent value)? setRead,
    required TResult orElse(),
  }) {
    if (setRead != null) {
      return setRead(this);
    }
    return orElse();
  }
}

abstract class _SetReadEvent implements AnnouncementsEvent {
  const factory _SetReadEvent(final String announcementId) = _$SetReadEventImpl;

  String get announcementId;

  /// Create a copy of AnnouncementsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetReadEventImplCopyWith<_$SetReadEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnnouncementsState {
  AnnouncementsStatus get status => throw _privateConstructorUsedError;
  List<Announcement>? get announcements => throw _privateConstructorUsedError;

  /// Create a copy of AnnouncementsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementsStateCopyWith<AnnouncementsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementsStateCopyWith<$Res> {
  factory $AnnouncementsStateCopyWith(
          AnnouncementsState value, $Res Function(AnnouncementsState) then) =
      _$AnnouncementsStateCopyWithImpl<$Res, AnnouncementsState>;
  @useResult
  $Res call({AnnouncementsStatus status, List<Announcement>? announcements});

  $AnnouncementsStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AnnouncementsStateCopyWithImpl<$Res, $Val extends AnnouncementsState>
    implements $AnnouncementsStateCopyWith<$Res> {
  _$AnnouncementsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? announcements = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AnnouncementsStatus,
      announcements: freezed == announcements
          ? _value.announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<Announcement>?,
    ) as $Val);
  }

  /// Create a copy of AnnouncementsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnnouncementsStatusCopyWith<$Res> get status {
    return $AnnouncementsStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnnouncementsStateImplCopyWith<$Res>
    implements $AnnouncementsStateCopyWith<$Res> {
  factory _$$AnnouncementsStateImplCopyWith(_$AnnouncementsStateImpl value,
          $Res Function(_$AnnouncementsStateImpl) then) =
      __$$AnnouncementsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnnouncementsStatus status, List<Announcement>? announcements});

  @override
  $AnnouncementsStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$AnnouncementsStateImplCopyWithImpl<$Res>
    extends _$AnnouncementsStateCopyWithImpl<$Res, _$AnnouncementsStateImpl>
    implements _$$AnnouncementsStateImplCopyWith<$Res> {
  __$$AnnouncementsStateImplCopyWithImpl(_$AnnouncementsStateImpl _value,
      $Res Function(_$AnnouncementsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? announcements = freezed,
  }) {
    return _then(_$AnnouncementsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AnnouncementsStatus,
      announcements: freezed == announcements
          ? _value._announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<Announcement>?,
    ));
  }
}

/// @nodoc

class _$AnnouncementsStateImpl implements _AnnouncementsState {
  const _$AnnouncementsStateImpl(
      {this.status = const AnnouncementsStatus.initial(),
      final List<Announcement>? announcements = null})
      : _announcements = announcements;

  @override
  @JsonKey()
  final AnnouncementsStatus status;
  final List<Announcement>? _announcements;
  @override
  @JsonKey()
  List<Announcement>? get announcements {
    final value = _announcements;
    if (value == null) return null;
    if (_announcements is EqualUnmodifiableListView) return _announcements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AnnouncementsState(status: $status, announcements: $announcements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._announcements, _announcements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_announcements));

  /// Create a copy of AnnouncementsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementsStateImplCopyWith<_$AnnouncementsStateImpl> get copyWith =>
      __$$AnnouncementsStateImplCopyWithImpl<_$AnnouncementsStateImpl>(
          this, _$identity);
}

abstract class _AnnouncementsState implements AnnouncementsState {
  const factory _AnnouncementsState(
      {final AnnouncementsStatus status,
      final List<Announcement>? announcements}) = _$AnnouncementsStateImpl;

  @override
  AnnouncementsStatus get status;
  @override
  List<Announcement>? get announcements;

  /// Create a copy of AnnouncementsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementsStateImplCopyWith<_$AnnouncementsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnnouncementsStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<Announcement> announcements) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<Announcement> announcements)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<Announcement> announcements)? success,
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
abstract class $AnnouncementsStatusCopyWith<$Res> {
  factory $AnnouncementsStatusCopyWith(
          AnnouncementsStatus value, $Res Function(AnnouncementsStatus) then) =
      _$AnnouncementsStatusCopyWithImpl<$Res, AnnouncementsStatus>;
}

/// @nodoc
class _$AnnouncementsStatusCopyWithImpl<$Res, $Val extends AnnouncementsStatus>
    implements $AnnouncementsStatusCopyWith<$Res> {
  _$AnnouncementsStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementsStatus
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
    extends _$AnnouncementsStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AnnouncementsStatus.initial()';
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
    required TResult Function(String message) failure,
    required TResult Function(List<Announcement> announcements) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<Announcement> announcements)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<Announcement> announcements)? success,
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

abstract class _Initial implements AnnouncementsStatus {
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
    extends _$AnnouncementsStatusCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AnnouncementsStatus.loading()';
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
    required TResult Function(String message) failure,
    required TResult Function(List<Announcement> announcements) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<Announcement> announcements)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<Announcement> announcements)? success,
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

abstract class _Loading implements AnnouncementsStatus {
  const factory _Loading() = _$LoadingImpl;
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
    extends _$AnnouncementsStatusCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementsStatus
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
    return 'AnnouncementsStatus.failure(message: $message)';
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

  /// Create a copy of AnnouncementsStatus
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
    required TResult Function(String message) failure,
    required TResult Function(List<Announcement> announcements) success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<Announcement> announcements)? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<Announcement> announcements)? success,
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

abstract class _Failure implements AnnouncementsStatus {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of AnnouncementsStatus
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
  @useResult
  $Res call({List<Announcement> announcements});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AnnouncementsStatusCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementsStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcements = null,
  }) {
    return _then(_$SuccessImpl(
      null == announcements
          ? _value._announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<Announcement> announcements)
      : _announcements = announcements;

  final List<Announcement> _announcements;
  @override
  List<Announcement> get announcements {
    if (_announcements is EqualUnmodifiableListView) return _announcements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_announcements);
  }

  @override
  String toString() {
    return 'AnnouncementsStatus.success(announcements: $announcements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._announcements, _announcements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_announcements));

  /// Create a copy of AnnouncementsStatus
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
    required TResult Function(String message) failure,
    required TResult Function(List<Announcement> announcements) success,
  }) {
    return success(announcements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<Announcement> announcements)? success,
  }) {
    return success?.call(announcements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<Announcement> announcements)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(announcements);
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

abstract class _Success implements AnnouncementsStatus {
  const factory _Success(final List<Announcement> announcements) =
      _$SuccessImpl;

  List<Announcement> get announcements;

  /// Create a copy of AnnouncementsStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
