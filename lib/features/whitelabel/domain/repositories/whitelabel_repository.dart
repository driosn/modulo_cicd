import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/whitelabel/domain/entities/whitelabel.dart';

abstract class WhitelabelRepository {
  Future<Either<MAError, Whitelabel>> setup({
    int? corePropertyId,
    int? coreCompanyId,
  });

  Future<Either<MAError, Whitelabel>> get({
    int? corePropertyId,
    int? coreCompanyId,
  });

  Future<void> set(
    Whitelabel whitelabelSettings,
  );

  Future<void> reset();
}
