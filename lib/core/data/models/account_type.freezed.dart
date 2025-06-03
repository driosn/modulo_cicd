// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountType {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of AccountType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountTypeCopyWith<AccountType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountTypeCopyWith<$Res> {
  factory $AccountTypeCopyWith(
          AccountType value, $Res Function(AccountType) then) =
      _$AccountTypeCopyWithImpl<$Res, AccountType>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$AccountTypeCopyWithImpl<$Res, $Val extends AccountType>
    implements $AccountTypeCopyWith<$Res> {
  _$AccountTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountTypeImplCopyWith<$Res>
    implements $AccountTypeCopyWith<$Res> {
  factory _$$AccountTypeImplCopyWith(
          _$AccountTypeImpl value, $Res Function(_$AccountTypeImpl) then) =
      __$$AccountTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$AccountTypeImplCopyWithImpl<$Res>
    extends _$AccountTypeCopyWithImpl<$Res, _$AccountTypeImpl>
    implements _$$AccountTypeImplCopyWith<$Res> {
  __$$AccountTypeImplCopyWithImpl(
      _$AccountTypeImpl _value, $Res Function(_$AccountTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$AccountTypeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AccountTypeImpl implements _AccountType {
  const _$AccountTypeImpl({required this.name, required this.value});

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'AccountType(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountTypeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  /// Create a copy of AccountType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountTypeImplCopyWith<_$AccountTypeImpl> get copyWith =>
      __$$AccountTypeImplCopyWithImpl<_$AccountTypeImpl>(this, _$identity);
}

abstract class _AccountType implements AccountType {
  const factory _AccountType(
      {required final String name,
      required final String value}) = _$AccountTypeImpl;

  @override
  String get name;
  @override
  String get value;

  /// Create a copy of AccountType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountTypeImplCopyWith<_$AccountTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
