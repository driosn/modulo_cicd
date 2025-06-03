import 'package:resident_app/features/auth/sign_in/domain/entities/login_response.dart';

class LoginBody {
  const LoginBody({
    required this.loginResponse,
    required this.token,
  });

  final LoginResponse loginResponse;
  final String token;
}
