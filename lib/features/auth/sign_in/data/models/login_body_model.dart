import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/auth/sign_in/data/models/login_response_model.dart';
import 'package:resident_app/features/auth/sign_in/domain/entities/login_body.dart';

part 'login_body_model.freezed.dart';
part 'login_body_model.g.dart';

@freezed
class LoginBodyModel extends LoginBody with _$LoginBodyModel {
  const factory LoginBodyModel({
    @Default(LoginResponseModel()) LoginResponseModel loginResponse,
    @Default('') String token,
  }) = _LoginBodyModel;

  factory LoginBodyModel.fromJson(Map<String, dynamic> json) =>
      _$LoginBodyModelFromJson(json);
}
