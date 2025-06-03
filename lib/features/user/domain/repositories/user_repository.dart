import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/user/domain/entities/user_entities.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> get();
}
