// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Environment {
  String get name => throw _privateConstructorUsedError;
  String get apiBaseUrl => throw _privateConstructorUsedError;
  String get buildType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String apiBaseUrl, String buildType)
        dev,
    required TResult Function(String name, String apiBaseUrl, String buildType)
        qa,
    required TResult Function(String name, String apiBaseUrl, String buildType)
        prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String apiBaseUrl, String buildType)? dev,
    TResult? Function(String name, String apiBaseUrl, String buildType)? qa,
    TResult? Function(String name, String apiBaseUrl, String buildType)? prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String apiBaseUrl, String buildType)? dev,
    TResult Function(String name, String apiBaseUrl, String buildType)? qa,
    TResult Function(String name, String apiBaseUrl, String buildType)? prod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DevEnvironment value) dev,
    required TResult Function(_QAEnvironment value) qa,
    required TResult Function(_ProdEnvironment value) prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DevEnvironment value)? dev,
    TResult? Function(_QAEnvironment value)? qa,
    TResult? Function(_ProdEnvironment value)? prod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DevEnvironment value)? dev,
    TResult Function(_QAEnvironment value)? qa,
    TResult Function(_ProdEnvironment value)? prod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnvironmentCopyWith<Environment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentCopyWith<$Res> {
  factory $EnvironmentCopyWith(
          Environment value, $Res Function(Environment) then) =
      _$EnvironmentCopyWithImpl<$Res, Environment>;
  @useResult
  $Res call({String name, String apiBaseUrl, String buildType});
}

/// @nodoc
class _$EnvironmentCopyWithImpl<$Res, $Val extends Environment>
    implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? apiBaseUrl = null,
    Object? buildType = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiBaseUrl: null == apiBaseUrl
          ? _value.apiBaseUrl
          : apiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      buildType: null == buildType
          ? _value.buildType
          : buildType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DevEnvironmentImplCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$DevEnvironmentImplCopyWith(_$DevEnvironmentImpl value,
          $Res Function(_$DevEnvironmentImpl) then) =
      __$$DevEnvironmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String apiBaseUrl, String buildType});
}

/// @nodoc
class __$$DevEnvironmentImplCopyWithImpl<$Res>
    extends _$EnvironmentCopyWithImpl<$Res, _$DevEnvironmentImpl>
    implements _$$DevEnvironmentImplCopyWith<$Res> {
  __$$DevEnvironmentImplCopyWithImpl(
      _$DevEnvironmentImpl _value, $Res Function(_$DevEnvironmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? apiBaseUrl = null,
    Object? buildType = null,
  }) {
    return _then(_$DevEnvironmentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiBaseUrl: null == apiBaseUrl
          ? _value.apiBaseUrl
          : apiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      buildType: null == buildType
          ? _value.buildType
          : buildType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DevEnvironmentImpl implements _DevEnvironment {
  const _$DevEnvironmentImpl(
      {this.name = 'dev',
      this.apiBaseUrl = 'https://rpm-dev-api.manageamerica.com/api/v1',
      this.buildType = 'developer'});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String apiBaseUrl;
  @override
  @JsonKey()
  final String buildType;

  @override
  String toString() {
    return 'Environment.dev(name: $name, apiBaseUrl: $apiBaseUrl, buildType: $buildType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevEnvironmentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.apiBaseUrl, apiBaseUrl) ||
                other.apiBaseUrl == apiBaseUrl) &&
            (identical(other.buildType, buildType) ||
                other.buildType == buildType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, apiBaseUrl, buildType);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DevEnvironmentImplCopyWith<_$DevEnvironmentImpl> get copyWith =>
      __$$DevEnvironmentImplCopyWithImpl<_$DevEnvironmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String apiBaseUrl, String buildType)
        dev,
    required TResult Function(String name, String apiBaseUrl, String buildType)
        qa,
    required TResult Function(String name, String apiBaseUrl, String buildType)
        prod,
  }) {
    return dev(name, apiBaseUrl, buildType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String apiBaseUrl, String buildType)? dev,
    TResult? Function(String name, String apiBaseUrl, String buildType)? qa,
    TResult? Function(String name, String apiBaseUrl, String buildType)? prod,
  }) {
    return dev?.call(name, apiBaseUrl, buildType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String apiBaseUrl, String buildType)? dev,
    TResult Function(String name, String apiBaseUrl, String buildType)? qa,
    TResult Function(String name, String apiBaseUrl, String buildType)? prod,
    required TResult orElse(),
  }) {
    if (dev != null) {
      return dev(name, apiBaseUrl, buildType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DevEnvironment value) dev,
    required TResult Function(_QAEnvironment value) qa,
    required TResult Function(_ProdEnvironment value) prod,
  }) {
    return dev(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DevEnvironment value)? dev,
    TResult? Function(_QAEnvironment value)? qa,
    TResult? Function(_ProdEnvironment value)? prod,
  }) {
    return dev?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DevEnvironment value)? dev,
    TResult Function(_QAEnvironment value)? qa,
    TResult Function(_ProdEnvironment value)? prod,
    required TResult orElse(),
  }) {
    if (dev != null) {
      return dev(this);
    }
    return orElse();
  }
}

