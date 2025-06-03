import 'package:resident_app/features/contact_information/data/models/password_update_params_model.dart';
import 'package:resident_app/features/contact_information/domain/entities/contact_information_update_params.dart';

abstract class ContactInformationRemoteDataSource {
  Future<void> update(
    ContactInformationUpdateParams updateParams,
  );
  Future<void> updateEmail({
    required String newEmail,
    required String residentUserId
  }
  );
  Future<void> updateUsername({
    required String newUsername,
    required String residentUserId
  }
  );
  Future<void> updatePassword(
    PasswordUpdateParamsModel updateParams,
  );
}
