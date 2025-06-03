// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SiteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) selectByResidentId,
    required TResult Function(Site site) setSite,
    required TResult Function(Site site) setPrimarySite,
    required TResult Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)
        setBillSettings,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? selectByResidentId,
    TResult? Function(Site site)? setSite,
    TResult? Function(Site site)? setPrimarySite,
    TResult? Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)?
        setBillSettings,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? selectByResidentId,
    TResult Function(Site site)? setSite,
    TResult Function(Site site)? setPrimarySite,
    TResult Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)?
        setBillSettings,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectByResidentIdEvent value)
        selectByResidentId,
    required TResult Function(_SetSiteEvent value) setSite,
    required TResult Function(_SetPrimarySiteEvent value) setPrimarySite,
    required TResult Function(_SetBillSettingsEvent value) setBillSettings,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectByResidentIdEvent value)? selectByResidentId,
    TResult? Function(_SetSiteEvent value)? setSite,
    TResult? Function(_SetPrimarySiteEvent value)? setPrimarySite,
    TResult? Function(_SetBillSettingsEvent value)? setBillSettings,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectByResidentIdEvent value)? selectByResidentId,
    TResult Function(_SetSiteEvent value)? setSite,
    TResult Function(_SetPrimarySiteEvent value)? setPrimarySite,
    TResult Function(_SetBillSettingsEvent value)? setBillSettings,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteEventCopyWith<$Res> {
  factory $SiteEventCopyWith(SiteEvent value, $Res Function(SiteEvent) then) =
      _$SiteEventCopyWithImpl<$Res, SiteEvent>;
}

/// @nodoc
class _$SiteEventCopyWithImpl<$Res, $Val extends SiteEvent>
    implements $SiteEventCopyWith<$Res> {
  _$SiteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectByResidentIdEventImplCopyWith<$Res> {
  factory _$$SelectByResidentIdEventImplCopyWith(
          _$SelectByResidentIdEventImpl value,
          $Res Function(_$SelectByResidentIdEventImpl) then) =
      __$$SelectByResidentIdEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String residentId});
}

/// @nodoc
class __$$SelectByResidentIdEventImplCopyWithImpl<$Res>
    extends _$SiteEventCopyWithImpl<$Res, _$SelectByResidentIdEventImpl>
    implements _$$SelectByResidentIdEventImplCopyWith<$Res> {
  __$$SelectByResidentIdEventImplCopyWithImpl(
      _$SelectByResidentIdEventImpl _value,
      $Res Function(_$SelectByResidentIdEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
  }) {
    return _then(_$SelectByResidentIdEventImpl(
      null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectByResidentIdEventImpl implements _SelectByResidentIdEvent {
  const _$SelectByResidentIdEventImpl(this.residentId);

  @override
  final String residentId;

  @override
  String toString() {
    return 'SiteEvent.selectByResidentId(residentId: $residentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectByResidentIdEventImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, residentId);

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectByResidentIdEventImplCopyWith<_$SelectByResidentIdEventImpl>
      get copyWith => __$$SelectByResidentIdEventImplCopyWithImpl<
          _$SelectByResidentIdEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) selectByResidentId,
    required TResult Function(Site site) setSite,
    required TResult Function(Site site) setPrimarySite,
    required TResult Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)
        setBillSettings,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
  }) {
    return selectByResidentId(residentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? selectByResidentId,
    TResult? Function(Site site)? setSite,
    TResult? Function(Site site)? setPrimarySite,
    TResult? Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)?
        setBillSettings,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
  }) {
    return selectByResidentId?.call(residentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? selectByResidentId,
    TResult Function(Site site)? setSite,
    TResult Function(Site site)? setPrimarySite,
    TResult Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)?
        setBillSettings,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    required TResult orElse(),
  }) {
    if (selectByResidentId != null) {
      return selectByResidentId(residentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectByResidentIdEvent value)
        selectByResidentId,
    required TResult Function(_SetSiteEvent value) setSite,
    required TResult Function(_SetPrimarySiteEvent value) setPrimarySite,
    required TResult Function(_SetBillSettingsEvent value) setBillSettings,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
  }) {
    return selectByResidentId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectByResidentIdEvent value)? selectByResidentId,
    TResult? Function(_SetSiteEvent value)? setSite,
    TResult? Function(_SetPrimarySiteEvent value)? setPrimarySite,
    TResult? Function(_SetBillSettingsEvent value)? setBillSettings,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
  }) {
    return selectByResidentId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectByResidentIdEvent value)? selectByResidentId,
    TResult Function(_SetSiteEvent value)? setSite,
    TResult Function(_SetPrimarySiteEvent value)? setPrimarySite,
    TResult Function(_SetBillSettingsEvent value)? setBillSettings,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    required TResult orElse(),
  }) {
    if (selectByResidentId != null) {
      return selectByResidentId(this);
    }
    return orElse();
  }
}

