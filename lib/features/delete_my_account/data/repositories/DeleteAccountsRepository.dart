import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';

abstract class DeleteAccountRepository {
  Future<Either<MAError, Empty>> deleteAccount(String residentId);
}