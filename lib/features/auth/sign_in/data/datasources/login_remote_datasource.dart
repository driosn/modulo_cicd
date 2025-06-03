import 'package:resident_app/features/auth/sign_in/data/models/login_body_model.dart';

abstract class LoginRemoteDataSource {
  Future<LoginBodyModel> login(
    String username,
    String password,
  );
}