abstract class _SelectByResidentIdEvent implements SiteEvent {
  const factory _SelectByResidentIdEvent(final String residentId) =
      _$SelectByResidentIdEventImpl;

  String get residentId;

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectByResidentIdEventImplCopyWith<_$SelectByResidentIdEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSiteEventImplCopyWith<$Res> {
  factory _$$SetSiteEventImplCopyWith(
          _$SetSiteEventImpl value, $Res Function(_$SetSiteEventImpl) then) =
      __$$SetSiteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Site site});
}

/// @nodoc
class __$$SetSiteEventImplCopyWithImpl<$Res>
    extends _$SiteEventCopyWithImpl<$Res, _$SetSiteEventImpl>
    implements _$$SetSiteEventImplCopyWith<$Res> {
  __$$SetSiteEventImplCopyWithImpl(
      _$SetSiteEventImpl _value, $Res Function(_$SetSiteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? site = null,
  }) {
    return _then(_$SetSiteEventImpl(
      null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as Site,
    ));
  }
}

/// @nodoc

class _$SetSiteEventImpl implements _SetSiteEvent {
  const _$SetSiteEventImpl(this.site);

  @override
  final Site site;

  @override
  String toString() {
    return 'SiteEvent.setSite(site: $site)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSiteEventImpl &&
            (identical(other.site, site) || other.site == site));
  }

  @override
  int get hashCode => Object.hash(runtimeType, site);

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSiteEventImplCopyWith<_$SetSiteEventImpl> get copyWith =>
      __$$SetSiteEventImplCopyWithImpl<_$SetSiteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) selectByResidentId,
    required TResult Function(Site site) setSite,
    required TResult Function(Site site) setPrimarySite,
    required TResult Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)
        setBillSettings,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
  }) {
    return setSite(site);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? selectByResidentId,
    TResult? Function(Site site)? setSite,
    TResult? Function(Site site)? setPrimarySite,
    TResult? Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)?
        setBillSettings,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
  }) {
    return setSite?.call(site);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? selectByResidentId,
    TResult Function(Site site)? setSite,
    TResult Function(Site site)? setPrimarySite,
    TResult Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)?
        setBillSettings,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    required TResult orElse(),
  }) {
    if (setSite != null) {
      return setSite(site);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectByResidentIdEvent value)
        selectByResidentId,
    required TResult Function(_SetSiteEvent value) setSite,
    required TResult Function(_SetPrimarySiteEvent value) setPrimarySite,
    required TResult Function(_SetBillSettingsEvent value) setBillSettings,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
  }) {
    return setSite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectByResidentIdEvent value)? selectByResidentId,
    TResult? Function(_SetSiteEvent value)? setSite,
    TResult? Function(_SetPrimarySiteEvent value)? setPrimarySite,
    TResult? Function(_SetBillSettingsEvent value)? setBillSettings,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
  }) {
    return setSite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectByResidentIdEvent value)? selectByResidentId,
    TResult Function(_SetSiteEvent value)? setSite,
    TResult Function(_SetPrimarySiteEvent value)? setPrimarySite,
    TResult Function(_SetBillSettingsEvent value)? setBillSettings,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    required TResult orElse(),
  }) {
    if (setSite != null) {
      return setSite(this);
    }
    return orElse();
  }
}

abstract class _SetSiteEvent implements SiteEvent {
  const factory _SetSiteEvent(final Site site) = _$SetSiteEventImpl;

  Site get site;

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetSiteEventImplCopyWith<_$SetSiteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPrimarySiteEventImplCopyWith<$Res> {
  factory _$$SetPrimarySiteEventImplCopyWith(_$SetPrimarySiteEventImpl value,
          $Res Function(_$SetPrimarySiteEventImpl) then) =
      __$$SetPrimarySiteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Site site});
}

/// @nodoc
class __$$SetPrimarySiteEventImplCopyWithImpl<$Res>
    extends _$SiteEventCopyWithImpl<$Res, _$SetPrimarySiteEventImpl>
    implements _$$SetPrimarySiteEventImplCopyWith<$Res> {
  __$$SetPrimarySiteEventImplCopyWithImpl(_$SetPrimarySiteEventImpl _value,
      $Res Function(_$SetPrimarySiteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? site = null,
  }) {
    return _then(_$SetPrimarySiteEventImpl(
      null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as Site,
    ));
  }
}

/// @nodoc

class _$SetPrimarySiteEventImpl implements _SetPrimarySiteEvent {
  const _$SetPrimarySiteEventImpl(this.site);

