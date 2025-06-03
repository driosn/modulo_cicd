// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get residentUserId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get residentUserEmail => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  int get companyNumber => throw _privateConstructorUsedError;
  String get propertyId => throw _privateConstructorUsedError;
  int get propertyNumber => throw _privateConstructorUsedError;
  int get notificationLanguagePreferenceType =>
      throw _privateConstructorUsedError;
  String get notificationLanguagePreferenceTypeDescription =>
      throw _privateConstructorUsedError;
  Language get notificationLanguagePreference =>
      throw _privateConstructorUsedError;
  PrimarySiteModel get primarySite => throw _privateConstructorUsedError;
  List<AssociatedSitesModel> get associatedSites =>
      throw _privateConstructorUsedError;
  EverywareSettingsModel get everywareSettings =>
      throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String residentUserId,
      String username,
      String residentUserEmail,
      String companyId,
      int companyNumber,
      String propertyId,
      int propertyNumber,
      int notificationLanguagePreferenceType,
      String notificationLanguagePreferenceTypeDescription,
      Language notificationLanguagePreference,
      PrimarySiteModel primarySite,
      List<AssociatedSitesModel> associatedSites,
      EverywareSettingsModel everywareSettings});

  $PrimarySiteModelCopyWith<$Res> get primarySite;
  $EverywareSettingsModelCopyWith<$Res> get everywareSettings;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentUserId = null,
    Object? username = null,
    Object? residentUserEmail = null,
    Object? companyId = null,
    Object? companyNumber = null,
    Object? propertyId = null,
    Object? propertyNumber = null,
    Object? notificationLanguagePreferenceType = null,
    Object? notificationLanguagePreferenceTypeDescription = null,
    Object? notificationLanguagePreference = null,
    Object? primarySite = null,
    Object? associatedSites = null,
    Object? everywareSettings = null,
  }) {
    return _then(_value.copyWith(
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      residentUserEmail: null == residentUserEmail
          ? _value.residentUserEmail
          : residentUserEmail // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      companyNumber: null == companyNumber
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as int,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyNumber: null == propertyNumber
          ? _value.propertyNumber
          : propertyNumber // ignore: cast_nullable_to_non_nullable
              as int,
      notificationLanguagePreferenceType: null ==
              notificationLanguagePreferenceType
          ? _value.notificationLanguagePreferenceType
          : notificationLanguagePreferenceType // ignore: cast_nullable_to_non_nullable
              as int,
      notificationLanguagePreferenceTypeDescription: null ==
              notificationLanguagePreferenceTypeDescription
          ? _value.notificationLanguagePreferenceTypeDescription
          : notificationLanguagePreferenceTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      notificationLanguagePreference: null == notificationLanguagePreference
          ? _value.notificationLanguagePreference
          : notificationLanguagePreference // ignore: cast_nullable_to_non_nullable
              as Language,
      primarySite: null == primarySite
          ? _value.primarySite
          : primarySite // ignore: cast_nullable_to_non_nullable
              as PrimarySiteModel,
      associatedSites: null == associatedSites
          ? _value.associatedSites
          : associatedSites // ignore: cast_nullable_to_non_nullable
              as List<AssociatedSitesModel>,
      everywareSettings: null == everywareSettings
          ? _value.everywareSettings
          : everywareSettings // ignore: cast_nullable_to_non_nullable
              as EverywareSettingsModel,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrimarySiteModelCopyWith<$Res> get primarySite {
    return $PrimarySiteModelCopyWith<$Res>(_value.primarySite, (value) {
      return _then(_value.copyWith(primarySite: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EverywareSettingsModelCopyWith<$Res> get everywareSettings {
    return $EverywareSettingsModelCopyWith<$Res>(_value.everywareSettings,
        (value) {
      return _then(_value.copyWith(everywareSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String residentUserId,
      String username,
      String residentUserEmail,
      String companyId,
      int companyNumber,
      String propertyId,
      int propertyNumber,
      int notificationLanguagePreferenceType,
      String notificationLanguagePreferenceTypeDescription,
      Language notificationLanguagePreference,
      PrimarySiteModel primarySite,
      List<AssociatedSitesModel> associatedSites,
      EverywareSettingsModel everywareSettings});

  @override
  $PrimarySiteModelCopyWith<$Res> get primarySite;
  @override
  $EverywareSettingsModelCopyWith<$Res> get everywareSettings;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentUserId = null,
    Object? username = null,
    Object? residentUserEmail = null,
    Object? companyId = null,
    Object? companyNumber = null,
    Object? propertyId = null,
    Object? propertyNumber = null,
    Object? notificationLanguagePreferenceType = null,
    Object? notificationLanguagePreferenceTypeDescription = null,
    Object? notificationLanguagePreference = null,
    Object? primarySite = null,
    Object? associatedSites = null,
    Object? everywareSettings = null,
  }) {
    return _then(_$UserModelImpl(
      residentUserId: null == residentUserId
          ? _value.residentUserId
          : residentUserId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      residentUserEmail: null == residentUserEmail
          ? _value.residentUserEmail
          : residentUserEmail // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      companyNumber: null == companyNumber
          ? _value.companyNumber
          : companyNumber // ignore: cast_nullable_to_non_nullable
              as int,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      propertyNumber: null == propertyNumber
          ? _value.propertyNumber
          : propertyNumber // ignore: cast_nullable_to_non_nullable
              as int,
      notificationLanguagePreferenceType: null ==
              notificationLanguagePreferenceType
          ? _value.notificationLanguagePreferenceType
          : notificationLanguagePreferenceType // ignore: cast_nullable_to_non_nullable
              as int,
      notificationLanguagePreferenceTypeDescription: null ==
              notificationLanguagePreferenceTypeDescription
          ? _value.notificationLanguagePreferenceTypeDescription
          : notificationLanguagePreferenceTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      notificationLanguagePreference: null == notificationLanguagePreference
          ? _value.notificationLanguagePreference
          : notificationLanguagePreference // ignore: cast_nullable_to_non_nullable
              as Language,
      primarySite: null == primarySite
          ? _value.primarySite
          : primarySite // ignore: cast_nullable_to_non_nullable
              as PrimarySiteModel,
      associatedSites: null == associatedSites
          ? _value._associatedSites
          : associatedSites // ignore: cast_nullable_to_non_nullable
              as List<AssociatedSitesModel>,
      everywareSettings: null == everywareSettings
          ? _value.everywareSettings
          : everywareSettings // ignore: cast_nullable_to_non_nullable
              as EverywareSettingsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {this.residentUserId = '',
      this.username = '',
      this.residentUserEmail = '',
      this.companyId = '',
      this.companyNumber = 0,
      this.propertyId = '',
      this.propertyNumber = 0,
      this.notificationLanguagePreferenceType = LanguageInitialValues.type,
      this.notificationLanguagePreferenceTypeDescription =
          LanguageInitialValues.code,
      this.notificationLanguagePreference = Language.english,
      required this.primarySite,
      final List<AssociatedSitesModel> associatedSites =
          const <AssociatedSitesModel>[],
      required this.everywareSettings})
      : _associatedSites = associatedSites;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey()
  final String residentUserId;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String residentUserEmail;
  @override
  @JsonKey()
  final String companyId;
  @override
  @JsonKey()
  final int companyNumber;
  @override
  @JsonKey()
  final String propertyId;
  @override
  @JsonKey()
  final int propertyNumber;
  @override
  @JsonKey()
  final int notificationLanguagePreferenceType;
  @override
  @JsonKey()
  final String notificationLanguagePreferenceTypeDescription;
  @override
  @JsonKey()
  final Language notificationLanguagePreference;
  @override
  final PrimarySiteModel primarySite;
  final List<AssociatedSitesModel> _associatedSites;
  @override
  @JsonKey()
  List<AssociatedSitesModel> get associatedSites {
    if (_associatedSites is EqualUnmodifiableListView) return _associatedSites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_associatedSites);
  }

  @override
  final EverywareSettingsModel everywareSettings;

  @override
  String toString() {
    return 'UserModel(residentUserId: $residentUserId, username: $username, residentUserEmail: $residentUserEmail, companyId: $companyId, companyNumber: $companyNumber, propertyId: $propertyId, propertyNumber: $propertyNumber, notificationLanguagePreferenceType: $notificationLanguagePreferenceType, notificationLanguagePreferenceTypeDescription: $notificationLanguagePreferenceTypeDescription, notificationLanguagePreference: $notificationLanguagePreference, primarySite: $primarySite, associatedSites: $associatedSites, everywareSettings: $everywareSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.residentUserId, residentUserId) ||
                other.residentUserId == residentUserId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.residentUserEmail, residentUserEmail) ||
                other.residentUserEmail == residentUserEmail) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyNumber, companyNumber) ||
                other.companyNumber == companyNumber) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.propertyNumber, propertyNumber) ||
                other.propertyNumber == propertyNumber) &&
            (identical(other.notificationLanguagePreferenceType,
                    notificationLanguagePreferenceType) ||
                other.notificationLanguagePreferenceType ==
                    notificationLanguagePreferenceType) &&
            (identical(other.notificationLanguagePreferenceTypeDescription,
                    notificationLanguagePreferenceTypeDescription) ||
                other.notificationLanguagePreferenceTypeDescription ==
                    notificationLanguagePreferenceTypeDescription) &&
            (identical(other.notificationLanguagePreference,
                    notificationLanguagePreference) ||
                other.notificationLanguagePreference ==
                    notificationLanguagePreference) &&
            (identical(other.primarySite, primarySite) ||
                other.primarySite == primarySite) &&
            const DeepCollectionEquality()
                .equals(other._associatedSites, _associatedSites) &&
            (identical(other.everywareSettings, everywareSettings) ||
                other.everywareSettings == everywareSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      residentUserId,
      username,
      residentUserEmail,
      companyId,
      companyNumber,
      propertyId,
      propertyNumber,
      notificationLanguagePreferenceType,
      notificationLanguagePreferenceTypeDescription,
      notificationLanguagePreference,
      primarySite,
      const DeepCollectionEquality().hash(_associatedSites),
      everywareSettings);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
          {final String residentUserId,
          final String username,
          final String residentUserEmail,
          final String companyId,
          final int companyNumber,
          final String propertyId,
          final int propertyNumber,
          final int notificationLanguagePreferenceType,
          final String notificationLanguagePreferenceTypeDescription,
          final Language notificationLanguagePreference,
          required final PrimarySiteModel primarySite,
          final List<AssociatedSitesModel> associatedSites,
          required final EverywareSettingsModel everywareSettings}) =
      _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get residentUserId;
  @override
  String get username;
  @override
  String get residentUserEmail;
  @override
  String get companyId;
  @override
  int get companyNumber;
  @override
  String get propertyId;
  @override
  int get propertyNumber;
  @override
  int get notificationLanguagePreferenceType;
  @override
  String get notificationLanguagePreferenceTypeDescription;
  @override
  Language get notificationLanguagePreference;
  @override
  PrimarySiteModel get primarySite;
  @override
  List<AssociatedSitesModel> get associatedSites;
  @override
  EverywareSettingsModel get everywareSettings;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrimarySiteModel _$PrimarySiteModelFromJson(Map<String, dynamic> json) {
  return _PrimarySiteModel.fromJson(json);
}

/// @nodoc
mixin _$PrimarySiteModel {
  String get address1 => throw _privateConstructorUsedError;
  String get address2 => throw _privateConstructorUsedError;
  String get siteName => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;
  String get propertyName => throw _privateConstructorUsedError;
  String get propertyId => throw _privateConstructorUsedError;
  bool get isBilling => throw _privateConstructorUsedError;
  bool get isEverywareCashPayConfigured => throw _privateConstructorUsedError;
  ResidentModel get resident => throw _privateConstructorUsedError;
  ResidentBalanceModel get residentBalance =>
      throw _privateConstructorUsedError;
  PropertySettingsModel get propertySettings =>
      throw _privateConstructorUsedError;
  BillingSettingsModel get billingSettings =>
      throw _privateConstructorUsedError;

  /// Serializes this PrimarySiteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrimarySiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrimarySiteModelCopyWith<PrimarySiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimarySiteModelCopyWith<$Res> {
  factory $PrimarySiteModelCopyWith(
          PrimarySiteModel value, $Res Function(PrimarySiteModel) then) =
      _$PrimarySiteModelCopyWithImpl<$Res, PrimarySiteModel>;
  @useResult
  $Res call(
      {String address1,
      String address2,
      String siteName,
      String city,
      String state,
      String zipCode,
      String propertyName,
      String propertyId,
      bool isBilling,
      bool isEverywareCashPayConfigured,
      ResidentModel resident,
      ResidentBalanceModel residentBalance,
      PropertySettingsModel propertySettings,
      BillingSettingsModel billingSettings});

  $ResidentModelCopyWith<$Res> get resident;
  $ResidentBalanceModelCopyWith<$Res> get residentBalance;
  $PropertySettingsModelCopyWith<$Res> get propertySettings;
  $BillingSettingsModelCopyWith<$Res> get billingSettings;
}

/// @nodoc
class _$PrimarySiteModelCopyWithImpl<$Res, $Val extends PrimarySiteModel>
    implements $PrimarySiteModelCopyWith<$Res> {
  _$PrimarySiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrimarySiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = null,
    Object? address2 = null,
    Object? siteName = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? propertyName = null,
    Object? propertyId = null,
    Object? isBilling = null,
    Object? isEverywareCashPayConfigured = null,
    Object? resident = null,
    Object? residentBalance = null,
    Object? propertySettings = null,
    Object? billingSettings = null,
  }) {
    return _then(_value.copyWith(
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      propertyName: null == propertyName
          ? _value.propertyName
          : propertyName // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      isBilling: null == isBilling
          ? _value.isBilling
          : isBilling // ignore: cast_nullable_to_non_nullable
              as bool,
      isEverywareCashPayConfigured: null == isEverywareCashPayConfigured
          ? _value.isEverywareCashPayConfigured
          : isEverywareCashPayConfigured // ignore: cast_nullable_to_non_nullable
              as bool,
      resident: null == resident
          ? _value.resident
          : resident // ignore: cast_nullable_to_non_nullable
              as ResidentModel,
      residentBalance: null == residentBalance
          ? _value.residentBalance
          : residentBalance // ignore: cast_nullable_to_non_nullable
              as ResidentBalanceModel,
      propertySettings: null == propertySettings
          ? _value.propertySettings
          : propertySettings // ignore: cast_nullable_to_non_nullable
              as PropertySettingsModel,
      billingSettings: null == billingSettings
          ? _value.billingSettings
          : billingSettings // ignore: cast_nullable_to_non_nullable
              as BillingSettingsModel,
    ) as $Val);
  }

  /// Create a copy of PrimarySiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResidentModelCopyWith<$Res> get resident {
    return $ResidentModelCopyWith<$Res>(_value.resident, (value) {
      return _then(_value.copyWith(resident: value) as $Val);
    });
  }

  /// Create a copy of PrimarySiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResidentBalanceModelCopyWith<$Res> get residentBalance {
    return $ResidentBalanceModelCopyWith<$Res>(_value.residentBalance, (value) {
      return _then(_value.copyWith(residentBalance: value) as $Val);
    });
  }

  /// Create a copy of PrimarySiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertySettingsModelCopyWith<$Res> get propertySettings {
    return $PropertySettingsModelCopyWith<$Res>(_value.propertySettings,
        (value) {
      return _then(_value.copyWith(propertySettings: value) as $Val);
    });
  }

  /// Create a copy of PrimarySiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillingSettingsModelCopyWith<$Res> get billingSettings {
    return $BillingSettingsModelCopyWith<$Res>(_value.billingSettings, (value) {
      return _then(_value.copyWith(billingSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrimarySiteModelImplCopyWith<$Res>
    implements $PrimarySiteModelCopyWith<$Res> {
  factory _$$PrimarySiteModelImplCopyWith(_$PrimarySiteModelImpl value,
          $Res Function(_$PrimarySiteModelImpl) then) =
      __$$PrimarySiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address1,
      String address2,
      String siteName,
      String city,
      String state,
      String zipCode,
      String propertyName,
      String propertyId,
      bool isBilling,
      bool isEverywareCashPayConfigured,
      ResidentModel resident,
      ResidentBalanceModel residentBalance,
      PropertySettingsModel propertySettings,
      BillingSettingsModel billingSettings});

  @override
  $ResidentModelCopyWith<$Res> get resident;
  @override
  $ResidentBalanceModelCopyWith<$Res> get residentBalance;
  @override
  $PropertySettingsModelCopyWith<$Res> get propertySettings;
  @override
  $BillingSettingsModelCopyWith<$Res> get billingSettings;
}

/// @nodoc
class __$$PrimarySiteModelImplCopyWithImpl<$Res>
    extends _$PrimarySiteModelCopyWithImpl<$Res, _$PrimarySiteModelImpl>
    implements _$$PrimarySiteModelImplCopyWith<$Res> {
  __$$PrimarySiteModelImplCopyWithImpl(_$PrimarySiteModelImpl _value,
      $Res Function(_$PrimarySiteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrimarySiteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = null,
    Object? address2 = null,
    Object? siteName = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? propertyName = null,
    Object? propertyId = null,
    Object? isBilling = null,
    Object? isEverywareCashPayConfigured = null,
    Object? resident = null,
    Object? residentBalance = null,
    Object? propertySettings = null,
    Object? billingSettings = null,
  }) {
    return _then(_$PrimarySiteModelImpl(
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      propertyName: null == propertyName
          ? _value.propertyName
          : propertyName // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      isBilling: null == isBilling
          ? _value.isBilling
          : isBilling // ignore: cast_nullable_to_non_nullable
              as bool,
      isEverywareCashPayConfigured: null == isEverywareCashPayConfigured
          ? _value.isEverywareCashPayConfigured
          : isEverywareCashPayConfigured // ignore: cast_nullable_to_non_nullable
              as bool,
      resident: null == resident
          ? _value.resident
          : resident // ignore: cast_nullable_to_non_nullable
              as ResidentModel,
      residentBalance: null == residentBalance
          ? _value.residentBalance
          : residentBalance // ignore: cast_nullable_to_non_nullable
              as ResidentBalanceModel,
      propertySettings: null == propertySettings
          ? _value.propertySettings
          : propertySettings // ignore: cast_nullable_to_non_nullable
              as PropertySettingsModel,
      billingSettings: null == billingSettings
          ? _value.billingSettings
          : billingSettings // ignore: cast_nullable_to_non_nullable
              as BillingSettingsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrimarySiteModelImpl implements _PrimarySiteModel {
  const _$PrimarySiteModelImpl(
      {this.address1 = '',
      this.address2 = '',
      this.siteName = '',
      this.city = '',
      this.state = '',
      this.zipCode = '',
      this.propertyName = '',
      this.propertyId = '',
      this.isBilling = true,
      this.isEverywareCashPayConfigured = false,
      this.resident = const ResidentModel(),
      required this.residentBalance,
      this.propertySettings = const PropertySettingsModel(),
      this.billingSettings = const BillingSettingsModel()});

  factory _$PrimarySiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrimarySiteModelImplFromJson(json);

  @override
  @JsonKey()
  final String address1;
  @override
  @JsonKey()
  final String address2;
  @override
  @JsonKey()
  final String siteName;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String state;
  @override
  @JsonKey()
  final String zipCode;
  @override
  @JsonKey()
  final String propertyName;
  @override
  @JsonKey()
  final String propertyId;
  @override
  @JsonKey()
  final bool isBilling;
  @override
  @JsonKey()
  final bool isEverywareCashPayConfigured;
  @override
  @JsonKey()
  final ResidentModel resident;
  @override
  final ResidentBalanceModel residentBalance;
  @override
  @JsonKey()
  final PropertySettingsModel propertySettings;
  @override
  @JsonKey()
  final BillingSettingsModel billingSettings;

  @override
  String toString() {
    return 'PrimarySiteModel(address1: $address1, address2: $address2, siteName: $siteName, city: $city, state: $state, zipCode: $zipCode, propertyName: $propertyName, propertyId: $propertyId, isBilling: $isBilling, isEverywareCashPayConfigured: $isEverywareCashPayConfigured, resident: $resident, residentBalance: $residentBalance, propertySettings: $propertySettings, billingSettings: $billingSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimarySiteModelImpl &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.siteName, siteName) ||
                other.siteName == siteName) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.propertyName, propertyName) ||
                other.propertyName == propertyName) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.isBilling, isBilling) ||
                other.isBilling == isBilling) &&
            (identical(other.isEverywareCashPayConfigured,
                    isEverywareCashPayConfigured) ||
                other.isEverywareCashPayConfigured ==
                    isEverywareCashPayConfigured) &&
            (identical(other.resident, resident) ||
                other.resident == resident) &&
            (identical(other.residentBalance, residentBalance) ||
                other.residentBalance == residentBalance) &&
            (identical(other.propertySettings, propertySettings) ||
                other.propertySettings == propertySettings) &&
            (identical(other.billingSettings, billingSettings) ||
                other.billingSettings == billingSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address1,
      address2,
      siteName,
      city,
      state,
      zipCode,
      propertyName,
      propertyId,
      isBilling,
      isEverywareCashPayConfigured,
      resident,
      residentBalance,
      propertySettings,
      billingSettings);

  /// Create a copy of PrimarySiteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimarySiteModelImplCopyWith<_$PrimarySiteModelImpl> get copyWith =>
      __$$PrimarySiteModelImplCopyWithImpl<_$PrimarySiteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrimarySiteModelImplToJson(
      this,
    );
  }
}

abstract class _PrimarySiteModel implements PrimarySiteModel {
  const factory _PrimarySiteModel(
      {final String address1,
      final String address2,
      final String siteName,
      final String city,
      final String state,
      final String zipCode,
      final String propertyName,
      final String propertyId,
      final bool isBilling,
      final bool isEverywareCashPayConfigured,
      final ResidentModel resident,
      required final ResidentBalanceModel residentBalance,
      final PropertySettingsModel propertySettings,
      final BillingSettingsModel billingSettings}) = _$PrimarySiteModelImpl;

  factory _PrimarySiteModel.fromJson(Map<String, dynamic> json) =
      _$PrimarySiteModelImpl.fromJson;

  @override
  String get address1;
  @override
  String get address2;
  @override
  String get siteName;
  @override
  String get city;
  @override
  String get state;
  @override
  String get zipCode;
  @override
  String get propertyName;
  @override
  String get propertyId;
  @override
  bool get isBilling;
  @override
  bool get isEverywareCashPayConfigured;
  @override
  ResidentModel get resident;
  @override
  ResidentBalanceModel get residentBalance;
  @override
  PropertySettingsModel get propertySettings;
  @override
  BillingSettingsModel get billingSettings;

  /// Create a copy of PrimarySiteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrimarySiteModelImplCopyWith<_$PrimarySiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResidentModel _$ResidentModelFromJson(Map<String, dynamic> json) {
  return _ResidentModel.fromJson(json);
}

/// @nodoc
mixin _$ResidentModel {
  String get residentId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get homePhone => throw _privateConstructorUsedError;
  String get cellPhone => throw _privateConstructorUsedError;
  String get residentEmail => throw _privateConstructorUsedError;
  String get billingAddress => throw _privateConstructorUsedError;
  String get billingCity => throw _privateConstructorUsedError;
  String get billingState => throw _privateConstructorUsedError;
  String get billingPostalCode => throw _privateConstructorUsedError;
  String get billingCountry => throw _privateConstructorUsedError;
  bool get useBillingAddress => throw _privateConstructorUsedError;
  bool get isOnStopPay => throw _privateConstructorUsedError;
  bool get isCashPayConfigured => throw _privateConstructorUsedError;
  CashPaySettingsModel get cashPaySettings =>
      throw _privateConstructorUsedError;

  /// Serializes this ResidentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResidentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResidentModelCopyWith<ResidentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidentModelCopyWith<$Res> {
  factory $ResidentModelCopyWith(
          ResidentModel value, $Res Function(ResidentModel) then) =
      _$ResidentModelCopyWithImpl<$Res, ResidentModel>;
  @useResult
  $Res call(
      {String residentId,
      String firstName,
      String lastName,
      String homePhone,
      String cellPhone,
      String residentEmail,
      String billingAddress,
      String billingCity,
      String billingState,
      String billingPostalCode,
      String billingCountry,
      bool useBillingAddress,
      bool isOnStopPay,
      bool isCashPayConfigured,
      CashPaySettingsModel cashPaySettings});

  $CashPaySettingsModelCopyWith<$Res> get cashPaySettings;
}

/// @nodoc
class _$ResidentModelCopyWithImpl<$Res, $Val extends ResidentModel>
    implements $ResidentModelCopyWith<$Res> {
  _$ResidentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResidentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? homePhone = null,
    Object? cellPhone = null,
    Object? residentEmail = null,
    Object? billingAddress = null,
    Object? billingCity = null,
    Object? billingState = null,
    Object? billingPostalCode = null,
    Object? billingCountry = null,
    Object? useBillingAddress = null,
    Object? isOnStopPay = null,
    Object? isCashPayConfigured = null,
    Object? cashPaySettings = null,
  }) {
    return _then(_value.copyWith(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      homePhone: null == homePhone
          ? _value.homePhone
          : homePhone // ignore: cast_nullable_to_non_nullable
              as String,
      cellPhone: null == cellPhone
          ? _value.cellPhone
          : cellPhone // ignore: cast_nullable_to_non_nullable
              as String,
      residentEmail: null == residentEmail
          ? _value.residentEmail
          : residentEmail // ignore: cast_nullable_to_non_nullable
              as String,
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
      billingCountry: null == billingCountry
          ? _value.billingCountry
          : billingCountry // ignore: cast_nullable_to_non_nullable
              as String,
      useBillingAddress: null == useBillingAddress
          ? _value.useBillingAddress
          : useBillingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnStopPay: null == isOnStopPay
          ? _value.isOnStopPay
          : isOnStopPay // ignore: cast_nullable_to_non_nullable
              as bool,
      isCashPayConfigured: null == isCashPayConfigured
          ? _value.isCashPayConfigured
          : isCashPayConfigured // ignore: cast_nullable_to_non_nullable
              as bool,
      cashPaySettings: null == cashPaySettings
          ? _value.cashPaySettings
          : cashPaySettings // ignore: cast_nullable_to_non_nullable
              as CashPaySettingsModel,
    ) as $Val);
  }

  /// Create a copy of ResidentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CashPaySettingsModelCopyWith<$Res> get cashPaySettings {
    return $CashPaySettingsModelCopyWith<$Res>(_value.cashPaySettings, (value) {
      return _then(_value.copyWith(cashPaySettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResidentModelImplCopyWith<$Res>
    implements $ResidentModelCopyWith<$Res> {
  factory _$$ResidentModelImplCopyWith(
          _$ResidentModelImpl value, $Res Function(_$ResidentModelImpl) then) =
      __$$ResidentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String residentId,
      String firstName,
      String lastName,
      String homePhone,
      String cellPhone,
      String residentEmail,
      String billingAddress,
      String billingCity,
      String billingState,
      String billingPostalCode,
      String billingCountry,
      bool useBillingAddress,
      bool isOnStopPay,
      bool isCashPayConfigured,
      CashPaySettingsModel cashPaySettings});

  @override
  $CashPaySettingsModelCopyWith<$Res> get cashPaySettings;
}

/// @nodoc
class __$$ResidentModelImplCopyWithImpl<$Res>
    extends _$ResidentModelCopyWithImpl<$Res, _$ResidentModelImpl>
    implements _$$ResidentModelImplCopyWith<$Res> {
  __$$ResidentModelImplCopyWithImpl(
      _$ResidentModelImpl _value, $Res Function(_$ResidentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResidentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? homePhone = null,
    Object? cellPhone = null,
    Object? residentEmail = null,
    Object? billingAddress = null,
    Object? billingCity = null,
    Object? billingState = null,
    Object? billingPostalCode = null,
    Object? billingCountry = null,
    Object? useBillingAddress = null,
    Object? isOnStopPay = null,
    Object? isCashPayConfigured = null,
    Object? cashPaySettings = null,
  }) {
    return _then(_$ResidentModelImpl(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      homePhone: null == homePhone
          ? _value.homePhone
          : homePhone // ignore: cast_nullable_to_non_nullable
              as String,
      cellPhone: null == cellPhone
          ? _value.cellPhone
          : cellPhone // ignore: cast_nullable_to_non_nullable
              as String,
      residentEmail: null == residentEmail
          ? _value.residentEmail
          : residentEmail // ignore: cast_nullable_to_non_nullable
              as String,
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
      billingCountry: null == billingCountry
          ? _value.billingCountry
          : billingCountry // ignore: cast_nullable_to_non_nullable
              as String,
      useBillingAddress: null == useBillingAddress
          ? _value.useBillingAddress
          : useBillingAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnStopPay: null == isOnStopPay
          ? _value.isOnStopPay
          : isOnStopPay // ignore: cast_nullable_to_non_nullable
              as bool,
      isCashPayConfigured: null == isCashPayConfigured
          ? _value.isCashPayConfigured
          : isCashPayConfigured // ignore: cast_nullable_to_non_nullable
              as bool,
      cashPaySettings: null == cashPaySettings
          ? _value.cashPaySettings
          : cashPaySettings // ignore: cast_nullable_to_non_nullable
              as CashPaySettingsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResidentModelImpl implements _ResidentModel {
  const _$ResidentModelImpl(
      {this.residentId = '',
      this.firstName = '',
      this.lastName = '',
      this.homePhone = '',
      this.cellPhone = '',
      this.residentEmail = '',
      this.billingAddress = '',
      this.billingCity = '',
      this.billingState = '',
      this.billingPostalCode = '',
      this.billingCountry = '',
      this.useBillingAddress = false,
      this.isOnStopPay = false,
      this.isCashPayConfigured = false,
      this.cashPaySettings = const CashPaySettingsModel()});

  factory _$ResidentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResidentModelImplFromJson(json);

  @override
  @JsonKey()
  final String residentId;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String homePhone;
  @override
  @JsonKey()
  final String cellPhone;
  @override
  @JsonKey()
  final String residentEmail;
  @override
  @JsonKey()
  final String billingAddress;
  @override
  @JsonKey()
  final String billingCity;
  @override
  @JsonKey()
  final String billingState;
  @override
  @JsonKey()
  final String billingPostalCode;
  @override
  @JsonKey()
  final String billingCountry;
  @override
  @JsonKey()
  final bool useBillingAddress;
  @override
  @JsonKey()
  final bool isOnStopPay;
  @override
  @JsonKey()
  final bool isCashPayConfigured;
  @override
  @JsonKey()
  final CashPaySettingsModel cashPaySettings;

  @override
  String toString() {
    return 'ResidentModel(residentId: $residentId, firstName: $firstName, lastName: $lastName, homePhone: $homePhone, cellPhone: $cellPhone, residentEmail: $residentEmail, billingAddress: $billingAddress, billingCity: $billingCity, billingState: $billingState, billingPostalCode: $billingPostalCode, billingCountry: $billingCountry, useBillingAddress: $useBillingAddress, isOnStopPay: $isOnStopPay, isCashPayConfigured: $isCashPayConfigured, cashPaySettings: $cashPaySettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResidentModelImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.homePhone, homePhone) ||
                other.homePhone == homePhone) &&
            (identical(other.cellPhone, cellPhone) ||
                other.cellPhone == cellPhone) &&
            (identical(other.residentEmail, residentEmail) ||
                other.residentEmail == residentEmail) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.billingCity, billingCity) ||
                other.billingCity == billingCity) &&
            (identical(other.billingState, billingState) ||
                other.billingState == billingState) &&
            (identical(other.billingPostalCode, billingPostalCode) ||
                other.billingPostalCode == billingPostalCode) &&
            (identical(other.billingCountry, billingCountry) ||
                other.billingCountry == billingCountry) &&
            (identical(other.useBillingAddress, useBillingAddress) ||
                other.useBillingAddress == useBillingAddress) &&
            (identical(other.isOnStopPay, isOnStopPay) ||
                other.isOnStopPay == isOnStopPay) &&
            (identical(other.isCashPayConfigured, isCashPayConfigured) ||
                other.isCashPayConfigured == isCashPayConfigured) &&
            (identical(other.cashPaySettings, cashPaySettings) ||
                other.cashPaySettings == cashPaySettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      residentId,
      firstName,
      lastName,
      homePhone,
      cellPhone,
      residentEmail,
      billingAddress,
      billingCity,
      billingState,
      billingPostalCode,
      billingCountry,
      useBillingAddress,
      isOnStopPay,
      isCashPayConfigured,
      cashPaySettings);

  /// Create a copy of ResidentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResidentModelImplCopyWith<_$ResidentModelImpl> get copyWith =>
      __$$ResidentModelImplCopyWithImpl<_$ResidentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResidentModelImplToJson(
      this,
    );
  }
}

abstract class _ResidentModel implements ResidentModel {
  const factory _ResidentModel(
      {final String residentId,
      final String firstName,
      final String lastName,
      final String homePhone,
      final String cellPhone,
      final String residentEmail,
      final String billingAddress,
      final String billingCity,
      final String billingState,
      final String billingPostalCode,
      final String billingCountry,
      final bool useBillingAddress,
      final bool isOnStopPay,
      final bool isCashPayConfigured,
      final CashPaySettingsModel cashPaySettings}) = _$ResidentModelImpl;

  factory _ResidentModel.fromJson(Map<String, dynamic> json) =
      _$ResidentModelImpl.fromJson;

  @override
  String get residentId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get homePhone;
  @override
  String get cellPhone;
  @override
  String get residentEmail;
  @override
  String get billingAddress;
  @override
  String get billingCity;
  @override
  String get billingState;
  @override
  String get billingPostalCode;
  @override
  String get billingCountry;
  @override
  bool get useBillingAddress;
  @override
  bool get isOnStopPay;
  @override
  bool get isCashPayConfigured;
  @override
  CashPaySettingsModel get cashPaySettings;

  /// Create a copy of ResidentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResidentModelImplCopyWith<_$ResidentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CashPaySettingsModel _$CashPaySettingsModelFromJson(Map<String, dynamic> json) {
  return _CashPaySettingsModel.fromJson(json);
}

/// @nodoc
mixin _$CashPaySettingsModel {
  String get westernUnionPosName => throw _privateConstructorUsedError;
  String get westernUnionCodeCity => throw _privateConstructorUsedError;
  String get westernUnionAccountNumber => throw _privateConstructorUsedError;
  int get payLeaseCardNumber => throw _privateConstructorUsedError;

  /// Serializes this CashPaySettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CashPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CashPaySettingsModelCopyWith<CashPaySettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashPaySettingsModelCopyWith<$Res> {
  factory $CashPaySettingsModelCopyWith(CashPaySettingsModel value,
          $Res Function(CashPaySettingsModel) then) =
      _$CashPaySettingsModelCopyWithImpl<$Res, CashPaySettingsModel>;
  @useResult
  $Res call(
      {String westernUnionPosName,
      String westernUnionCodeCity,
      String westernUnionAccountNumber,
      int payLeaseCardNumber});
}

/// @nodoc
class _$CashPaySettingsModelCopyWithImpl<$Res,
        $Val extends CashPaySettingsModel>
    implements $CashPaySettingsModelCopyWith<$Res> {
  _$CashPaySettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CashPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? westernUnionPosName = null,
    Object? westernUnionCodeCity = null,
    Object? westernUnionAccountNumber = null,
    Object? payLeaseCardNumber = null,
  }) {
    return _then(_value.copyWith(
      westernUnionPosName: null == westernUnionPosName
          ? _value.westernUnionPosName
          : westernUnionPosName // ignore: cast_nullable_to_non_nullable
              as String,
      westernUnionCodeCity: null == westernUnionCodeCity
          ? _value.westernUnionCodeCity
          : westernUnionCodeCity // ignore: cast_nullable_to_non_nullable
              as String,
      westernUnionAccountNumber: null == westernUnionAccountNumber
          ? _value.westernUnionAccountNumber
          : westernUnionAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      payLeaseCardNumber: null == payLeaseCardNumber
          ? _value.payLeaseCardNumber
          : payLeaseCardNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CashPaySettingsModelImplCopyWith<$Res>
    implements $CashPaySettingsModelCopyWith<$Res> {
  factory _$$CashPaySettingsModelImplCopyWith(_$CashPaySettingsModelImpl value,
          $Res Function(_$CashPaySettingsModelImpl) then) =
      __$$CashPaySettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String westernUnionPosName,
      String westernUnionCodeCity,
      String westernUnionAccountNumber,
      int payLeaseCardNumber});
}

/// @nodoc
class __$$CashPaySettingsModelImplCopyWithImpl<$Res>
    extends _$CashPaySettingsModelCopyWithImpl<$Res, _$CashPaySettingsModelImpl>
    implements _$$CashPaySettingsModelImplCopyWith<$Res> {
  __$$CashPaySettingsModelImplCopyWithImpl(_$CashPaySettingsModelImpl _value,
      $Res Function(_$CashPaySettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CashPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? westernUnionPosName = null,
    Object? westernUnionCodeCity = null,
    Object? westernUnionAccountNumber = null,
    Object? payLeaseCardNumber = null,
  }) {
    return _then(_$CashPaySettingsModelImpl(
      westernUnionPosName: null == westernUnionPosName
          ? _value.westernUnionPosName
          : westernUnionPosName // ignore: cast_nullable_to_non_nullable
              as String,
      westernUnionCodeCity: null == westernUnionCodeCity
          ? _value.westernUnionCodeCity
          : westernUnionCodeCity // ignore: cast_nullable_to_non_nullable
              as String,
      westernUnionAccountNumber: null == westernUnionAccountNumber
          ? _value.westernUnionAccountNumber
          : westernUnionAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      payLeaseCardNumber: null == payLeaseCardNumber
          ? _value.payLeaseCardNumber
          : payLeaseCardNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CashPaySettingsModelImpl implements _CashPaySettingsModel {
  const _$CashPaySettingsModelImpl(
      {this.westernUnionPosName = '',
      this.westernUnionCodeCity = '',
      this.westernUnionAccountNumber = '',
      this.payLeaseCardNumber = 0});

  factory _$CashPaySettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CashPaySettingsModelImplFromJson(json);

  @override
  @JsonKey()
  final String westernUnionPosName;
  @override
  @JsonKey()
  final String westernUnionCodeCity;
  @override
  @JsonKey()
  final String westernUnionAccountNumber;
  @override
  @JsonKey()
  final int payLeaseCardNumber;

  @override
  String toString() {
    return 'CashPaySettingsModel(westernUnionPosName: $westernUnionPosName, westernUnionCodeCity: $westernUnionCodeCity, westernUnionAccountNumber: $westernUnionAccountNumber, payLeaseCardNumber: $payLeaseCardNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashPaySettingsModelImpl &&
            (identical(other.westernUnionPosName, westernUnionPosName) ||
                other.westernUnionPosName == westernUnionPosName) &&
            (identical(other.westernUnionCodeCity, westernUnionCodeCity) ||
                other.westernUnionCodeCity == westernUnionCodeCity) &&
            (identical(other.westernUnionAccountNumber,
                    westernUnionAccountNumber) ||
                other.westernUnionAccountNumber == westernUnionAccountNumber) &&
            (identical(other.payLeaseCardNumber, payLeaseCardNumber) ||
                other.payLeaseCardNumber == payLeaseCardNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, westernUnionPosName,
      westernUnionCodeCity, westernUnionAccountNumber, payLeaseCardNumber);

  /// Create a copy of CashPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CashPaySettingsModelImplCopyWith<_$CashPaySettingsModelImpl>
      get copyWith =>
          __$$CashPaySettingsModelImplCopyWithImpl<_$CashPaySettingsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CashPaySettingsModelImplToJson(
      this,
    );
  }
}

abstract class _CashPaySettingsModel implements CashPaySettingsModel {
  const factory _CashPaySettingsModel(
      {final String westernUnionPosName,
      final String westernUnionCodeCity,
      final String westernUnionAccountNumber,
      final int payLeaseCardNumber}) = _$CashPaySettingsModelImpl;

  factory _CashPaySettingsModel.fromJson(Map<String, dynamic> json) =
      _$CashPaySettingsModelImpl.fromJson;

  @override
  String get westernUnionPosName;
  @override
  String get westernUnionCodeCity;
  @override
  String get westernUnionAccountNumber;
  @override
  int get payLeaseCardNumber;

  /// Create a copy of CashPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CashPaySettingsModelImplCopyWith<_$CashPaySettingsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResidentBalanceModel _$ResidentBalanceModelFromJson(Map<String, dynamic> json) {
  return _ResidentBalanceModel.fromJson(json);
}

/// @nodoc
mixin _$ResidentBalanceModel {
  double get billedBalance => throw _privateConstructorUsedError;
  double get currentMonthBalance => throw _privateConstructorUsedError;
  double get totalBalance => throw _privateConstructorUsedError;
  double get excludedChargesCurrentMonth => throw _privateConstructorUsedError;
  double get paymentAgreementCurrentMonth => throw _privateConstructorUsedError;
  int get rentDueDay => throw _privateConstructorUsedError;
  String get rentDueDate => throw _privateConstructorUsedError;
  List<LoanModel> get loans => throw _privateConstructorUsedError;
  bool get isEftConfigured => throw _privateConstructorUsedError;
  AutoPaySettingsModel get autoPaySettings =>
      throw _privateConstructorUsedError;

  /// Serializes this ResidentBalanceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResidentBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResidentBalanceModelCopyWith<ResidentBalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidentBalanceModelCopyWith<$Res> {
  factory $ResidentBalanceModelCopyWith(ResidentBalanceModel value,
          $Res Function(ResidentBalanceModel) then) =
      _$ResidentBalanceModelCopyWithImpl<$Res, ResidentBalanceModel>;
  @useResult
  $Res call(
      {double billedBalance,
      double currentMonthBalance,
      double totalBalance,
      double excludedChargesCurrentMonth,
      double paymentAgreementCurrentMonth,
      int rentDueDay,
      String rentDueDate,
      List<LoanModel> loans,
      bool isEftConfigured,
      AutoPaySettingsModel autoPaySettings});

  $AutoPaySettingsModelCopyWith<$Res> get autoPaySettings;
}

/// @nodoc
class _$ResidentBalanceModelCopyWithImpl<$Res,
        $Val extends ResidentBalanceModel>
    implements $ResidentBalanceModelCopyWith<$Res> {
  _$ResidentBalanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResidentBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billedBalance = null,
    Object? currentMonthBalance = null,
    Object? totalBalance = null,
    Object? excludedChargesCurrentMonth = null,
    Object? paymentAgreementCurrentMonth = null,
    Object? rentDueDay = null,
    Object? rentDueDate = null,
    Object? loans = null,
    Object? isEftConfigured = null,
    Object? autoPaySettings = null,
  }) {
    return _then(_value.copyWith(
      billedBalance: null == billedBalance
          ? _value.billedBalance
          : billedBalance // ignore: cast_nullable_to_non_nullable
              as double,
      currentMonthBalance: null == currentMonthBalance
          ? _value.currentMonthBalance
          : currentMonthBalance // ignore: cast_nullable_to_non_nullable
              as double,
      totalBalance: null == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double,
      excludedChargesCurrentMonth: null == excludedChargesCurrentMonth
          ? _value.excludedChargesCurrentMonth
          : excludedChargesCurrentMonth // ignore: cast_nullable_to_non_nullable
              as double,
      paymentAgreementCurrentMonth: null == paymentAgreementCurrentMonth
          ? _value.paymentAgreementCurrentMonth
          : paymentAgreementCurrentMonth // ignore: cast_nullable_to_non_nullable
              as double,
      rentDueDay: null == rentDueDay
          ? _value.rentDueDay
          : rentDueDay // ignore: cast_nullable_to_non_nullable
              as int,
      rentDueDate: null == rentDueDate
          ? _value.rentDueDate
          : rentDueDate // ignore: cast_nullable_to_non_nullable
              as String,
      loans: null == loans
          ? _value.loans
          : loans // ignore: cast_nullable_to_non_nullable
              as List<LoanModel>,
      isEftConfigured: null == isEftConfigured
          ? _value.isEftConfigured
          : isEftConfigured // ignore: cast_nullable_to_non_nullable
              as bool,
      autoPaySettings: null == autoPaySettings
          ? _value.autoPaySettings
          : autoPaySettings // ignore: cast_nullable_to_non_nullable
              as AutoPaySettingsModel,
    ) as $Val);
  }

  /// Create a copy of ResidentBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoPaySettingsModelCopyWith<$Res> get autoPaySettings {
    return $AutoPaySettingsModelCopyWith<$Res>(_value.autoPaySettings, (value) {
      return _then(_value.copyWith(autoPaySettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResidentBalanceModelImplCopyWith<$Res>
    implements $ResidentBalanceModelCopyWith<$Res> {
  factory _$$ResidentBalanceModelImplCopyWith(_$ResidentBalanceModelImpl value,
          $Res Function(_$ResidentBalanceModelImpl) then) =
      __$$ResidentBalanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double billedBalance,
      double currentMonthBalance,
      double totalBalance,
      double excludedChargesCurrentMonth,
      double paymentAgreementCurrentMonth,
      int rentDueDay,
      String rentDueDate,
      List<LoanModel> loans,
      bool isEftConfigured,
      AutoPaySettingsModel autoPaySettings});

  @override
  $AutoPaySettingsModelCopyWith<$Res> get autoPaySettings;
}

/// @nodoc
class __$$ResidentBalanceModelImplCopyWithImpl<$Res>
    extends _$ResidentBalanceModelCopyWithImpl<$Res, _$ResidentBalanceModelImpl>
    implements _$$ResidentBalanceModelImplCopyWith<$Res> {
  __$$ResidentBalanceModelImplCopyWithImpl(_$ResidentBalanceModelImpl _value,
      $Res Function(_$ResidentBalanceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResidentBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billedBalance = null,
    Object? currentMonthBalance = null,
    Object? totalBalance = null,
    Object? excludedChargesCurrentMonth = null,
    Object? paymentAgreementCurrentMonth = null,
    Object? rentDueDay = null,
    Object? rentDueDate = null,
    Object? loans = null,
    Object? isEftConfigured = null,
    Object? autoPaySettings = null,
  }) {
    return _then(_$ResidentBalanceModelImpl(
      billedBalance: null == billedBalance
          ? _value.billedBalance
          : billedBalance // ignore: cast_nullable_to_non_nullable
              as double,
      currentMonthBalance: null == currentMonthBalance
          ? _value.currentMonthBalance
          : currentMonthBalance // ignore: cast_nullable_to_non_nullable
              as double,
      totalBalance: null == totalBalance
          ? _value.totalBalance
          : totalBalance // ignore: cast_nullable_to_non_nullable
              as double,
      excludedChargesCurrentMonth: null == excludedChargesCurrentMonth
          ? _value.excludedChargesCurrentMonth
          : excludedChargesCurrentMonth // ignore: cast_nullable_to_non_nullable
              as double,
      paymentAgreementCurrentMonth: null == paymentAgreementCurrentMonth
          ? _value.paymentAgreementCurrentMonth
          : paymentAgreementCurrentMonth // ignore: cast_nullable_to_non_nullable
              as double,
      rentDueDay: null == rentDueDay
          ? _value.rentDueDay
          : rentDueDay // ignore: cast_nullable_to_non_nullable
              as int,
      rentDueDate: null == rentDueDate
          ? _value.rentDueDate
          : rentDueDate // ignore: cast_nullable_to_non_nullable
              as String,
      loans: null == loans
          ? _value._loans
          : loans // ignore: cast_nullable_to_non_nullable
              as List<LoanModel>,
      isEftConfigured: null == isEftConfigured
          ? _value.isEftConfigured
          : isEftConfigured // ignore: cast_nullable_to_non_nullable
              as bool,
      autoPaySettings: null == autoPaySettings
          ? _value.autoPaySettings
          : autoPaySettings // ignore: cast_nullable_to_non_nullable
              as AutoPaySettingsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResidentBalanceModelImpl implements _ResidentBalanceModel {
  const _$ResidentBalanceModelImpl(
      {this.billedBalance = 0.0,
      this.currentMonthBalance = 0.0,
      this.totalBalance = 0.0,
      this.excludedChargesCurrentMonth = 0.0,
      this.paymentAgreementCurrentMonth = 0.0,
      this.rentDueDay = 1,
      this.rentDueDate = '',
      final List<LoanModel> loans = const <LoanModel>[],
      this.isEftConfigured = false,
      this.autoPaySettings = const AutoPaySettingsModel()})
      : _loans = loans;

  factory _$ResidentBalanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResidentBalanceModelImplFromJson(json);

  @override
  @JsonKey()
  final double billedBalance;
  @override
  @JsonKey()
  final double currentMonthBalance;
  @override
  @JsonKey()
  final double totalBalance;
  @override
  @JsonKey()
  final double excludedChargesCurrentMonth;
  @override
  @JsonKey()
  final double paymentAgreementCurrentMonth;
  @override
  @JsonKey()
  final int rentDueDay;
  @override
  @JsonKey()
  final String rentDueDate;
  final List<LoanModel> _loans;
  @override
  @JsonKey()
  List<LoanModel> get loans {
    if (_loans is EqualUnmodifiableListView) return _loans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loans);
  }

  @override
  @JsonKey()
  final bool isEftConfigured;
  @override
  @JsonKey()
  final AutoPaySettingsModel autoPaySettings;

  @override
  String toString() {
    return 'ResidentBalanceModel(billedBalance: $billedBalance, currentMonthBalance: $currentMonthBalance, totalBalance: $totalBalance, excludedChargesCurrentMonth: $excludedChargesCurrentMonth, paymentAgreementCurrentMonth: $paymentAgreementCurrentMonth, rentDueDay: $rentDueDay, rentDueDate: $rentDueDate, loans: $loans, isEftConfigured: $isEftConfigured, autoPaySettings: $autoPaySettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResidentBalanceModelImpl &&
            (identical(other.billedBalance, billedBalance) ||
                other.billedBalance == billedBalance) &&
            (identical(other.currentMonthBalance, currentMonthBalance) ||
                other.currentMonthBalance == currentMonthBalance) &&
            (identical(other.totalBalance, totalBalance) ||
                other.totalBalance == totalBalance) &&
            (identical(other.excludedChargesCurrentMonth,
                    excludedChargesCurrentMonth) ||
                other.excludedChargesCurrentMonth ==
                    excludedChargesCurrentMonth) &&
            (identical(other.paymentAgreementCurrentMonth,
                    paymentAgreementCurrentMonth) ||
                other.paymentAgreementCurrentMonth ==
                    paymentAgreementCurrentMonth) &&
            (identical(other.rentDueDay, rentDueDay) ||
                other.rentDueDay == rentDueDay) &&
            (identical(other.rentDueDate, rentDueDate) ||
                other.rentDueDate == rentDueDate) &&
            const DeepCollectionEquality().equals(other._loans, _loans) &&
            (identical(other.isEftConfigured, isEftConfigured) ||
                other.isEftConfigured == isEftConfigured) &&
            (identical(other.autoPaySettings, autoPaySettings) ||
                other.autoPaySettings == autoPaySettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      billedBalance,
      currentMonthBalance,
      totalBalance,
      excludedChargesCurrentMonth,
      paymentAgreementCurrentMonth,
      rentDueDay,
      rentDueDate,
      const DeepCollectionEquality().hash(_loans),
      isEftConfigured,
      autoPaySettings);

  /// Create a copy of ResidentBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResidentBalanceModelImplCopyWith<_$ResidentBalanceModelImpl>
      get copyWith =>
          __$$ResidentBalanceModelImplCopyWithImpl<_$ResidentBalanceModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResidentBalanceModelImplToJson(
      this,
    );
  }
}

abstract class _ResidentBalanceModel implements ResidentBalanceModel {
  const factory _ResidentBalanceModel(
      {final double billedBalance,
      final double currentMonthBalance,
      final double totalBalance,
      final double excludedChargesCurrentMonth,
      final double paymentAgreementCurrentMonth,
      final int rentDueDay,
      final String rentDueDate,
      final List<LoanModel> loans,
      final bool isEftConfigured,
      final AutoPaySettingsModel autoPaySettings}) = _$ResidentBalanceModelImpl;

  factory _ResidentBalanceModel.fromJson(Map<String, dynamic> json) =
      _$ResidentBalanceModelImpl.fromJson;

  @override
  double get billedBalance;
  @override
  double get currentMonthBalance;
  @override
  double get totalBalance;
  @override
  double get excludedChargesCurrentMonth;
  @override
  double get paymentAgreementCurrentMonth;
  @override
  int get rentDueDay;
  @override
  String get rentDueDate;
  @override
  List<LoanModel> get loans;
  @override
  bool get isEftConfigured;
  @override
  AutoPaySettingsModel get autoPaySettings;

  /// Create a copy of ResidentBalanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResidentBalanceModelImplCopyWith<_$ResidentBalanceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AutoPaySettingsModel _$AutoPaySettingsModelFromJson(Map<String, dynamic> json) {
  return _AutoPaySettingsModel.fromJson(json);
}

/// @nodoc
mixin _$AutoPaySettingsModel {
  bool get isActive => throw _privateConstructorUsedError;
  int? get autoPayDay => throw _privateConstructorUsedError;

  /// Serializes this AutoPaySettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutoPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoPaySettingsModelCopyWith<AutoPaySettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoPaySettingsModelCopyWith<$Res> {
  factory $AutoPaySettingsModelCopyWith(AutoPaySettingsModel value,
          $Res Function(AutoPaySettingsModel) then) =
      _$AutoPaySettingsModelCopyWithImpl<$Res, AutoPaySettingsModel>;
  @useResult
  $Res call({bool isActive, int? autoPayDay});
}

/// @nodoc
class _$AutoPaySettingsModelCopyWithImpl<$Res,
        $Val extends AutoPaySettingsModel>
    implements $AutoPaySettingsModelCopyWith<$Res> {
  _$AutoPaySettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? autoPayDay = freezed,
  }) {
    return _then(_value.copyWith(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      autoPayDay: freezed == autoPayDay
          ? _value.autoPayDay
          : autoPayDay // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutoPaySettingsModelImplCopyWith<$Res>
    implements $AutoPaySettingsModelCopyWith<$Res> {
  factory _$$AutoPaySettingsModelImplCopyWith(_$AutoPaySettingsModelImpl value,
          $Res Function(_$AutoPaySettingsModelImpl) then) =
      __$$AutoPaySettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isActive, int? autoPayDay});
}

/// @nodoc
class __$$AutoPaySettingsModelImplCopyWithImpl<$Res>
    extends _$AutoPaySettingsModelCopyWithImpl<$Res, _$AutoPaySettingsModelImpl>
    implements _$$AutoPaySettingsModelImplCopyWith<$Res> {
  __$$AutoPaySettingsModelImplCopyWithImpl(_$AutoPaySettingsModelImpl _value,
      $Res Function(_$AutoPaySettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? autoPayDay = freezed,
  }) {
    return _then(_$AutoPaySettingsModelImpl(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      autoPayDay: freezed == autoPayDay
          ? _value.autoPayDay
          : autoPayDay // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoPaySettingsModelImpl implements _AutoPaySettingsModel {
  const _$AutoPaySettingsModelImpl(
      {this.isActive = false, this.autoPayDay = null});

  factory _$AutoPaySettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoPaySettingsModelImplFromJson(json);

  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final int? autoPayDay;

  @override
  String toString() {
    return 'AutoPaySettingsModel(isActive: $isActive, autoPayDay: $autoPayDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoPaySettingsModelImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.autoPayDay, autoPayDay) ||
                other.autoPayDay == autoPayDay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isActive, autoPayDay);

  /// Create a copy of AutoPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoPaySettingsModelImplCopyWith<_$AutoPaySettingsModelImpl>
      get copyWith =>
          __$$AutoPaySettingsModelImplCopyWithImpl<_$AutoPaySettingsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoPaySettingsModelImplToJson(
      this,
    );
  }
}

abstract class _AutoPaySettingsModel implements AutoPaySettingsModel {
  const factory _AutoPaySettingsModel(
      {final bool isActive,
      final int? autoPayDay}) = _$AutoPaySettingsModelImpl;

  factory _AutoPaySettingsModel.fromJson(Map<String, dynamic> json) =
      _$AutoPaySettingsModelImpl.fromJson;

  @override
  bool get isActive;
  @override
  int? get autoPayDay;

  /// Create a copy of AutoPaySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoPaySettingsModelImplCopyWith<_$AutoPaySettingsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LoanModel _$LoanModelFromJson(Map<String, dynamic> json) {
  return _LoanModel.fromJson(json);
}

/// @nodoc
mixin _$LoanModel {
  int get loanId => throw _privateConstructorUsedError;
  String get loanApplicationTypeDescription =>
      throw _privateConstructorUsedError;
  int get loanApplicationType => throw _privateConstructorUsedError;
  String get dueDate => throw _privateConstructorUsedError;
  double get currentDue => throw _privateConstructorUsedError;
  AutoPaySettingsModel get autoPaySettings =>
      throw _privateConstructorUsedError;

  /// Serializes this LoanModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoanModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoanModelCopyWith<LoanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanModelCopyWith<$Res> {
  factory $LoanModelCopyWith(LoanModel value, $Res Function(LoanModel) then) =
      _$LoanModelCopyWithImpl<$Res, LoanModel>;
  @useResult
  $Res call(
      {int loanId,
      String loanApplicationTypeDescription,
      int loanApplicationType,
      String dueDate,
      double currentDue,
      AutoPaySettingsModel autoPaySettings});

  $AutoPaySettingsModelCopyWith<$Res> get autoPaySettings;
}

/// @nodoc
class _$LoanModelCopyWithImpl<$Res, $Val extends LoanModel>
    implements $LoanModelCopyWith<$Res> {
  _$LoanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanId = null,
    Object? loanApplicationTypeDescription = null,
    Object? loanApplicationType = null,
    Object? dueDate = null,
    Object? currentDue = null,
    Object? autoPaySettings = null,
  }) {
    return _then(_value.copyWith(
      loanId: null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as int,
      loanApplicationTypeDescription: null == loanApplicationTypeDescription
          ? _value.loanApplicationTypeDescription
          : loanApplicationTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      loanApplicationType: null == loanApplicationType
          ? _value.loanApplicationType
          : loanApplicationType // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      currentDue: null == currentDue
          ? _value.currentDue
          : currentDue // ignore: cast_nullable_to_non_nullable
              as double,
      autoPaySettings: null == autoPaySettings
          ? _value.autoPaySettings
          : autoPaySettings // ignore: cast_nullable_to_non_nullable
              as AutoPaySettingsModel,
    ) as $Val);
  }

  /// Create a copy of LoanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoPaySettingsModelCopyWith<$Res> get autoPaySettings {
    return $AutoPaySettingsModelCopyWith<$Res>(_value.autoPaySettings, (value) {
      return _then(_value.copyWith(autoPaySettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanModelImplCopyWith<$Res>
    implements $LoanModelCopyWith<$Res> {
  factory _$$LoanModelImplCopyWith(
          _$LoanModelImpl value, $Res Function(_$LoanModelImpl) then) =
      __$$LoanModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int loanId,
      String loanApplicationTypeDescription,
      int loanApplicationType,
      String dueDate,
      double currentDue,
      AutoPaySettingsModel autoPaySettings});

  @override
  $AutoPaySettingsModelCopyWith<$Res> get autoPaySettings;
}

/// @nodoc
class __$$LoanModelImplCopyWithImpl<$Res>
    extends _$LoanModelCopyWithImpl<$Res, _$LoanModelImpl>
    implements _$$LoanModelImplCopyWith<$Res> {
  __$$LoanModelImplCopyWithImpl(
      _$LoanModelImpl _value, $Res Function(_$LoanModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanId = null,
    Object? loanApplicationTypeDescription = null,
    Object? loanApplicationType = null,
    Object? dueDate = null,
    Object? currentDue = null,
    Object? autoPaySettings = null,
  }) {
    return _then(_$LoanModelImpl(
      loanId: null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as int,
      loanApplicationTypeDescription: null == loanApplicationTypeDescription
          ? _value.loanApplicationTypeDescription
          : loanApplicationTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      loanApplicationType: null == loanApplicationType
          ? _value.loanApplicationType
          : loanApplicationType // ignore: cast_nullable_to_non_nullable
              as int,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      currentDue: null == currentDue
          ? _value.currentDue
          : currentDue // ignore: cast_nullable_to_non_nullable
              as double,
      autoPaySettings: null == autoPaySettings
          ? _value.autoPaySettings
          : autoPaySettings // ignore: cast_nullable_to_non_nullable
              as AutoPaySettingsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanModelImpl implements _LoanModel {
  const _$LoanModelImpl(
      {this.loanId = 0,
      this.loanApplicationTypeDescription = '',
      this.loanApplicationType = 0,
      this.dueDate = '',
      this.currentDue = 0.0,
      this.autoPaySettings = const AutoPaySettingsModel()});

  factory _$LoanModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanModelImplFromJson(json);

  @override
  @JsonKey()
  final int loanId;
  @override
  @JsonKey()
  final String loanApplicationTypeDescription;
  @override
  @JsonKey()
  final int loanApplicationType;
  @override
  @JsonKey()
  final String dueDate;
  @override
  @JsonKey()
  final double currentDue;
  @override
  @JsonKey()
  final AutoPaySettingsModel autoPaySettings;

  @override
  String toString() {
    return 'LoanModel(loanId: $loanId, loanApplicationTypeDescription: $loanApplicationTypeDescription, loanApplicationType: $loanApplicationType, dueDate: $dueDate, currentDue: $currentDue, autoPaySettings: $autoPaySettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanModelImpl &&
            (identical(other.loanId, loanId) || other.loanId == loanId) &&
            (identical(other.loanApplicationTypeDescription,
                    loanApplicationTypeDescription) ||
                other.loanApplicationTypeDescription ==
                    loanApplicationTypeDescription) &&
            (identical(other.loanApplicationType, loanApplicationType) ||
                other.loanApplicationType == loanApplicationType) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.currentDue, currentDue) ||
                other.currentDue == currentDue) &&
            (identical(other.autoPaySettings, autoPaySettings) ||
                other.autoPaySettings == autoPaySettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      loanId,
      loanApplicationTypeDescription,
      loanApplicationType,
      dueDate,
      currentDue,
      autoPaySettings);

  /// Create a copy of LoanModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanModelImplCopyWith<_$LoanModelImpl> get copyWith =>
      __$$LoanModelImplCopyWithImpl<_$LoanModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanModelImplToJson(
      this,
    );
  }
}

abstract class _LoanModel implements LoanModel {
  const factory _LoanModel(
      {final int loanId,
      final String loanApplicationTypeDescription,
      final int loanApplicationType,
      final String dueDate,
      final double currentDue,
      final AutoPaySettingsModel autoPaySettings}) = _$LoanModelImpl;

  factory _LoanModel.fromJson(Map<String, dynamic> json) =
      _$LoanModelImpl.fromJson;

  @override
  int get loanId;
  @override
  String get loanApplicationTypeDescription;
  @override
  int get loanApplicationType;
  @override
  String get dueDate;
  @override
  double get currentDue;
  @override
  AutoPaySettingsModel get autoPaySettings;

  /// Create a copy of LoanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoanModelImplCopyWith<_$LoanModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertySettingsModel _$PropertySettingsModelFromJson(
    Map<String, dynamic> json) {
  return _PropertySettingsModel.fromJson(json);
}

/// @nodoc
mixin _$PropertySettingsModel {
  List<int> get autoPaySetMultipleDays => throw _privateConstructorUsedError;
  bool get autoPayFullBalanceOnly => throw _privateConstructorUsedError;
  bool get contactSync => throw _privateConstructorUsedError;
  bool get displayCurrentBalance => throw _privateConstructorUsedError;
  bool get flexPay => throw _privateConstructorUsedError;
  bool get selfCreditReporting => throw _privateConstructorUsedError;
  bool get linkedSitesEnabled => throw _privateConstructorUsedError;
  bool get hasMobileAccess => throw _privateConstructorUsedError;
  bool get textBillsEnabled => throw _privateConstructorUsedError;
  bool get textPayEnabled => throw _privateConstructorUsedError;
  bool get eftEnrolled => throw _privateConstructorUsedError;

  /// Serializes this PropertySettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertySettingsModelCopyWith<PropertySettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertySettingsModelCopyWith<$Res> {
  factory $PropertySettingsModelCopyWith(PropertySettingsModel value,
          $Res Function(PropertySettingsModel) then) =
      _$PropertySettingsModelCopyWithImpl<$Res, PropertySettingsModel>;
  @useResult
  $Res call(
      {List<int> autoPaySetMultipleDays,
      bool autoPayFullBalanceOnly,
      bool contactSync,
      bool displayCurrentBalance,
      bool flexPay,
      bool selfCreditReporting,
      bool linkedSitesEnabled,
      bool hasMobileAccess,
      bool textBillsEnabled,
      bool textPayEnabled,
      bool eftEnrolled});
}

/// @nodoc
class _$PropertySettingsModelCopyWithImpl<$Res,
        $Val extends PropertySettingsModel>
    implements $PropertySettingsModelCopyWith<$Res> {
  _$PropertySettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoPaySetMultipleDays = null,
    Object? autoPayFullBalanceOnly = null,
    Object? contactSync = null,
    Object? displayCurrentBalance = null,
    Object? flexPay = null,
    Object? selfCreditReporting = null,
    Object? linkedSitesEnabled = null,
    Object? hasMobileAccess = null,
    Object? textBillsEnabled = null,
    Object? textPayEnabled = null,
    Object? eftEnrolled = null,
  }) {
    return _then(_value.copyWith(
      autoPaySetMultipleDays: null == autoPaySetMultipleDays
          ? _value.autoPaySetMultipleDays
          : autoPaySetMultipleDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
      autoPayFullBalanceOnly: null == autoPayFullBalanceOnly
          ? _value.autoPayFullBalanceOnly
          : autoPayFullBalanceOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      contactSync: null == contactSync
          ? _value.contactSync
          : contactSync // ignore: cast_nullable_to_non_nullable
              as bool,
      displayCurrentBalance: null == displayCurrentBalance
          ? _value.displayCurrentBalance
          : displayCurrentBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      flexPay: null == flexPay
          ? _value.flexPay
          : flexPay // ignore: cast_nullable_to_non_nullable
              as bool,
      selfCreditReporting: null == selfCreditReporting
          ? _value.selfCreditReporting
          : selfCreditReporting // ignore: cast_nullable_to_non_nullable
              as bool,
      linkedSitesEnabled: null == linkedSitesEnabled
          ? _value.linkedSitesEnabled
          : linkedSitesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMobileAccess: null == hasMobileAccess
          ? _value.hasMobileAccess
          : hasMobileAccess // ignore: cast_nullable_to_non_nullable
              as bool,
      textBillsEnabled: null == textBillsEnabled
          ? _value.textBillsEnabled
          : textBillsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      textPayEnabled: null == textPayEnabled
          ? _value.textPayEnabled
          : textPayEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      eftEnrolled: null == eftEnrolled
          ? _value.eftEnrolled
          : eftEnrolled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertySettingsModelImplCopyWith<$Res>
    implements $PropertySettingsModelCopyWith<$Res> {
  factory _$$PropertySettingsModelImplCopyWith(
          _$PropertySettingsModelImpl value,
          $Res Function(_$PropertySettingsModelImpl) then) =
      __$$PropertySettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> autoPaySetMultipleDays,
      bool autoPayFullBalanceOnly,
      bool contactSync,
      bool displayCurrentBalance,
      bool flexPay,
      bool selfCreditReporting,
      bool linkedSitesEnabled,
      bool hasMobileAccess,
      bool textBillsEnabled,
      bool textPayEnabled,
      bool eftEnrolled});
}

/// @nodoc
class __$$PropertySettingsModelImplCopyWithImpl<$Res>
    extends _$PropertySettingsModelCopyWithImpl<$Res,
        _$PropertySettingsModelImpl>
    implements _$$PropertySettingsModelImplCopyWith<$Res> {
  __$$PropertySettingsModelImplCopyWithImpl(_$PropertySettingsModelImpl _value,
      $Res Function(_$PropertySettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoPaySetMultipleDays = null,
    Object? autoPayFullBalanceOnly = null,
    Object? contactSync = null,
    Object? displayCurrentBalance = null,
    Object? flexPay = null,
    Object? selfCreditReporting = null,
    Object? linkedSitesEnabled = null,
    Object? hasMobileAccess = null,
    Object? textBillsEnabled = null,
    Object? textPayEnabled = null,
    Object? eftEnrolled = null,
  }) {
    return _then(_$PropertySettingsModelImpl(
      autoPaySetMultipleDays: null == autoPaySetMultipleDays
          ? _value._autoPaySetMultipleDays
          : autoPaySetMultipleDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
      autoPayFullBalanceOnly: null == autoPayFullBalanceOnly
          ? _value.autoPayFullBalanceOnly
          : autoPayFullBalanceOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      contactSync: null == contactSync
          ? _value.contactSync
          : contactSync // ignore: cast_nullable_to_non_nullable
              as bool,
      displayCurrentBalance: null == displayCurrentBalance
          ? _value.displayCurrentBalance
          : displayCurrentBalance // ignore: cast_nullable_to_non_nullable
              as bool,
      flexPay: null == flexPay
          ? _value.flexPay
          : flexPay // ignore: cast_nullable_to_non_nullable
              as bool,
      selfCreditReporting: null == selfCreditReporting
          ? _value.selfCreditReporting
          : selfCreditReporting // ignore: cast_nullable_to_non_nullable
              as bool,
      linkedSitesEnabled: null == linkedSitesEnabled
          ? _value.linkedSitesEnabled
          : linkedSitesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMobileAccess: null == hasMobileAccess
          ? _value.hasMobileAccess
          : hasMobileAccess // ignore: cast_nullable_to_non_nullable
              as bool,
      textBillsEnabled: null == textBillsEnabled
          ? _value.textBillsEnabled
          : textBillsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      textPayEnabled: null == textPayEnabled
          ? _value.textPayEnabled
          : textPayEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      eftEnrolled: null == eftEnrolled
          ? _value.eftEnrolled
          : eftEnrolled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertySettingsModelImpl implements _PropertySettingsModel {
  const _$PropertySettingsModelImpl(
      {final List<int> autoPaySetMultipleDays = const <int>[],
      this.autoPayFullBalanceOnly = false,
      this.contactSync = false,
      this.displayCurrentBalance = false,
      this.flexPay = false,
      this.selfCreditReporting = false,
      this.linkedSitesEnabled = false,
      this.hasMobileAccess = false,
      this.textBillsEnabled = false,
      this.textPayEnabled = false,
      this.eftEnrolled = false})
      : _autoPaySetMultipleDays = autoPaySetMultipleDays;

  factory _$PropertySettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertySettingsModelImplFromJson(json);

  final List<int> _autoPaySetMultipleDays;
  @override
  @JsonKey()
  List<int> get autoPaySetMultipleDays {
    if (_autoPaySetMultipleDays is EqualUnmodifiableListView)
      return _autoPaySetMultipleDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_autoPaySetMultipleDays);
  }

  @override
  @JsonKey()
  final bool autoPayFullBalanceOnly;
  @override
  @JsonKey()
  final bool contactSync;
  @override
  @JsonKey()
  final bool displayCurrentBalance;
  @override
  @JsonKey()
  final bool flexPay;
  @override
  @JsonKey()
  final bool selfCreditReporting;
  @override
  @JsonKey()
  final bool linkedSitesEnabled;
  @override
  @JsonKey()
  final bool hasMobileAccess;
  @override
  @JsonKey()
  final bool textBillsEnabled;
  @override
  @JsonKey()
  final bool textPayEnabled;
  @override
  @JsonKey()
  final bool eftEnrolled;

  @override
  String toString() {
    return 'PropertySettingsModel(autoPaySetMultipleDays: $autoPaySetMultipleDays, autoPayFullBalanceOnly: $autoPayFullBalanceOnly, contactSync: $contactSync, displayCurrentBalance: $displayCurrentBalance, flexPay: $flexPay, selfCreditReporting: $selfCreditReporting, linkedSitesEnabled: $linkedSitesEnabled, hasMobileAccess: $hasMobileAccess, textBillsEnabled: $textBillsEnabled, textPayEnabled: $textPayEnabled, eftEnrolled: $eftEnrolled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertySettingsModelImpl &&
            const DeepCollectionEquality().equals(
                other._autoPaySetMultipleDays, _autoPaySetMultipleDays) &&
            (identical(other.autoPayFullBalanceOnly, autoPayFullBalanceOnly) ||
                other.autoPayFullBalanceOnly == autoPayFullBalanceOnly) &&
            (identical(other.contactSync, contactSync) ||
                other.contactSync == contactSync) &&
            (identical(other.displayCurrentBalance, displayCurrentBalance) ||
                other.displayCurrentBalance == displayCurrentBalance) &&
            (identical(other.flexPay, flexPay) || other.flexPay == flexPay) &&
            (identical(other.selfCreditReporting, selfCreditReporting) ||
                other.selfCreditReporting == selfCreditReporting) &&
            (identical(other.linkedSitesEnabled, linkedSitesEnabled) ||
                other.linkedSitesEnabled == linkedSitesEnabled) &&
            (identical(other.hasMobileAccess, hasMobileAccess) ||
                other.hasMobileAccess == hasMobileAccess) &&
            (identical(other.textBillsEnabled, textBillsEnabled) ||
                other.textBillsEnabled == textBillsEnabled) &&
            (identical(other.textPayEnabled, textPayEnabled) ||
                other.textPayEnabled == textPayEnabled) &&
            (identical(other.eftEnrolled, eftEnrolled) ||
                other.eftEnrolled == eftEnrolled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_autoPaySetMultipleDays),
      autoPayFullBalanceOnly,
      contactSync,
      displayCurrentBalance,
      flexPay,
      selfCreditReporting,
      linkedSitesEnabled,
      hasMobileAccess,
      textBillsEnabled,
      textPayEnabled,
      eftEnrolled);

  /// Create a copy of PropertySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertySettingsModelImplCopyWith<_$PropertySettingsModelImpl>
      get copyWith => __$$PropertySettingsModelImplCopyWithImpl<
          _$PropertySettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertySettingsModelImplToJson(
      this,
    );
  }
}

abstract class _PropertySettingsModel implements PropertySettingsModel {
  const factory _PropertySettingsModel(
      {final List<int> autoPaySetMultipleDays,
      final bool autoPayFullBalanceOnly,
      final bool contactSync,
      final bool displayCurrentBalance,
      final bool flexPay,
      final bool selfCreditReporting,
      final bool linkedSitesEnabled,
      final bool hasMobileAccess,
      final bool textBillsEnabled,
      final bool textPayEnabled,
      final bool eftEnrolled}) = _$PropertySettingsModelImpl;

  factory _PropertySettingsModel.fromJson(Map<String, dynamic> json) =
      _$PropertySettingsModelImpl.fromJson;

  @override
  List<int> get autoPaySetMultipleDays;
  @override
  bool get autoPayFullBalanceOnly;
  @override
  bool get contactSync;
  @override
  bool get displayCurrentBalance;
  @override
  bool get flexPay;
  @override
  bool get selfCreditReporting;
  @override
  bool get linkedSitesEnabled;
  @override
  bool get hasMobileAccess;
  @override
  bool get textBillsEnabled;
  @override
  bool get textPayEnabled;
  @override
  bool get eftEnrolled;

  /// Create a copy of PropertySettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertySettingsModelImplCopyWith<_$PropertySettingsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BillingSettingsModel _$BillingSettingsModelFromJson(Map<String, dynamic> json) {
  return _BillingSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$BillingSettingsModel {
  int get deliveryType => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  int get leadDaysForBillReminder => throw _privateConstructorUsedError;

  /// Serializes this BillingSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillingSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingSettingsModelCopyWith<BillingSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingSettingsModelCopyWith<$Res> {
  factory $BillingSettingsModelCopyWith(BillingSettingsModel value,
          $Res Function(BillingSettingsModel) then) =
      _$BillingSettingsModelCopyWithImpl<$Res, BillingSettingsModel>;
  @useResult
  $Res call(
      {int deliveryType,
      String emailAddress,
      String phoneNumber,
      int leadDaysForBillReminder});
}

/// @nodoc
class _$BillingSettingsModelCopyWithImpl<$Res,
        $Val extends BillingSettingsModel>
    implements $BillingSettingsModelCopyWith<$Res> {
  _$BillingSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryType = null,
    Object? emailAddress = null,
    Object? phoneNumber = null,
    Object? leadDaysForBillReminder = null,
  }) {
    return _then(_value.copyWith(
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as int,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      leadDaysForBillReminder: null == leadDaysForBillReminder
          ? _value.leadDaysForBillReminder
          : leadDaysForBillReminder // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillingSettingsModelImplCopyWith<$Res>
    implements $BillingSettingsModelCopyWith<$Res> {
  factory _$$BillingSettingsModelImplCopyWith(_$BillingSettingsModelImpl value,
          $Res Function(_$BillingSettingsModelImpl) then) =
      __$$BillingSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int deliveryType,
      String emailAddress,
      String phoneNumber,
      int leadDaysForBillReminder});
}

/// @nodoc
class __$$BillingSettingsModelImplCopyWithImpl<$Res>
    extends _$BillingSettingsModelCopyWithImpl<$Res, _$BillingSettingsModelImpl>
    implements _$$BillingSettingsModelImplCopyWith<$Res> {
  __$$BillingSettingsModelImplCopyWithImpl(_$BillingSettingsModelImpl _value,
      $Res Function(_$BillingSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillingSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryType = null,
    Object? emailAddress = null,
    Object? phoneNumber = null,
    Object? leadDaysForBillReminder = null,
  }) {
    return _then(_$BillingSettingsModelImpl(
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as int,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
@JsonSerializable()
class _$BillingSettingsModelImpl implements _BillingSettingsModel {
  const _$BillingSettingsModelImpl(
      {this.deliveryType = 0,
      this.emailAddress = '',
      this.phoneNumber = '',
      this.leadDaysForBillReminder = 0});

  factory _$BillingSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingSettingsModelImplFromJson(json);

  @override
  @JsonKey()
  final int deliveryType;
  @override
  @JsonKey()
  final String emailAddress;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final int leadDaysForBillReminder;

  @override
  String toString() {
    return 'BillingSettingsModel(deliveryType: $deliveryType, emailAddress: $emailAddress, phoneNumber: $phoneNumber, leadDaysForBillReminder: $leadDaysForBillReminder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingSettingsModelImpl &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(
                    other.leadDaysForBillReminder, leadDaysForBillReminder) ||
                other.leadDaysForBillReminder == leadDaysForBillReminder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deliveryType, emailAddress,
      phoneNumber, leadDaysForBillReminder);

  /// Create a copy of BillingSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingSettingsModelImplCopyWith<_$BillingSettingsModelImpl>
      get copyWith =>
          __$$BillingSettingsModelImplCopyWithImpl<_$BillingSettingsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _BillingSettingsModel implements BillingSettingsModel {
  const factory _BillingSettingsModel(
      {final int deliveryType,
      final String emailAddress,
      final String phoneNumber,
      final int leadDaysForBillReminder}) = _$BillingSettingsModelImpl;

  factory _BillingSettingsModel.fromJson(Map<String, dynamic> json) =
      _$BillingSettingsModelImpl.fromJson;

  @override
  int get deliveryType;
  @override
  String get emailAddress;
  @override
  String get phoneNumber;
  @override
  int get leadDaysForBillReminder;

  /// Create a copy of BillingSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingSettingsModelImplCopyWith<_$BillingSettingsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AssociatedSitesModel _$AssociatedSitesModelFromJson(Map<String, dynamic> json) {
  return _AssociatedSitesModel.fromJson(json);
}

/// @nodoc
mixin _$AssociatedSitesModel {
  String get residentId => throw _privateConstructorUsedError;
  String get address1 => throw _privateConstructorUsedError;
  String get address2 => throw _privateConstructorUsedError;
  String get siteName => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;
  String get propertyName => throw _privateConstructorUsedError;
  String get propertyId => throw _privateConstructorUsedError;
  bool get isBilling => throw _privateConstructorUsedError;
  bool get isEverywareCashPayConfigured => throw _privateConstructorUsedError;

  /// Serializes this AssociatedSitesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssociatedSitesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssociatedSitesModelCopyWith<AssociatedSitesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssociatedSitesModelCopyWith<$Res> {
  factory $AssociatedSitesModelCopyWith(AssociatedSitesModel value,
          $Res Function(AssociatedSitesModel) then) =
      _$AssociatedSitesModelCopyWithImpl<$Res, AssociatedSitesModel>;
  @useResult
  $Res call(
      {String residentId,
      String address1,
      String address2,
      String siteName,
      String city,
      String state,
      String zipCode,
      String propertyName,
      String propertyId,
      bool isBilling,
      bool isEverywareCashPayConfigured});
}

/// @nodoc
class _$AssociatedSitesModelCopyWithImpl<$Res,
        $Val extends AssociatedSitesModel>
    implements $AssociatedSitesModelCopyWith<$Res> {
  _$AssociatedSitesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssociatedSitesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
    Object? address1 = null,
    Object? address2 = null,
    Object? siteName = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? propertyName = null,
    Object? propertyId = null,
    Object? isBilling = null,
    Object? isEverywareCashPayConfigured = null,
  }) {
    return _then(_value.copyWith(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      propertyName: null == propertyName
          ? _value.propertyName
          : propertyName // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      isBilling: null == isBilling
          ? _value.isBilling
          : isBilling // ignore: cast_nullable_to_non_nullable
              as bool,
      isEverywareCashPayConfigured: null == isEverywareCashPayConfigured
          ? _value.isEverywareCashPayConfigured
          : isEverywareCashPayConfigured // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssociatedSitesModelImplCopyWith<$Res>
    implements $AssociatedSitesModelCopyWith<$Res> {
  factory _$$AssociatedSitesModelImplCopyWith(_$AssociatedSitesModelImpl value,
          $Res Function(_$AssociatedSitesModelImpl) then) =
      __$$AssociatedSitesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String residentId,
      String address1,
      String address2,
      String siteName,
      String city,
      String state,
      String zipCode,
      String propertyName,
      String propertyId,
      bool isBilling,
      bool isEverywareCashPayConfigured});
}

/// @nodoc
class __$$AssociatedSitesModelImplCopyWithImpl<$Res>
    extends _$AssociatedSitesModelCopyWithImpl<$Res, _$AssociatedSitesModelImpl>
    implements _$$AssociatedSitesModelImplCopyWith<$Res> {
  __$$AssociatedSitesModelImplCopyWithImpl(_$AssociatedSitesModelImpl _value,
      $Res Function(_$AssociatedSitesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssociatedSitesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residentId = null,
    Object? address1 = null,
    Object? address2 = null,
    Object? siteName = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? propertyName = null,
    Object? propertyId = null,
    Object? isBilling = null,
    Object? isEverywareCashPayConfigured = null,
  }) {
    return _then(_$AssociatedSitesModelImpl(
      residentId: null == residentId
          ? _value.residentId
          : residentId // ignore: cast_nullable_to_non_nullable
              as String,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      propertyName: null == propertyName
          ? _value.propertyName
          : propertyName // ignore: cast_nullable_to_non_nullable
              as String,
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as String,
      isBilling: null == isBilling
          ? _value.isBilling
          : isBilling // ignore: cast_nullable_to_non_nullable
              as bool,
      isEverywareCashPayConfigured: null == isEverywareCashPayConfigured
          ? _value.isEverywareCashPayConfigured
          : isEverywareCashPayConfigured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssociatedSitesModelImpl implements _AssociatedSitesModel {
  const _$AssociatedSitesModelImpl(
      {this.residentId = '',
      this.address1 = '',
      this.address2 = '',
      this.siteName = '',
      this.city = '',
      this.state = '',
      this.zipCode = '',
      this.propertyName = '',
      this.propertyId = '',
      this.isBilling = false,
      this.isEverywareCashPayConfigured = false});

  factory _$AssociatedSitesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssociatedSitesModelImplFromJson(json);

  @override
  @JsonKey()
  final String residentId;
  @override
  @JsonKey()
  final String address1;
  @override
  @JsonKey()
  final String address2;
  @override
  @JsonKey()
  final String siteName;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String state;
  @override
  @JsonKey()
  final String zipCode;
  @override
  @JsonKey()
  final String propertyName;
  @override
  @JsonKey()
  final String propertyId;
  @override
  @JsonKey()
  final bool isBilling;
  @override
  @JsonKey()
  final bool isEverywareCashPayConfigured;

  @override
  String toString() {
    return 'AssociatedSitesModel(residentId: $residentId, address1: $address1, address2: $address2, siteName: $siteName, city: $city, state: $state, zipCode: $zipCode, propertyName: $propertyName, propertyId: $propertyId, isBilling: $isBilling, isEverywareCashPayConfigured: $isEverywareCashPayConfigured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssociatedSitesModelImpl &&
            (identical(other.residentId, residentId) ||
                other.residentId == residentId) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.siteName, siteName) ||
                other.siteName == siteName) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.propertyName, propertyName) ||
                other.propertyName == propertyName) &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.isBilling, isBilling) ||
                other.isBilling == isBilling) &&
            (identical(other.isEverywareCashPayConfigured,
                    isEverywareCashPayConfigured) ||
                other.isEverywareCashPayConfigured ==
                    isEverywareCashPayConfigured));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      residentId,
      address1,
      address2,
      siteName,
      city,
      state,
      zipCode,
      propertyName,
      propertyId,
      isBilling,
      isEverywareCashPayConfigured);

  /// Create a copy of AssociatedSitesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssociatedSitesModelImplCopyWith<_$AssociatedSitesModelImpl>
      get copyWith =>
          __$$AssociatedSitesModelImplCopyWithImpl<_$AssociatedSitesModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssociatedSitesModelImplToJson(
      this,
    );
  }
}

abstract class _AssociatedSitesModel implements AssociatedSitesModel {
  const factory _AssociatedSitesModel(
      {final String residentId,
      final String address1,
      final String address2,
      final String siteName,
      final String city,
      final String state,
      final String zipCode,
      final String propertyName,
      final String propertyId,
      final bool isBilling,
      final bool isEverywareCashPayConfigured}) = _$AssociatedSitesModelImpl;

  factory _AssociatedSitesModel.fromJson(Map<String, dynamic> json) =
      _$AssociatedSitesModelImpl.fromJson;

  @override
  String get residentId;
  @override
  String get address1;
  @override
  String get address2;
  @override
  String get siteName;
  @override
  String get city;
  @override
  String get state;
  @override
  String get zipCode;
  @override
  String get propertyName;
  @override
  String get propertyId;
  @override
  bool get isBilling;
  @override
  bool get isEverywareCashPayConfigured;

  /// Create a copy of AssociatedSitesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssociatedSitesModelImplCopyWith<_$AssociatedSitesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EverywareSettingsModel _$EverywareSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _EverywareSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$EverywareSettingsModel {
  double get maximumPaymentAmount => throw _privateConstructorUsedError;

  /// Serializes this EverywareSettingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EverywareSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EverywareSettingsModelCopyWith<EverywareSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EverywareSettingsModelCopyWith<$Res> {
  factory $EverywareSettingsModelCopyWith(EverywareSettingsModel value,
          $Res Function(EverywareSettingsModel) then) =
      _$EverywareSettingsModelCopyWithImpl<$Res, EverywareSettingsModel>;
  @useResult
  $Res call({double maximumPaymentAmount});
}

/// @nodoc
class _$EverywareSettingsModelCopyWithImpl<$Res,
        $Val extends EverywareSettingsModel>
    implements $EverywareSettingsModelCopyWith<$Res> {
  _$EverywareSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EverywareSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximumPaymentAmount = null,
  }) {
    return _then(_value.copyWith(
      maximumPaymentAmount: null == maximumPaymentAmount
          ? _value.maximumPaymentAmount
          : maximumPaymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EverywareSettingsModelImplCopyWith<$Res>
    implements $EverywareSettingsModelCopyWith<$Res> {
  factory _$$EverywareSettingsModelImplCopyWith(
          _$EverywareSettingsModelImpl value,
          $Res Function(_$EverywareSettingsModelImpl) then) =
      __$$EverywareSettingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double maximumPaymentAmount});
}

/// @nodoc
class __$$EverywareSettingsModelImplCopyWithImpl<$Res>
    extends _$EverywareSettingsModelCopyWithImpl<$Res,
        _$EverywareSettingsModelImpl>
    implements _$$EverywareSettingsModelImplCopyWith<$Res> {
  __$$EverywareSettingsModelImplCopyWithImpl(
      _$EverywareSettingsModelImpl _value,
      $Res Function(_$EverywareSettingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EverywareSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximumPaymentAmount = null,
  }) {
    return _then(_$EverywareSettingsModelImpl(
      maximumPaymentAmount: null == maximumPaymentAmount
          ? _value.maximumPaymentAmount
          : maximumPaymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EverywareSettingsModelImpl implements _EverywareSettingsModel {
  const _$EverywareSettingsModelImpl({this.maximumPaymentAmount = 0.0});

  factory _$EverywareSettingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EverywareSettingsModelImplFromJson(json);

  @override
  @JsonKey()
  final double maximumPaymentAmount;

  @override
  String toString() {
    return 'EverywareSettingsModel(maximumPaymentAmount: $maximumPaymentAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EverywareSettingsModelImpl &&
            (identical(other.maximumPaymentAmount, maximumPaymentAmount) ||
                other.maximumPaymentAmount == maximumPaymentAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, maximumPaymentAmount);

  /// Create a copy of EverywareSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EverywareSettingsModelImplCopyWith<_$EverywareSettingsModelImpl>
      get copyWith => __$$EverywareSettingsModelImplCopyWithImpl<
          _$EverywareSettingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EverywareSettingsModelImplToJson(
      this,
    );
  }
}

abstract class _EverywareSettingsModel implements EverywareSettingsModel {
  const factory _EverywareSettingsModel({final double maximumPaymentAmount}) =
      _$EverywareSettingsModelImpl;

  factory _EverywareSettingsModel.fromJson(Map<String, dynamic> json) =
      _$EverywareSettingsModelImpl.fromJson;

  @override
  double get maximumPaymentAmount;

  /// Create a copy of EverywareSettingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EverywareSettingsModelImplCopyWith<_$EverywareSettingsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
