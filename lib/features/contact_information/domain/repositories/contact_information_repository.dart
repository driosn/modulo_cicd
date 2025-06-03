import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/contact_information/data/models/password_update_params_model.dart';
import 'package:resident_app/features/contact_information/domain/entities/contact_information_update_params.dart';

abstract class ContactInformationRepository {
  Future<Either<MAError, Empty>> update(
    ContactInformationUpdateParams updateParams,
  );
  Future<Either<MAError, Empty>> updatePassword(
    PasswordUpdateParamsModel passwordUpdateParams,
  );
  Future<Either<MAError, Empty>> updateEmail({
    required String newEmail,
    required String residentUserId,
  });
  Future<Either<MAError, Empty>> updateUsername({
    required String newUsername,
    required String residentUserId,
  });
}