  @override
  final Site site;

  @override
  String toString() {
    return 'SiteEvent.setPrimarySite(site: $site)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPrimarySiteEventImpl &&
            (identical(other.site, site) || other.site == site));
  }

  @override
  int get hashCode => Object.hash(runtimeType, site);

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPrimarySiteEventImplCopyWith<_$SetPrimarySiteEventImpl> get copyWith =>
      __$$SetPrimarySiteEventImplCopyWithImpl<_$SetPrimarySiteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) selectByResidentId,
    required TResult Function(Site site) setSite,
    required TResult Function(Site site) setPrimarySite,
    required TResult Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)
        setBillSettings,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
  }) {
    return setPrimarySite(site);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? selectByResidentId,
    TResult? Function(Site site)? setSite,
    TResult? Function(Site site)? setPrimarySite,
    TResult? Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)?
        setBillSettings,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
  }) {
    return setPrimarySite?.call(site);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? selectByResidentId,
    TResult Function(Site site)? setSite,
    TResult Function(Site site)? setPrimarySite,
    TResult Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)?
        setBillSettings,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    required TResult orElse(),
  }) {
    if (setPrimarySite != null) {
      return setPrimarySite(site);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectByResidentIdEvent value)
        selectByResidentId,
    required TResult Function(_SetSiteEvent value) setSite,
    required TResult Function(_SetPrimarySiteEvent value) setPrimarySite,
    required TResult Function(_SetBillSettingsEvent value) setBillSettings,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
  }) {
    return setPrimarySite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectByResidentIdEvent value)? selectByResidentId,
    TResult? Function(_SetSiteEvent value)? setSite,
    TResult? Function(_SetPrimarySiteEvent value)? setPrimarySite,
    TResult? Function(_SetBillSettingsEvent value)? setBillSettings,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
  }) {
    return setPrimarySite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectByResidentIdEvent value)? selectByResidentId,
    TResult Function(_SetSiteEvent value)? setSite,
    TResult Function(_SetPrimarySiteEvent value)? setPrimarySite,
    TResult Function(_SetBillSettingsEvent value)? setBillSettings,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    required TResult orElse(),
  }) {
    if (setPrimarySite != null) {
      return setPrimarySite(this);
    }
    return orElse();
  }
}

abstract class _SetPrimarySiteEvent implements SiteEvent {
  const factory _SetPrimarySiteEvent(final Site site) =
      _$SetPrimarySiteEventImpl;

  Site get site;

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPrimarySiteEventImplCopyWith<_$SetPrimarySiteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetBillSettingsEventImplCopyWith<$Res> {
  factory _$$SetBillSettingsEventImplCopyWith(_$SetBillSettingsEventImpl value,
          $Res Function(_$SetBillSettingsEventImpl) then) =
      __$$SetBillSettingsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BillDeliveryType deliveryType,
      String email,
      String phoneNumber,
      int leadDaysForBillReminder});

  $BillDeliveryTypeCopyWith<$Res> get deliveryType;
}

