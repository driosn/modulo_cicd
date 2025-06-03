// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocumentModel _$DocumentModelFromJson(Map<String, dynamic> json) {
  return _DocumentModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentModel {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  List<SectionModel> get sections => throw _privateConstructorUsedError;

  /// Serializes this DocumentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentModelCopyWith<DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentModelCopyWith<$Res> {
  factory $DocumentModelCopyWith(
          DocumentModel value, $Res Function(DocumentModel) then) =
      _$DocumentModelCopyWithImpl<$Res, DocumentModel>;
  @useResult
  $Res call({String title, String subtitle, List<SectionModel> sections});
}

/// @nodoc
class _$DocumentModelCopyWithImpl<$Res, $Val extends DocumentModel>
    implements $DocumentModelCopyWith<$Res> {
  _$DocumentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? sections = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentModelImplCopyWith<$Res>
    implements $DocumentModelCopyWith<$Res> {
  factory _$$DocumentModelImplCopyWith(
          _$DocumentModelImpl value, $Res Function(_$DocumentModelImpl) then) =
      __$$DocumentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String subtitle, List<SectionModel> sections});
}

/// @nodoc
class __$$DocumentModelImplCopyWithImpl<$Res>
    extends _$DocumentModelCopyWithImpl<$Res, _$DocumentModelImpl>
    implements _$$DocumentModelImplCopyWith<$Res> {
  __$$DocumentModelImplCopyWithImpl(
      _$DocumentModelImpl _value, $Res Function(_$DocumentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? sections = null,
  }) {
    return _then(_$DocumentModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentModelImpl implements _DocumentModel {
  const _$DocumentModelImpl(
      {this.title = '',
      this.subtitle = '',
      final List<SectionModel> sections = const []})
      : _sections = sections;

  factory _$DocumentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentModelImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String subtitle;
  final List<SectionModel> _sections;
  @override
  @JsonKey()
  List<SectionModel> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  String toString() {
    return 'DocumentModel(title: $title, subtitle: $subtitle, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle,
      const DeepCollectionEquality().hash(_sections));

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentModelImplCopyWith<_$DocumentModelImpl> get copyWith =>
      __$$DocumentModelImplCopyWithImpl<_$DocumentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentModel implements DocumentModel {
  const factory _DocumentModel(
      {final String title,
      final String subtitle,
      final List<SectionModel> sections}) = _$DocumentModelImpl;

  factory _DocumentModel.fromJson(Map<String, dynamic> json) =
      _$DocumentModelImpl.fromJson;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  List<SectionModel> get sections;

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentModelImplCopyWith<_$DocumentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SectionModel _$SectionModelFromJson(Map<String, dynamic> json) {
  return _SectionModel.fromJson(json);
}

/// @nodoc
mixin _$SectionModel {
  String get title => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  List<ElementModel> get elements => throw _privateConstructorUsedError;

  /// Serializes this SectionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionModelCopyWith<SectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionModelCopyWith<$Res> {
  factory $SectionModelCopyWith(
          SectionModel value, $Res Function(SectionModel) then) =
      _$SectionModelCopyWithImpl<$Res, SectionModel>;
  @useResult
  $Res call({String title, int order, List<ElementModel> elements});
}

/// @nodoc
class _$SectionModelCopyWithImpl<$Res, $Val extends SectionModel>
    implements $SectionModelCopyWith<$Res> {
  _$SectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? order = null,
    Object? elements = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      elements: null == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<ElementModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionModelImplCopyWith<$Res>
    implements $SectionModelCopyWith<$Res> {
  factory _$$SectionModelImplCopyWith(
          _$SectionModelImpl value, $Res Function(_$SectionModelImpl) then) =
      __$$SectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int order, List<ElementModel> elements});
}

/// @nodoc
class __$$SectionModelImplCopyWithImpl<$Res>
    extends _$SectionModelCopyWithImpl<$Res, _$SectionModelImpl>
    implements _$$SectionModelImplCopyWith<$Res> {
  __$$SectionModelImplCopyWithImpl(
      _$SectionModelImpl _value, $Res Function(_$SectionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? order = null,
    Object? elements = null,
  }) {
    return _then(_$SectionModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<ElementModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionModelImpl implements _SectionModel {
  const _$SectionModelImpl(
      {this.title = '',
      this.order = 1,
      final List<ElementModel> elements = const []})
      : _elements = elements;

  factory _$SectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionModelImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int order;
  final List<ElementModel> _elements;
  @override
  @JsonKey()
  List<ElementModel> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  @override
  String toString() {
    return 'SectionModel(title: $title, order: $order, elements: $elements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, order,
      const DeepCollectionEquality().hash(_elements));

  /// Create a copy of SectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionModelImplCopyWith<_$SectionModelImpl> get copyWith =>
      __$$SectionModelImplCopyWithImpl<_$SectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionModelImplToJson(
      this,
    );
  }
}

abstract class _SectionModel implements SectionModel {
  const factory _SectionModel(
      {final String title,
      final int order,
      final List<ElementModel> elements}) = _$SectionModelImpl;

  factory _SectionModel.fromJson(Map<String, dynamic> json) =
      _$SectionModelImpl.fromJson;

  @override
  String get title;
  @override
  int get order;
  @override
  List<ElementModel> get elements;

  /// Create a copy of SectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionModelImplCopyWith<_$SectionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ElementModel _$ElementModelFromJson(Map<String, dynamic> json) {
  return _ElementModel.fromJson(json);
}

/// @nodoc
mixin _$ElementModel {
  String get type => throw _privateConstructorUsedError;
  bool get bold => throw _privateConstructorUsedError;
  bool get link => throw _privateConstructorUsedError;
  List<ElementModel> get children => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get box => throw _privateConstructorUsedError;
  bool get center => throw _privateConstructorUsedError;
  bool get showPrefixSymbol => throw _privateConstructorUsedError;
  String get fullUrl => throw _privateConstructorUsedError;

  /// Serializes this ElementModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ElementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ElementModelCopyWith<ElementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementModelCopyWith<$Res> {
  factory $ElementModelCopyWith(
          ElementModel value, $Res Function(ElementModel) then) =
      _$ElementModelCopyWithImpl<$Res, ElementModel>;
  @useResult
  $Res call(
      {String type,
      bool bold,
      bool link,
      List<ElementModel> children,
      String content,
      bool box,
      bool center,
      bool showPrefixSymbol,
      String fullUrl});
}

/// @nodoc
class _$ElementModelCopyWithImpl<$Res, $Val extends ElementModel>
    implements $ElementModelCopyWith<$Res> {
  _$ElementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ElementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? bold = null,
    Object? link = null,
    Object? children = null,
    Object? content = null,
    Object? box = null,
    Object? center = null,
    Object? showPrefixSymbol = null,
    Object? fullUrl = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bold: null == bold
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as bool,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ElementModel>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      box: null == box
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as bool,
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as bool,
      showPrefixSymbol: null == showPrefixSymbol
          ? _value.showPrefixSymbol
          : showPrefixSymbol // ignore: cast_nullable_to_non_nullable
              as bool,
      fullUrl: null == fullUrl
          ? _value.fullUrl
          : fullUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ElementModelImplCopyWith<$Res>
    implements $ElementModelCopyWith<$Res> {
  factory _$$ElementModelImplCopyWith(
          _$ElementModelImpl value, $Res Function(_$ElementModelImpl) then) =
      __$$ElementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      bool bold,
      bool link,
      List<ElementModel> children,
      String content,
      bool box,
      bool center,
      bool showPrefixSymbol,
      String fullUrl});
}

/// @nodoc
class __$$ElementModelImplCopyWithImpl<$Res>
    extends _$ElementModelCopyWithImpl<$Res, _$ElementModelImpl>
    implements _$$ElementModelImplCopyWith<$Res> {
  __$$ElementModelImplCopyWithImpl(
      _$ElementModelImpl _value, $Res Function(_$ElementModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ElementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? bold = null,
    Object? link = null,
    Object? children = null,
    Object? content = null,
    Object? box = null,
    Object? center = null,
    Object? showPrefixSymbol = null,
    Object? fullUrl = null,
  }) {
    return _then(_$ElementModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bold: null == bold
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as bool,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ElementModel>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      box: null == box
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as bool,
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as bool,
      showPrefixSymbol: null == showPrefixSymbol
          ? _value.showPrefixSymbol
          : showPrefixSymbol // ignore: cast_nullable_to_non_nullable
              as bool,
      fullUrl: null == fullUrl
          ? _value.fullUrl
          : fullUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ElementModelImpl implements _ElementModel {
  const _$ElementModelImpl(
      {this.type = '',
      this.bold = false,
      this.link = false,
      final List<ElementModel> children = const [],
      this.content = '',
      this.box = false,
      this.center = false,
      this.showPrefixSymbol = true,
      this.fullUrl = ''})
      : _children = children;

  factory _$ElementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ElementModelImplFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final bool bold;
  @override
  @JsonKey()
  final bool link;
  final List<ElementModel> _children;
  @override
  @JsonKey()
  List<ElementModel> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final bool box;
  @override
  @JsonKey()
  final bool center;
  @override
  @JsonKey()
  final bool showPrefixSymbol;
  @override
  @JsonKey()
  final String fullUrl;

  @override
  String toString() {
    return 'ElementModel(type: $type, bold: $bold, link: $link, children: $children, content: $content, box: $box, center: $center, showPrefixSymbol: $showPrefixSymbol, fullUrl: $fullUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.bold, bold) || other.bold == bold) &&
            (identical(other.link, link) || other.link == link) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.box, box) || other.box == box) &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.showPrefixSymbol, showPrefixSymbol) ||
                other.showPrefixSymbol == showPrefixSymbol) &&
            (identical(other.fullUrl, fullUrl) || other.fullUrl == fullUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      bold,
      link,
      const DeepCollectionEquality().hash(_children),
      content,
      box,
      center,
      showPrefixSymbol,
      fullUrl);

  /// Create a copy of ElementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementModelImplCopyWith<_$ElementModelImpl> get copyWith =>
      __$$ElementModelImplCopyWithImpl<_$ElementModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ElementModelImplToJson(
      this,
    );
  }
}

abstract class _ElementModel implements ElementModel {
  const factory _ElementModel(
      {final String type,
      final bool bold,
      final bool link,
      final List<ElementModel> children,
      final String content,
      final bool box,
      final bool center,
      final bool showPrefixSymbol,
      final String fullUrl}) = _$ElementModelImpl;

  factory _ElementModel.fromJson(Map<String, dynamic> json) =
      _$ElementModelImpl.fromJson;

  @override
  String get type;
  @override
  bool get bold;
  @override
  bool get link;
  @override
  List<ElementModel> get children;
  @override
  String get content;
  @override
  bool get box;
  @override
  bool get center;
  @override
  bool get showPrefixSymbol;
  @override
  String get fullUrl;

  /// Create a copy of ElementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ElementModelImplCopyWith<_$ElementModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