abstract class _DevEnvironment implements Environment {
  const factory _DevEnvironment(
      {final String name,
      final String apiBaseUrl,
      final String buildType}) = _$DevEnvironmentImpl;

  @override
  String get name;
  @override
  String get apiBaseUrl;
  @override
  String get buildType;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DevEnvironmentImplCopyWith<_$DevEnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QAEnvironmentImplCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$QAEnvironmentImplCopyWith(
          _$QAEnvironmentImpl value, $Res Function(_$QAEnvironmentImpl) then) =
      __$$QAEnvironmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String apiBaseUrl, String buildType});
}

/// @nodoc
class __$$QAEnvironmentImplCopyWithImpl<$Res>
    extends _$EnvironmentCopyWithImpl<$Res, _$QAEnvironmentImpl>
    implements _$$QAEnvironmentImplCopyWith<$Res> {
  __$$QAEnvironmentImplCopyWithImpl(
      _$QAEnvironmentImpl _value, $Res Function(_$QAEnvironmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? apiBaseUrl = null,
    Object? buildType = null,
  }) {
    return _then(_$QAEnvironmentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiBaseUrl: null == apiBaseUrl
          ? _value.apiBaseUrl
          : apiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      buildType: null == buildType
          ? _value.buildType
          : buildType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QAEnvironmentImpl implements _QAEnvironment {
  const _$QAEnvironmentImpl(
      {this.name = 'qa',
      this.apiBaseUrl = 'https://rpm-qa-api.manageamerica.com/api/v1',
      this.buildType = 'developer'});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String apiBaseUrl;
  @override
  @JsonKey()
  final String buildType;

  @override
  String toString() {
    return 'Environment.qa(name: $name, apiBaseUrl: $apiBaseUrl, buildType: $buildType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QAEnvironmentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.apiBaseUrl, apiBaseUrl) ||
                other.apiBaseUrl == apiBaseUrl) &&
            (identical(other.buildType, buildType) ||
                other.buildType == buildType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, apiBaseUrl, buildType);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QAEnvironmentImplCopyWith<_$QAEnvironmentImpl> get copyWith =>
      __$$QAEnvironmentImplCopyWithImpl<_$QAEnvironmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String apiBaseUrl, String buildType)
        dev,
    required TResult Function(String name, String apiBaseUrl, String buildType)
        qa,
    required TResult Function(String name, String apiBaseUrl, String buildType)
        prod,
  }) {
    return qa(name, apiBaseUrl, buildType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String apiBaseUrl, String buildType)? dev,
    TResult? Function(String name, String apiBaseUrl, String buildType)? qa,
    TResult? Function(String name, String apiBaseUrl, String buildType)? prod,
  }) {
    return qa?.call(name, apiBaseUrl, buildType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String apiBaseUrl, String buildType)? dev,
    TResult Function(String name, String apiBaseUrl, String buildType)? qa,
    TResult Function(String name, String apiBaseUrl, String buildType)? prod,
    required TResult orElse(),
  }) {
    if (qa != null) {
      return qa(name, apiBaseUrl, buildType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DevEnvironment value) dev,
    required TResult Function(_QAEnvironment value) qa,
    required TResult Function(_ProdEnvironment value) prod,
  }) {
    return qa(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DevEnvironment value)? dev,
    TResult? Function(_QAEnvironment value)? qa,
    TResult? Function(_ProdEnvironment value)? prod,
  }) {
    return qa?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DevEnvironment value)? dev,
    TResult Function(_QAEnvironment value)? qa,
    TResult Function(_ProdEnvironment value)? prod,
    required TResult orElse(),
  }) {
    if (qa != null) {
      return qa(this);
    }
    return orElse();
  }
}