/// @nodoc
class __$$SetBillSettingsEventImplCopyWithImpl<$Res>
    extends _$SiteEventCopyWithImpl<$Res, _$SetBillSettingsEventImpl>
    implements _$$SetBillSettingsEventImplCopyWith<$Res> {
  __$$SetBillSettingsEventImplCopyWithImpl(_$SetBillSettingsEventImpl _value,
      $Res Function(_$SetBillSettingsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryType = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? leadDaysForBillReminder = null,
  }) {
    return _then(_$SetBillSettingsEventImpl(
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as BillDeliveryType,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      leadDaysForBillReminder: null == leadDaysForBillReminder
          ? _value.leadDaysForBillReminder
          : leadDaysForBillReminder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of SiteEvent
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

class _$SetBillSettingsEventImpl implements _SetBillSettingsEvent {
  const _$SetBillSettingsEventImpl(
      {required this.deliveryType,
      required this.email,
      required this.phoneNumber,
      required this.leadDaysForBillReminder});

  @override
  final BillDeliveryType deliveryType;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final int leadDaysForBillReminder;

  @override
  String toString() {
    return 'SiteEvent.setBillSettings(deliveryType: $deliveryType, email: $email, phoneNumber: $phoneNumber, leadDaysForBillReminder: $leadDaysForBillReminder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetBillSettingsEventImpl &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(
                    other.leadDaysForBillReminder, leadDaysForBillReminder) ||
                other.leadDaysForBillReminder == leadDaysForBillReminder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, deliveryType, email, phoneNumber, leadDaysForBillReminder);

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetBillSettingsEventImplCopyWith<_$SetBillSettingsEventImpl>
      get copyWith =>
          __$$SetBillSettingsEventImplCopyWithImpl<_$SetBillSettingsEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) selectByResidentId,
    required TResult Function(Site site) setSite,
    required TResult Function(Site site) setPrimarySite,
    required TResult Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)
        setBillSettings,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
  }) {
    return setBillSettings(
        deliveryType, email, phoneNumber, leadDaysForBillReminder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? selectByResidentId,
    TResult? Function(Site site)? setSite,
    TResult? Function(Site site)? setPrimarySite,
    TResult? Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)?
        setBillSettings,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
  }) {
    return setBillSettings?.call(
        deliveryType, email, phoneNumber, leadDaysForBillReminder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? selectByResidentId,
    TResult Function(Site site)? setSite,
    TResult Function(Site site)? setPrimarySite,
    TResult Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)?
        setBillSettings,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    required TResult orElse(),
  }) {
    if (setBillSettings != null) {
      return setBillSettings(
          deliveryType, email, phoneNumber, leadDaysForBillReminder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectByResidentIdEvent value)
        selectByResidentId,
    required TResult Function(_SetSiteEvent value) setSite,
    required TResult Function(_SetPrimarySiteEvent value) setPrimarySite,
    required TResult Function(_SetBillSettingsEvent value) setBillSettings,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
  }) {
    return setBillSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectByResidentIdEvent value)? selectByResidentId,
    TResult? Function(_SetSiteEvent value)? setSite,
    TResult? Function(_SetPrimarySiteEvent value)? setPrimarySite,
    TResult? Function(_SetBillSettingsEvent value)? setBillSettings,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
  }) {
    return setBillSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectByResidentIdEvent value)? selectByResidentId,
    TResult Function(_SetSiteEvent value)? setSite,
    TResult Function(_SetPrimarySiteEvent value)? setPrimarySite,
    TResult Function(_SetBillSettingsEvent value)? setBillSettings,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    required TResult orElse(),
  }) {
    if (setBillSettings != null) {
      return setBillSettings(this);
    }
    return orElse();
  }
}

abstract class _SetBillSettingsEvent implements SiteEvent {
  const factory _SetBillSettingsEvent(
      {required final BillDeliveryType deliveryType,
      required final String email,
      required final String phoneNumber,
      required final int leadDaysForBillReminder}) = _$SetBillSettingsEventImpl;

  BillDeliveryType get deliveryType;
  String get email;
  String get phoneNumber;
  int get leadDaysForBillReminder;

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetBillSettingsEventImplCopyWith<_$SetBillSettingsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetContactInformationEventImplCopyWith<$Res> {
  factory _$$SetContactInformationEventImplCopyWith(
          _$SetContactInformationEventImpl value,
          $Res Function(_$SetContactInformationEventImpl) then) =
      __$$SetContactInformationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String residentEmail,
      String cellPhone,
      String homePhone,
      bool useBillingAddress,
      String billingAddress,
      String billingCity,
      String billingState,
      String billingPostalCode});
}

