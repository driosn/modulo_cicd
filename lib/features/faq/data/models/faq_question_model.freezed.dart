// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FaqAnswerItemModel _$FaqAnswerItemModelFromJson(Map<String, dynamic> json) {
  return _FaqAnswerItemModel.fromJson(json);
}

/// @nodoc
mixin _$FaqAnswerItemModel {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  List<FaqAnswerItemModel> get values => throw _privateConstructorUsedError;

  /// Serializes this FaqAnswerItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FaqAnswerItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqAnswerItemModelCopyWith<FaqAnswerItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqAnswerItemModelCopyWith<$Res> {
  factory $FaqAnswerItemModelCopyWith(
          FaqAnswerItemModel value, $Res Function(FaqAnswerItemModel) then) =
      _$FaqAnswerItemModelCopyWithImpl<$Res, FaqAnswerItemModel>;
  @useResult
  $Res call({String type, String value, List<FaqAnswerItemModel> values});
}

/// @nodoc
class _$FaqAnswerItemModelCopyWithImpl<$Res, $Val extends FaqAnswerItemModel>
    implements $FaqAnswerItemModelCopyWith<$Res> {
  _$FaqAnswerItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqAnswerItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<FaqAnswerItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqAnswerItemModelImplCopyWith<$Res>
    implements $FaqAnswerItemModelCopyWith<$Res> {
  factory _$$FaqAnswerItemModelImplCopyWith(_$FaqAnswerItemModelImpl value,
          $Res Function(_$FaqAnswerItemModelImpl) then) =
      __$$FaqAnswerItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String value, List<FaqAnswerItemModel> values});
}