abstract class _QAEnvironment implements Environment {
  const factory _QAEnvironment(
      {final String name,
      final String apiBaseUrl,
      final String buildType}) = _$QAEnvironmentImpl;

  @override
  String get name;
  @override
  String get apiBaseUrl;
  @override
  String get buildType;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QAEnvironmentImplCopyWith<_$QAEnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProdEnvironmentImplCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$ProdEnvironmentImplCopyWith(_$ProdEnvironmentImpl value,
          $Res Function(_$ProdEnvironmentImpl) then) =
      __$$ProdEnvironmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String apiBaseUrl, String buildType});
}

/// @nodoc
class __$$ProdEnvironmentImplCopyWithImpl<$Res>
    extends _$EnvironmentCopyWithImpl<$Res, _$ProdEnvironmentImpl>
    implements _$$ProdEnvironmentImplCopyWith<$Res> {
  __$$ProdEnvironmentImplCopyWithImpl(
      _$ProdEnvironmentImpl _value, $Res Function(_$ProdEnvironmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? apiBaseUrl = null,
    Object? buildType = null,
  }) {
    return _then(_$ProdEnvironmentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiBaseUrl: null == apiBaseUrl
          ? _value.apiBaseUrl
          : apiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      buildType: null == buildType
          ? _value.buildType
          : buildType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProdEnvironmentImpl implements _ProdEnvironment {
  const _$ProdEnvironmentImpl(
      {this.name = 'prod',
      this.apiBaseUrl = 'https://rpm-api.manageamerica.com/api/v1',
      this.buildType = 'developer'});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String apiBaseUrl;
  @override
  @JsonKey()
  final String buildType;

  @override
  String toString() {
    return 'Environment.prod(name: $name, apiBaseUrl: $apiBaseUrl, buildType: $buildType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProdEnvironmentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.apiBaseUrl, apiBaseUrl) ||
                other.apiBaseUrl == apiBaseUrl) &&
            (identical(other.buildType, buildType) ||
                other.buildType == buildType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, apiBaseUrl, buildType);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProdEnvironmentImplCopyWith<_$ProdEnvironmentImpl> get copyWith =>
      __$$ProdEnvironmentImplCopyWithImpl<_$ProdEnvironmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String apiBaseUrl, String buildType)
        dev,
    required TResult Function(String name, String apiBaseUrl, String buildType)
        qa,
    required TResult Function(String name, String apiBaseUrl, String buildType)
        prod,
  }) {
    return prod(name, apiBaseUrl, buildType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String apiBaseUrl, String buildType)? dev,
    TResult? Function(String name, String apiBaseUrl, String buildType)? qa,
    TResult? Function(String name, String apiBaseUrl, String buildType)? prod,
  }) {
    return prod?.call(name, apiBaseUrl, buildType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String apiBaseUrl, String buildType)? dev,
    TResult Function(String name, String apiBaseUrl, String buildType)? qa,
    TResult Function(String name, String apiBaseUrl, String buildType)? prod,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod(name, apiBaseUrl, buildType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DevEnvironment value) dev,
    required TResult Function(_QAEnvironment value) qa,
    required TResult Function(_ProdEnvironment value) prod,
  }) {
    return prod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DevEnvironment value)? dev,
    TResult? Function(_QAEnvironment value)? qa,
    TResult? Function(_ProdEnvironment value)? prod,
  }) {
    return prod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DevEnvironment value)? dev,
    TResult Function(_QAEnvironment value)? qa,
    TResult Function(_ProdEnvironment value)? prod,
    required TResult orElse(),
  }) {
    if (prod != null) {
      return prod(this);
    }
    return orElse();
  }
}

abstract class _ProdEnvironment implements Environment {
  const factory _ProdEnvironment(
      {final String name,
      final String apiBaseUrl,
      final String buildType}) = _$ProdEnvironmentImpl;

  @override
  String get name;
  @override
  String get apiBaseUrl;
  @override
  String get buildType;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProdEnvironmentImplCopyWith<_$ProdEnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