/// @nodoc
class __$$SetContactInformationEventImplCopyWithImpl<$Res>
    extends _$SiteEventCopyWithImpl<$Res, _$SetContactInformationEventImpl>
    implements _$$SetContactInformationEventImplCopyWith<$Res> {
  __$$SetContactInformationEventImplCopyWithImpl(
      _$SetContactInformationEventImpl _value,
      $Res Function(_$SetContactInformationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentEmail = null,
    Object? cellPhone = null,
    Object? homePhone = null,
    Object? useBillingAddress = null,
    Object? billingAddress = null,
    Object? billingCity = null,
    Object? billingState = null,
    Object? billingPostalCode = null,
  }) {
    return _then(_$SetContactInformationEventImpl(
      residentEmail: null == residentEmail
          ? _value.residentEmail
          : residentEmail // ignore: cast_nullable_to_non_nullable
              as String,
      cellPhone: null == cellPhone
          ? _value.cellPhone
          : cellPhone // ignore: cast_nullable_to_non_nullable
              as String,
      homePhone: null == homePhone
          ? _value.homePhone
          : homePhone // ignore: cast_nullable_to_non_nullable
              as String,
      useBillingAddress: null == useBillingAddress
          ? _value.useBillingAddress
          : useBillingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      billingAddress: null == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      billingCity: null == billingCity
          ? _value.billingCity
          : billingCity // ignore: cast_nullable_to_non_nullable
              as String,
      billingState: null == billingState
          ? _value.billingState
          : billingState // ignore: cast_nullable_to_non_nullable
              as String,
      billingPostalCode: null == billingPostalCode
          ? _value.billingPostalCode
          : billingPostalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetContactInformationEventImpl implements _SetContactInformationEvent {
  const _$SetContactInformationEventImpl(
      {required this.residentEmail,
      required this.cellPhone,
      required this.homePhone,
      required this.useBillingAddress,
      required this.billingAddress,
      required this.billingCity,
      required this.billingState,
      required this.billingPostalCode});

  @override
  final String residentEmail;
  @override
  final String cellPhone;
  @override
  final String homePhone;
  @override
  final bool useBillingAddress;
  @override
  final String billingAddress;
  @override
  final String billingCity;
  @override
  final String billingState;
  @override
  final String billingPostalCode;

  @override
  String toString() {
    return 'SiteEvent.setContactInformation(residentEmail: $residentEmail, cellPhone: $cellPhone, homePhone: $homePhone, useBillingAddress: $useBillingAddress, billingAddress: $billingAddress, billingCity: $billingCity, billingState: $billingState, billingPostalCode: $billingPostalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetContactInformationEventImpl &&
            (identical(other.residentEmail, residentEmail) ||
                other.residentEmail == residentEmail) &&
            (identical(other.cellPhone, cellPhone) ||
                other.cellPhone == cellPhone) &&
            (identical(other.homePhone, homePhone) ||
                other.homePhone == homePhone) &&
            (identical(other.useBillingAddress, useBillingAddress) ||
                other.useBillingAddress == useBillingAddress) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.billingCity, billingCity) ||
                other.billingCity == billingCity) &&
            (identical(other.billingState, billingState) ||
                other.billingState == billingState) &&
            (identical(other.billingPostalCode, billingPostalCode) ||
                other.billingPostalCode == billingPostalCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      residentEmail,
      cellPhone,
      homePhone,
      useBillingAddress,
      billingAddress,
      billingCity,
      billingState,
      billingPostalCode);

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetContactInformationEventImplCopyWith<_$SetContactInformationEventImpl>
      get copyWith => __$$SetContactInformationEventImplCopyWithImpl<
          _$SetContactInformationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String residentId) selectByResidentId,
    required TResult Function(Site site) setSite,
    required TResult Function(Site site) setPrimarySite,
    required TResult Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)
        setBillSettings,
    required TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)
        setContactInformation,
  }) {
    return setContactInformation(
        residentEmail,
        cellPhone,
        homePhone,
        useBillingAddress,
        billingAddress,
        billingCity,
        billingState,
        billingPostalCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String residentId)? selectByResidentId,
    TResult? Function(Site site)? setSite,
    TResult? Function(Site site)? setPrimarySite,
    TResult? Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)?
        setBillSettings,
    TResult? Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
  }) {
    return setContactInformation?.call(
        residentEmail,
        cellPhone,
        homePhone,
        useBillingAddress,
        billingAddress,
        billingCity,
        billingState,
        billingPostalCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String residentId)? selectByResidentId,
    TResult Function(Site site)? setSite,
    TResult Function(Site site)? setPrimarySite,
    TResult Function(BillDeliveryType deliveryType, String email,
            String phoneNumber, int leadDaysForBillReminder)?
        setBillSettings,
    TResult Function(
            String residentEmail,
            String cellPhone,
            String homePhone,
            bool useBillingAddress,
            String billingAddress,
            String billingCity,
            String billingState,
            String billingPostalCode)?
        setContactInformation,
    required TResult orElse(),
  }) {
    if (setContactInformation != null) {
      return setContactInformation(
          residentEmail,
          cellPhone,
          homePhone,
          useBillingAddress,
          billingAddress,
          billingCity,
          billingState,
          billingPostalCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectByResidentIdEvent value)
        selectByResidentId,
    required TResult Function(_SetSiteEvent value) setSite,
    required TResult Function(_SetPrimarySiteEvent value) setPrimarySite,
    required TResult Function(_SetBillSettingsEvent value) setBillSettings,
    required TResult Function(_SetContactInformationEvent value)
        setContactInformation,
  }) {
    return setContactInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectByResidentIdEvent value)? selectByResidentId,
    TResult? Function(_SetSiteEvent value)? setSite,
    TResult? Function(_SetPrimarySiteEvent value)? setPrimarySite,
    TResult? Function(_SetBillSettingsEvent value)? setBillSettings,
    TResult? Function(_SetContactInformationEvent value)? setContactInformation,
  }) {
    return setContactInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectByResidentIdEvent value)? selectByResidentId,
    TResult Function(_SetSiteEvent value)? setSite,
    TResult Function(_SetPrimarySiteEvent value)? setPrimarySite,
    TResult Function(_SetBillSettingsEvent value)? setBillSettings,
    TResult Function(_SetContactInformationEvent value)? setContactInformation,
    required TResult orElse(),
  }) {
    if (setContactInformation != null) {
      return setContactInformation(this);
    }
    return orElse();
  }
}

