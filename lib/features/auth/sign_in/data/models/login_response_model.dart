import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/auth/sign_in/data/models/user_claim_model.dart';
import 'package:resident_app/features/auth/sign_in/domain/entities/login_response.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel extends LoginResponse with _$LoginResponseModel {
  const factory LoginResponseModel({
    @Default(false) bool successful,
    @Default('') String rpmRefreshToken,
    @Default([]) List<UserClaimModel> userClaims,
    @Default('') String expiresUtc,
    @Default('') String apiMessage,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
