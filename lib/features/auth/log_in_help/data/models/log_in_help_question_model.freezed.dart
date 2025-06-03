// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_in_help_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LogInHelpQuestionModel _$LogInHelpQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _LogInHelpQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$LogInHelpQuestionModel {
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  /// Serializes this LogInHelpQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LogInHelpQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogInHelpQuestionModelCopyWith<LogInHelpQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInHelpQuestionModelCopyWith<$Res> {
  factory $LogInHelpQuestionModelCopyWith(LogInHelpQuestionModel value,
          $Res Function(LogInHelpQuestionModel) then) =
      _$LogInHelpQuestionModelCopyWithImpl<$Res, LogInHelpQuestionModel>;
  @useResult
  $Res call({String question, String answer});
}

/// @nodoc
class _$LogInHelpQuestionModelCopyWithImpl<$Res,
        $Val extends LogInHelpQuestionModel>
    implements $LogInHelpQuestionModelCopyWith<$Res> {
  _$LogInHelpQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogInHelpQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogInHelpQuestionModelImplCopyWith<$Res>
    implements $LogInHelpQuestionModelCopyWith<$Res> {
  factory _$$LogInHelpQuestionModelImplCopyWith(
          _$LogInHelpQuestionModelImpl value,
          $Res Function(_$LogInHelpQuestionModelImpl) then) =
      __$$LogInHelpQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, String answer});
}

/// @nodoc
class __$$LogInHelpQuestionModelImplCopyWithImpl<$Res>
    extends _$LogInHelpQuestionModelCopyWithImpl<$Res,
        _$LogInHelpQuestionModelImpl>
    implements _$$LogInHelpQuestionModelImplCopyWith<$Res> {
  __$$LogInHelpQuestionModelImplCopyWithImpl(
      _$LogInHelpQuestionModelImpl _value,
      $Res Function(_$LogInHelpQuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogInHelpQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$LogInHelpQuestionModelImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogInHelpQuestionModelImpl implements _LogInHelpQuestionModel {
  const _$LogInHelpQuestionModelImpl({this.question = '', this.answer = ''});

  factory _$LogInHelpQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogInHelpQuestionModelImplFromJson(json);

  @override
  @JsonKey()
  final String question;
  @override
  @JsonKey()
  final String answer;

  @override
  String toString() {
    return 'LogInHelpQuestionModel(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInHelpQuestionModelImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  /// Create a copy of LogInHelpQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInHelpQuestionModelImplCopyWith<_$LogInHelpQuestionModelImpl>
      get copyWith => __$$LogInHelpQuestionModelImplCopyWithImpl<
          _$LogInHelpQuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogInHelpQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _LogInHelpQuestionModel implements LogInHelpQuestionModel {
  const factory _LogInHelpQuestionModel(
      {final String question,
      final String answer}) = _$LogInHelpQuestionModelImpl;

  factory _LogInHelpQuestionModel.fromJson(Map<String, dynamic> json) =
      _$LogInHelpQuestionModelImpl.fromJson;

  @override
  String get question;
  @override
  String get answer;

  /// Create a copy of LogInHelpQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogInHelpQuestionModelImplCopyWith<_$LogInHelpQuestionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