abstract class _SetContactInformationEvent implements SiteEvent {
  const factory _SetContactInformationEvent(
          {required final String residentEmail,
          required final String cellPhone,
          required final String homePhone,
          required final bool useBillingAddress,
          required final String billingAddress,
          required final String billingCity,
          required final String billingState,
          required final String billingPostalCode}) =
      _$SetContactInformationEventImpl;

  String get residentEmail;
  String get cellPhone;
  String get homePhone;
  bool get useBillingAddress;
  String get billingAddress;
  String get billingCity;
  String get billingState;
  String get billingPostalCode;

  /// Create a copy of SiteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetContactInformationEventImplCopyWith<_$SetContactInformationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SiteState {
  PrimarySite get selectedSite => throw _privateConstructorUsedError;
  GetByResidentIdStatus get getByResidentIdStatus =>
      throw _privateConstructorUsedError;

  /// Create a copy of SiteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SiteStateCopyWith<SiteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SiteStateCopyWith<$Res> {
  factory $SiteStateCopyWith(SiteState value, $Res Function(SiteState) then) =
      _$SiteStateCopyWithImpl<$Res, SiteState>;
  @useResult
  $Res call(
      {PrimarySite selectedSite, GetByResidentIdStatus getByResidentIdStatus});

  $GetByResidentIdStatusCopyWith<$Res> get getByResidentIdStatus;
}

