import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/features/contact_information/data/datasources/contact_information_remote_datasource.dart';
import 'package:resident_app/features/contact_information/data/models/password_update_params_model.dart';
import 'package:resident_app/features/contact_information/domain/entities/contact_information_update_params.dart';

class ContactInformationApiDataSource
    implements ContactInformationRemoteDataSource {
  ContactInformationApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;
  @override
  Future<void> update(ContactInformationUpdateParams updateParams) async {
    try {
      final response = await _dio.patch(
        '/Resident/UpdateContactInformation',
        data: updateParams.toJson(),
      );

      if (response.isSuccess) {
        return;
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updatePassword(
      PasswordUpdateParamsModel passwordUpdateParamsModel) async {
    try {
      final response = await _dio.patch(
        '/ResidentUser/UpdatePassword',
        data: passwordUpdateParamsModel.toJson(),
      );

      if (response.isSuccess) {
        return;
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateEmail({
    required String newEmail,
    required String residentUserId,
  }) async {
    try {
      final response = await _dio.patch(
        '/ResidentUser/UpdateEmail',
        data: {
          'residentUserId': residentUserId,
          'emailAddress': newEmail,
        },
      );

      if (response.isSuccess) {
        return;
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateUsername(
      {required String residentUserId, required String newUsername}) async {
    try {
      final response = await _dio.patch(
        '/ResidentUser/UpdateUsername',
        data: {'residentUserId': residentUserId, 'userName': newUsername},
      );

      if (response.isSuccess) {
        return;
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
