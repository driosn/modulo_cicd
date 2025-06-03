// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyContentModel _$CompanyContentModelFromJson(Map<String, dynamic> json) {
  return _CompanyContentModel.fromJson(json);
}

/// @nodoc
mixin _$CompanyContentModel {
  String get contentTypeDescription => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'contentType',
      fromJson: ContentType.fromInt,
      toJson: ContentType.toInt)
  ContentType get contentType => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this CompanyContentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyContentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyContentModelCopyWith<CompanyContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyContentModelCopyWith<$Res> {
  factory $CompanyContentModelCopyWith(
          CompanyContentModel value, $Res Function(CompanyContentModel) then) =
      _$CompanyContentModelCopyWithImpl<$Res, CompanyContentModel>;
  @useResult
  $Res call(
      {String contentTypeDescription,
      @JsonKey(
          name: 'contentType',
          fromJson: ContentType.fromInt,
          toJson: ContentType.toInt)
      ContentType contentType,
      String content});

  $ContentTypeCopyWith<$Res> get contentType;
}

/// @nodoc
class _$CompanyContentModelCopyWithImpl<$Res, $Val extends CompanyContentModel>
    implements $CompanyContentModelCopyWith<$Res> {
  _$CompanyContentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyContentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentTypeDescription = null,
    Object? contentType = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      contentTypeDescription: null == contentTypeDescription
          ? _value.contentTypeDescription
          : contentTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of CompanyContentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentTypeCopyWith<$Res> get contentType {
    return $ContentTypeCopyWith<$Res>(_value.contentType, (value) {
      return _then(_value.copyWith(contentType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyContentModelImplCopyWith<$Res>
    implements $CompanyContentModelCopyWith<$Res> {
  factory _$$CompanyContentModelImplCopyWith(_$CompanyContentModelImpl value,
          $Res Function(_$CompanyContentModelImpl) then) =
      __$$CompanyContentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentTypeDescription,
      @JsonKey(
          name: 'contentType',
          fromJson: ContentType.fromInt,
          toJson: ContentType.toInt)
      ContentType contentType,
      String content});

  @override
  $ContentTypeCopyWith<$Res> get contentType;
}

/// @nodoc
class __$$CompanyContentModelImplCopyWithImpl<$Res>
    extends _$CompanyContentModelCopyWithImpl<$Res, _$CompanyContentModelImpl>
    implements _$$CompanyContentModelImplCopyWith<$Res> {
  __$$CompanyContentModelImplCopyWithImpl(_$CompanyContentModelImpl _value,
      $Res Function(_$CompanyContentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompanyContentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentTypeDescription = null,
    Object? contentType = null,
    Object? content = null,
  }) {
    return _then(_$CompanyContentModelImpl(
      contentTypeDescription: null == contentTypeDescription
          ? _value.contentTypeDescription
          : contentTypeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyContentModelImpl implements _CompanyContentModel {
  const _$CompanyContentModelImpl(
      {this.contentTypeDescription = '',
      @JsonKey(
          name: 'contentType',
          fromJson: ContentType.fromInt,
          toJson: ContentType.toInt)
      this.contentType = const ContentType.unknown(),
      this.content = ''});

  factory _$CompanyContentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyContentModelImplFromJson(json);

  @override
  @JsonKey()
  final String contentTypeDescription;
  @override
  @JsonKey(
      name: 'contentType',
      fromJson: ContentType.fromInt,
      toJson: ContentType.toInt)
  final ContentType contentType;
  @override
  @JsonKey()
  final String content;

  @override
  String toString() {
    return 'CompanyContentModel(contentTypeDescription: $contentTypeDescription, contentType: $contentType, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyContentModelImpl &&
            (identical(other.contentTypeDescription, contentTypeDescription) ||
                other.contentTypeDescription == contentTypeDescription) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contentTypeDescription, contentType, content);

  /// Create a copy of CompanyContentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyContentModelImplCopyWith<_$CompanyContentModelImpl> get copyWith =>
      __$$CompanyContentModelImplCopyWithImpl<_$CompanyContentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyContentModelImplToJson(
      this,
    );
  }
}

abstract class _CompanyContentModel implements CompanyContentModel {
  const factory _CompanyContentModel(
      {final String contentTypeDescription,
      @JsonKey(
          name: 'contentType',
          fromJson: ContentType.fromInt,
          toJson: ContentType.toInt)
      final ContentType contentType,
      final String content}) = _$CompanyContentModelImpl;

  factory _CompanyContentModel.fromJson(Map<String, dynamic> json) =
      _$CompanyContentModelImpl.fromJson;

  @override
  String get contentTypeDescription;
  @override
  @JsonKey(
      name: 'contentType',
      fromJson: ContentType.fromInt,
      toJson: ContentType.toInt)
  ContentType get contentType;
  @override
  String get content;

  /// Create a copy of CompanyContentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyContentModelImplCopyWith<_$CompanyContentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
