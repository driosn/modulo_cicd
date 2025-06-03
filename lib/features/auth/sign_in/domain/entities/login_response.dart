import 'package:resident_app/features/auth/sign_in/domain/entities/user_claim.dart';

class LoginResponse {
  const LoginResponse({
    required this.successful,
    required this.rpmRefreshToken,
    required this.userClaims,
    required this.expiresUtc,
    required this.apiMessage,
  });

  final bool successful;
  final String rpmRefreshToken;
  final List<UserClaim> userClaims;
  final String expiresUtc;
  final String apiMessage;
}

extension LoginResponseExtensions on LoginResponse {
  UserClaim? get userIdClaim {
    try {
      return userClaims.firstWhere((claim) => claim.type == 'user_id');
    } catch (e) {
      return null;
    }
  }
}