/// @nodoc
class __$$FaqAnswerItemModelImplCopyWithImpl<$Res>
    extends _$FaqAnswerItemModelCopyWithImpl<$Res, _$FaqAnswerItemModelImpl>
    implements _$$FaqAnswerItemModelImplCopyWith<$Res> {
  __$$FaqAnswerItemModelImplCopyWithImpl(_$FaqAnswerItemModelImpl _value,
      $Res Function(_$FaqAnswerItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqAnswerItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? values = null,
  }) {
    return _then(_$FaqAnswerItemModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<FaqAnswerItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqAnswerItemModelImpl implements _FaqAnswerItemModel {
  const _$FaqAnswerItemModelImpl(
      {this.type = '',
      this.value = '',
      final List<FaqAnswerItemModel> values = const <FaqAnswerItemModel>[]})
      : _values = values;

  factory _$FaqAnswerItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqAnswerItemModelImplFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String value;
  final List<FaqAnswerItemModel> _values;
  @override
  @JsonKey()
  List<FaqAnswerItemModel> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'FaqAnswerItemModel(type: $type, value: $value, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqAnswerItemModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, value, const DeepCollectionEquality().hash(_values));

  /// Create a copy of FaqAnswerItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqAnswerItemModelImplCopyWith<_$FaqAnswerItemModelImpl> get copyWith =>
      __$$FaqAnswerItemModelImplCopyWithImpl<_$FaqAnswerItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqAnswerItemModelImplToJson(
      this,
    );
  }
}

abstract class _FaqAnswerItemModel implements FaqAnswerItemModel {
  const factory _FaqAnswerItemModel(
      {final String type,
      final String value,
      final List<FaqAnswerItemModel> values}) = _$FaqAnswerItemModelImpl;

  factory _FaqAnswerItemModel.fromJson(Map<String, dynamic> json) =
      _$FaqAnswerItemModelImpl.fromJson;

  @override
  String get type;
  @override
  String get value;
  @override
  List<FaqAnswerItemModel> get values;

  /// Create a copy of FaqAnswerItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqAnswerItemModelImplCopyWith<_$FaqAnswerItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FaqSingleComponentModel _$FaqSingleComponentModelFromJson(
    Map<String, dynamic> json) {
  return _FaqSingleComponentModel.fromJson(json);
}

/// @nodoc
mixin _$FaqSingleComponentModel {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  List<FaqAnswerItemModel> get values => throw _privateConstructorUsedError;

  /// Serializes this FaqSingleComponentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FaqSingleComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqSingleComponentModelCopyWith<FaqSingleComponentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqSingleComponentModelCopyWith<$Res> {
  factory $FaqSingleComponentModelCopyWith(FaqSingleComponentModel value,
          $Res Function(FaqSingleComponentModel) then) =
      _$FaqSingleComponentModelCopyWithImpl<$Res, FaqSingleComponentModel>;
  @useResult
  $Res call({String type, String value, List<FaqAnswerItemModel> values});
}

/// @nodoc
class _$FaqSingleComponentModelCopyWithImpl<$Res,
        $Val extends FaqSingleComponentModel>
    implements $FaqSingleComponentModelCopyWith<$Res> {
  _$FaqSingleComponentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqSingleComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<FaqAnswerItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqSingleComponentModelImplCopyWith<$Res>
    implements $FaqSingleComponentModelCopyWith<$Res> {
  factory _$$FaqSingleComponentModelImplCopyWith(
          _$FaqSingleComponentModelImpl value,
          $Res Function(_$FaqSingleComponentModelImpl) then) =
      __$$FaqSingleComponentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String value, List<FaqAnswerItemModel> values});
}

/// @nodoc
class __$$FaqSingleComponentModelImplCopyWithImpl<$Res>
    extends _$FaqSingleComponentModelCopyWithImpl<$Res,
        _$FaqSingleComponentModelImpl>
    implements _$$FaqSingleComponentModelImplCopyWith<$Res> {
  __$$FaqSingleComponentModelImplCopyWithImpl(
      _$FaqSingleComponentModelImpl _value,
      $Res Function(_$FaqSingleComponentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqSingleComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? values = null,
  }) {
    return _then(_$FaqSingleComponentModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<FaqAnswerItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqSingleComponentModelImpl implements _FaqSingleComponentModel {
  const _$FaqSingleComponentModelImpl(
      {this.type = '',
      this.value = '',
      final List<FaqAnswerItemModel> values = const <FaqAnswerItemModel>[]})
      : _values = values;

  factory _$FaqSingleComponentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqSingleComponentModelImplFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String value;
  final List<FaqAnswerItemModel> _values;
  @override
  @JsonKey()
  List<FaqAnswerItemModel> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'FaqSingleComponentModel(type: $type, value: $value, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqSingleComponentModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, value, const DeepCollectionEquality().hash(_values));

  /// Create a copy of FaqSingleComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqSingleComponentModelImplCopyWith<_$FaqSingleComponentModelImpl>
      get copyWith => __$$FaqSingleComponentModelImplCopyWithImpl<
          _$FaqSingleComponentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqSingleComponentModelImplToJson(
      this,
    );
  }
}

abstract class _FaqSingleComponentModel implements FaqSingleComponentModel {
  const factory _FaqSingleComponentModel(
      {final String type,
      final String value,
      final List<FaqAnswerItemModel> values}) = _$FaqSingleComponentModelImpl;

  factory _FaqSingleComponentModel.fromJson(Map<String, dynamic> json) =
      _$FaqSingleComponentModelImpl.fromJson;

  @override
  String get type;
  @override
  String get value;
  @override
  List<FaqAnswerItemModel> get values;

  /// Create a copy of FaqSingleComponentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqSingleComponentModelImplCopyWith<_$FaqSingleComponentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FaqListModel _$FaqListModelFromJson(Map<String, dynamic> json) {
  return _FaqListModel.fromJson(json);
}

/// @nodoc
mixin _$FaqListModel {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  List<FaqAnswerItemModel> get values => throw _privateConstructorUsedError;

  /// Serializes this FaqListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FaqListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqListModelCopyWith<FaqListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqListModelCopyWith<$Res> {
  factory $FaqListModelCopyWith(
          FaqListModel value, $Res Function(FaqListModel) then) =
      _$FaqListModelCopyWithImpl<$Res, FaqListModel>;
  @useResult
  $Res call({String type, String value, List<FaqAnswerItemModel> values});
}

/// @nodoc
class _$FaqListModelCopyWithImpl<$Res, $Val extends FaqListModel>
    implements $FaqListModelCopyWith<$Res> {
  _$FaqListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<FaqAnswerItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqListModelImplCopyWith<$Res>
    implements $FaqListModelCopyWith<$Res> {
  factory _$$FaqListModelImplCopyWith(
          _$FaqListModelImpl value, $Res Function(_$FaqListModelImpl) then) =
      __$$FaqListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String value, List<FaqAnswerItemModel> values});
}

/// @nodoc
class __$$FaqListModelImplCopyWithImpl<$Res>
    extends _$FaqListModelCopyWithImpl<$Res, _$FaqListModelImpl>
    implements _$$FaqListModelImplCopyWith<$Res> {
  __$$FaqListModelImplCopyWithImpl(
      _$FaqListModelImpl _value, $Res Function(_$FaqListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? values = null,
  }) {
    return _then(_$FaqListModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<FaqAnswerItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqListModelImpl implements _FaqListModel {
  const _$FaqListModelImpl(
      {this.type = '',
      this.value = '',
      final List<FaqAnswerItemModel> values = const <FaqAnswerItemModel>[]})
      : _values = values;

  factory _$FaqListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqListModelImplFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String value;
  final List<FaqAnswerItemModel> _values;
  @override
  @JsonKey()
  List<FaqAnswerItemModel> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'FaqListModel(type: $type, value: $value, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqListModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, value, const DeepCollectionEquality().hash(_values));

  /// Create a copy of FaqListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqListModelImplCopyWith<_$FaqListModelImpl> get copyWith =>
      __$$FaqListModelImplCopyWithImpl<_$FaqListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqListModelImplToJson(
      this,
    );
  }
}

abstract class _FaqListModel implements FaqListModel {
  const factory _FaqListModel(
      {final String type,
      final String value,
      final List<FaqAnswerItemModel> values}) = _$FaqListModelImpl;

  factory _FaqListModel.fromJson(Map<String, dynamic> json) =
      _$FaqListModelImpl.fromJson;

  @override
  String get type;
  @override
  String get value;
  @override
  List<FaqAnswerItemModel> get values;

  /// Create a copy of FaqListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqListModelImplCopyWith<_$FaqListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FaqQuestionModel _$FaqQuestionModelFromJson(Map<String, dynamic> json) {
  return _FaqQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$FaqQuestionModel {
  String get group => throw _privateConstructorUsedError;
  String get section => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<FaqAnswerItemModel> get answer => throw _privateConstructorUsedError;

  /// Serializes this FaqQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FaqQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaqQuestionModelCopyWith<FaqQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqQuestionModelCopyWith<$Res> {
  factory $FaqQuestionModelCopyWith(
          FaqQuestionModel value, $Res Function(FaqQuestionModel) then) =
      _$FaqQuestionModelCopyWithImpl<$Res, FaqQuestionModel>;
  @useResult
  $Res call(
      {String group,
      String section,
      String question,
      List<FaqAnswerItemModel> answer});
}

/// @nodoc
class _$FaqQuestionModelCopyWithImpl<$Res, $Val extends FaqQuestionModel>
    implements $FaqQuestionModelCopyWith<$Res> {
  _$FaqQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaqQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? section = null,
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<FaqAnswerItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqQuestionModelImplCopyWith<$Res>
    implements $FaqQuestionModelCopyWith<$Res> {
  factory _$$FaqQuestionModelImplCopyWith(_$FaqQuestionModelImpl value,
          $Res Function(_$FaqQuestionModelImpl) then) =
      __$$FaqQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String group,
      String section,
      String question,
      List<FaqAnswerItemModel> answer});
}

/// @nodoc
class __$$FaqQuestionModelImplCopyWithImpl<$Res>
    extends _$FaqQuestionModelCopyWithImpl<$Res, _$FaqQuestionModelImpl>
    implements _$$FaqQuestionModelImplCopyWith<$Res> {
  __$$FaqQuestionModelImplCopyWithImpl(_$FaqQuestionModelImpl _value,
      $Res Function(_$FaqQuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaqQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? section = null,
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$FaqQuestionModelImpl(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      section: null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<FaqAnswerItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqQuestionModelImpl implements _FaqQuestionModel {
  const _$FaqQuestionModelImpl(
      {this.group = '',
      this.section = '',
      this.question = '',
      final List<FaqAnswerItemModel> answer = const <FaqAnswerItemModel>[]})
      : _answer = answer;

  factory _$FaqQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqQuestionModelImplFromJson(json);

  @override
  @JsonKey()
  final String group;
  @override
  @JsonKey()
  final String section;
  @override
  @JsonKey()
  final String question;
  final List<FaqAnswerItemModel> _answer;
  @override
  @JsonKey()
  List<FaqAnswerItemModel> get answer {
    if (_answer is EqualUnmodifiableListView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answer);
  }

  @override
  String toString() {
    return 'FaqQuestionModel(group: $group, section: $section, question: $question, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqQuestionModelImpl &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._answer, _answer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, group, section, question,
      const DeepCollectionEquality().hash(_answer));

  /// Create a copy of FaqQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqQuestionModelImplCopyWith<_$FaqQuestionModelImpl> get copyWith =>
      __$$FaqQuestionModelImplCopyWithImpl<_$FaqQuestionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _FaqQuestionModel implements FaqQuestionModel {
  const factory _FaqQuestionModel(
      {final String group,
      final String section,
      final String question,
      final List<FaqAnswerItemModel> answer}) = _$FaqQuestionModelImpl;

  factory _FaqQuestionModel.fromJson(Map<String, dynamic> json) =
      _$FaqQuestionModelImpl.fromJson;

  @override
  String get group;
  @override
  String get section;
  @override
  String get question;
  @override
  List<FaqAnswerItemModel> get answer;

  /// Create a copy of FaqQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaqQuestionModelImplCopyWith<_$FaqQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
