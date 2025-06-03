import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/auth/sign_in/data/datasources/login_remote_datasource.dart';
import 'package:resident_app/features/auth/sign_in/domain/entities/login_body.dart';
import 'package:resident_app/features/auth/sign_in/domain/entities/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  const LoginRepositoryImpl({
    required LoginRemoteDataSource loginRemoteDataSource,
  }) : _loginRemoteDataSource = loginRemoteDataSource;

  final LoginRemoteDataSource _loginRemoteDataSource;

  @override
  Future<Either<Failure, LoginBody>> login(
    String username,
    String password,
  ) async {
    try {
      final loginBody = await _loginRemoteDataSource.login(username, password);
      return Right(loginBody);
    } catch (e) {
      return Left(
        Failure(message: 'Unexpected Failure'),
      );
    }
  }
}
