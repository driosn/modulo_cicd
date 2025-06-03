import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/user/data/datasources/user_remote_datasource.dart';
import 'package:resident_app/features/user/domain/entities/user_entities.dart';
import 'package:resident_app/features/user/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl({
    required UserRemoteDataSource userRemoteDataSource,
  }) : _userRemoteDataSource = userRemoteDataSource;

  final UserRemoteDataSource _userRemoteDataSource;

  @override
  Future<Either<Failure, User>> get() async {
    // try {
    final user = await _userRemoteDataSource.get();
    return Right(user);
    // } catch (e) {
    // print(e.toString());
    // return Left(
    // Failure(message: 'Unexpected exception'),
    // );
    // }
  }
}
