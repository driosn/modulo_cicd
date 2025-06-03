import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/auth/sign_in/domain/entities/user_claim.dart';

part 'user_claim_model.freezed.dart';
part 'user_claim_model.g.dart';

@freezed
class UserClaimModel extends UserClaim with _$UserClaimModel {
  const factory UserClaimModel({
    @Default('') String type,
    @Default('') String value,
    @Default('') String valueType,
    @Default('') String issuer,
    @Default('') String originalIssuer,
  }) = _UserClaimModel;

  factory UserClaimModel.fromJson(Map<String, dynamic> json) =>
      _$UserClaimModelFromJson(json);
}