/// @nodoc
class _$SiteStateCopyWithImpl<$Res, $Val extends SiteState>
    implements $SiteStateCopyWith<$Res> {
  _$SiteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SiteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSite = null,
    Object? getByResidentIdStatus = null,
  }) {
    return _then(_value.copyWith(
      selectedSite: null == selectedSite
          ? _value.selectedSite
          : selectedSite // ignore: cast_nullable_to_non_nullable
              as PrimarySite,
      getByResidentIdStatus: null == getByResidentIdStatus
          ? _value.getByResidentIdStatus
          : getByResidentIdStatus // ignore: cast_nullable_to_non_nullable
              as GetByResidentIdStatus,
    ) as $Val);
  }

  /// Create a copy of SiteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetByResidentIdStatusCopyWith<$Res> get getByResidentIdStatus {
    return $GetByResidentIdStatusCopyWith<$Res>(_value.getByResidentIdStatus,
        (value) {
      return _then(_value.copyWith(getByResidentIdStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SiteStateImplCopyWith<$Res>
    implements $SiteStateCopyWith<$Res> {
  factory _$$SiteStateImplCopyWith(
          _$SiteStateImpl value, $Res Function(_$SiteStateImpl) then) =
      __$$SiteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PrimarySite selectedSite, GetByResidentIdStatus getByResidentIdStatus});

  @override
  $GetByResidentIdStatusCopyWith<$Res> get getByResidentIdStatus;
}

/// @nodoc
class __$$SiteStateImplCopyWithImpl<$Res>
    extends _$SiteStateCopyWithImpl<$Res, _$SiteStateImpl>
    implements _$$SiteStateImplCopyWith<$Res> {
  __$$SiteStateImplCopyWithImpl(
      _$SiteStateImpl _value, $Res Function(_$SiteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SiteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSite = null,
    Object? getByResidentIdStatus = null,
  }) {
    return _then(_$SiteStateImpl(
      selectedSite: null == selectedSite
          ? _value.selectedSite
          : selectedSite // ignore: cast_nullable_to_non_nullable
              as PrimarySite,
      getByResidentIdStatus: null == getByResidentIdStatus
          ? _value.getByResidentIdStatus
          : getByResidentIdStatus // ignore: cast_nullable_to_non_nullable
              as GetByResidentIdStatus,
    ));
  }
}

/// @nodoc

class _$SiteStateImpl implements _SiteState {
  const _$SiteStateImpl(
      {this.selectedSite = PrimarySite.empty,
      this.getByResidentIdStatus = const GetByResidentIdStatus.initial()});

  @override
  @JsonKey()
  final PrimarySite selectedSite;
  @override
  @JsonKey()
  final GetByResidentIdStatus getByResidentIdStatus;

  @override
  String toString() {
    return 'SiteState(selectedSite: $selectedSite, getByResidentIdStatus: $getByResidentIdStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SiteStateImpl &&
            (identical(other.selectedSite, selectedSite) ||
                other.selectedSite == selectedSite) &&
            (identical(other.getByResidentIdStatus, getByResidentIdStatus) ||
                other.getByResidentIdStatus == getByResidentIdStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedSite, getByResidentIdStatus);

  /// Create a copy of SiteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SiteStateImplCopyWith<_$SiteStateImpl> get copyWith =>
      __$$SiteStateImplCopyWithImpl<_$SiteStateImpl>(this, _$identity);
}

abstract class _SiteState implements SiteState {
  const factory _SiteState(
      {final PrimarySite selectedSite,
      final GetByResidentIdStatus getByResidentIdStatus}) = _$SiteStateImpl;

  @override
  PrimarySite get selectedSite;
  @override
  GetByResidentIdStatus get getByResidentIdStatus;

  /// Create a copy of SiteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SiteStateImplCopyWith<_$SiteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetByResidentIdStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByResidentIdInitial value) initial,
    required TResult Function(_GetByResidentIdLoading value) loading,
    required TResult Function(_GetByResidentIdSuccess value) success,
    required TResult Function(_GetByResidentIdFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByResidentIdInitial value)? initial,
    TResult? Function(_GetByResidentIdLoading value)? loading,
    TResult? Function(_GetByResidentIdSuccess value)? success,
    TResult? Function(_GetByResidentIdFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByResidentIdInitial value)? initial,
    TResult Function(_GetByResidentIdLoading value)? loading,
    TResult Function(_GetByResidentIdSuccess value)? success,
    TResult Function(_GetByResidentIdFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetByResidentIdStatusCopyWith<$Res> {
  factory $GetByResidentIdStatusCopyWith(GetByResidentIdStatus value,
          $Res Function(GetByResidentIdStatus) then) =
      _$GetByResidentIdStatusCopyWithImpl<$Res, GetByResidentIdStatus>;
}

/// @nodoc
class _$GetByResidentIdStatusCopyWithImpl<$Res,
        $Val extends GetByResidentIdStatus>
    implements $GetByResidentIdStatusCopyWith<$Res> {
  _$GetByResidentIdStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetByResidentIdStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetByResidentIdInitialImplCopyWith<$Res> {
  factory _$$GetByResidentIdInitialImplCopyWith(
          _$GetByResidentIdInitialImpl value,
          $Res Function(_$GetByResidentIdInitialImpl) then) =
      __$$GetByResidentIdInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetByResidentIdInitialImplCopyWithImpl<$Res>
    extends _$GetByResidentIdStatusCopyWithImpl<$Res,
        _$GetByResidentIdInitialImpl>
    implements _$$GetByResidentIdInitialImplCopyWith<$Res> {
  __$$GetByResidentIdInitialImplCopyWithImpl(
      _$GetByResidentIdInitialImpl _value,
      $Res Function(_$GetByResidentIdInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetByResidentIdStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetByResidentIdInitialImpl implements _GetByResidentIdInitial {
  const _$GetByResidentIdInitialImpl();

  @override
  String toString() {
    return 'GetByResidentIdStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByResidentIdInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
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
    required TResult Function(_GetByResidentIdInitial value) initial,
    required TResult Function(_GetByResidentIdLoading value) loading,
    required TResult Function(_GetByResidentIdSuccess value) success,
    required TResult Function(_GetByResidentIdFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByResidentIdInitial value)? initial,
    TResult? Function(_GetByResidentIdLoading value)? loading,
    TResult? Function(_GetByResidentIdSuccess value)? success,
    TResult? Function(_GetByResidentIdFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByResidentIdInitial value)? initial,
    TResult Function(_GetByResidentIdLoading value)? loading,
    TResult Function(_GetByResidentIdSuccess value)? success,
    TResult Function(_GetByResidentIdFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetByResidentIdInitial implements GetByResidentIdStatus {
  const factory _GetByResidentIdInitial() = _$GetByResidentIdInitialImpl;
}

/// @nodoc
abstract class _$$GetByResidentIdLoadingImplCopyWith<$Res> {
  factory _$$GetByResidentIdLoadingImplCopyWith(
          _$GetByResidentIdLoadingImpl value,
          $Res Function(_$GetByResidentIdLoadingImpl) then) =
      __$$GetByResidentIdLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetByResidentIdLoadingImplCopyWithImpl<$Res>
    extends _$GetByResidentIdStatusCopyWithImpl<$Res,
        _$GetByResidentIdLoadingImpl>
    implements _$$GetByResidentIdLoadingImplCopyWith<$Res> {
  __$$GetByResidentIdLoadingImplCopyWithImpl(
      _$GetByResidentIdLoadingImpl _value,
      $Res Function(_$GetByResidentIdLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetByResidentIdStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetByResidentIdLoadingImpl implements _GetByResidentIdLoading {
  const _$GetByResidentIdLoadingImpl();

  @override
  String toString() {
    return 'GetByResidentIdStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByResidentIdLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
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
    required TResult Function(_GetByResidentIdInitial value) initial,
    required TResult Function(_GetByResidentIdLoading value) loading,
    required TResult Function(_GetByResidentIdSuccess value) success,
    required TResult Function(_GetByResidentIdFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByResidentIdInitial value)? initial,
    TResult? Function(_GetByResidentIdLoading value)? loading,
    TResult? Function(_GetByResidentIdSuccess value)? success,
    TResult? Function(_GetByResidentIdFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByResidentIdInitial value)? initial,
    TResult Function(_GetByResidentIdLoading value)? loading,
    TResult Function(_GetByResidentIdSuccess value)? success,
    TResult Function(_GetByResidentIdFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _GetByResidentIdLoading implements GetByResidentIdStatus {
  const factory _GetByResidentIdLoading() = _$GetByResidentIdLoadingImpl;
}

/// @nodoc
abstract class _$$GetByResidentIdSuccessImplCopyWith<$Res> {
  factory _$$GetByResidentIdSuccessImplCopyWith(
          _$GetByResidentIdSuccessImpl value,
          $Res Function(_$GetByResidentIdSuccessImpl) then) =
      __$$GetByResidentIdSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetByResidentIdSuccessImplCopyWithImpl<$Res>
    extends _$GetByResidentIdStatusCopyWithImpl<$Res,
        _$GetByResidentIdSuccessImpl>
    implements _$$GetByResidentIdSuccessImplCopyWith<$Res> {
  __$$GetByResidentIdSuccessImplCopyWithImpl(
      _$GetByResidentIdSuccessImpl _value,
      $Res Function(_$GetByResidentIdSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetByResidentIdStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetByResidentIdSuccessImpl implements _GetByResidentIdSuccess {
  const _$GetByResidentIdSuccessImpl();

  @override
  String toString() {
    return 'GetByResidentIdStatus.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByResidentIdSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
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
    required TResult Function(_GetByResidentIdInitial value) initial,
    required TResult Function(_GetByResidentIdLoading value) loading,
    required TResult Function(_GetByResidentIdSuccess value) success,
    required TResult Function(_GetByResidentIdFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByResidentIdInitial value)? initial,
    TResult? Function(_GetByResidentIdLoading value)? loading,
    TResult? Function(_GetByResidentIdSuccess value)? success,
    TResult? Function(_GetByResidentIdFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByResidentIdInitial value)? initial,
    TResult Function(_GetByResidentIdLoading value)? loading,
    TResult Function(_GetByResidentIdSuccess value)? success,
    TResult Function(_GetByResidentIdFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GetByResidentIdSuccess implements GetByResidentIdStatus {
  const factory _GetByResidentIdSuccess() = _$GetByResidentIdSuccessImpl;
}

/// @nodoc
abstract class _$$GetByResidentIdFailureImplCopyWith<$Res> {
  factory _$$GetByResidentIdFailureImplCopyWith(
          _$GetByResidentIdFailureImpl value,
          $Res Function(_$GetByResidentIdFailureImpl) then) =
      __$$GetByResidentIdFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetByResidentIdFailureImplCopyWithImpl<$Res>
    extends _$GetByResidentIdStatusCopyWithImpl<$Res,
        _$GetByResidentIdFailureImpl>
    implements _$$GetByResidentIdFailureImplCopyWith<$Res> {
  __$$GetByResidentIdFailureImplCopyWithImpl(
      _$GetByResidentIdFailureImpl _value,
      $Res Function(_$GetByResidentIdFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetByResidentIdStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetByResidentIdFailureImpl implements _GetByResidentIdFailure {
  const _$GetByResidentIdFailureImpl();

  @override
  String toString() {
    return 'GetByResidentIdStatus.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByResidentIdFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByResidentIdInitial value) initial,
    required TResult Function(_GetByResidentIdLoading value) loading,
    required TResult Function(_GetByResidentIdSuccess value) success,
    required TResult Function(_GetByResidentIdFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByResidentIdInitial value)? initial,
    TResult? Function(_GetByResidentIdLoading value)? loading,
    TResult? Function(_GetByResidentIdSuccess value)? success,
    TResult? Function(_GetByResidentIdFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByResidentIdInitial value)? initial,
    TResult Function(_GetByResidentIdLoading value)? loading,
    TResult Function(_GetByResidentIdSuccess value)? success,
    TResult Function(_GetByResidentIdFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _GetByResidentIdFailure implements GetByResidentIdStatus {
  const factory _GetByResidentIdFailure() = _$GetByResidentIdFailureImpl;
}
