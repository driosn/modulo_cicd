import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/auth/sign_in/domain/entities/login_body.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginBody>> login(
    String username,
    String password,
  );
}
