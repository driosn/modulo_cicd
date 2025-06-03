import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/contact_information/data/datasources/contact_information_remote_datasource.dart';
import 'package:resident_app/features/contact_information/data/models/password_update_params_model.dart';
import 'package:resident_app/features/contact_information/domain/entities/contact_information_update_params.dart';
import 'package:resident_app/features/contact_information/domain/repositories/contact_information_repository.dart';

class ContactInformationRepositoryImpl implements ContactInformationRepository {
  const ContactInformationRepositoryImpl({
    required ContactInformationRemoteDataSource
        contactInformationRemoteDataSource,
  }) : _remoteDataSource = contactInformationRemoteDataSource;

  final ContactInformationRemoteDataSource _remoteDataSource;

  @override
  Future<Either<MAError, Empty>> update(
    ContactInformationUpdateParams updateParams,
  ) async {
    try {
      await _remoteDataSource.update(updateParams);

      return Right(Empty());
    } on DioException catch (e) {
      return const Left(
        MAError.internalServerError(),
      );
    } catch (e) {
      return const Left(
        MAError.unexpected(),
      );
    }
  }

  @override
  Future<Either<MAError, Empty>> updatePassword(
      PasswordUpdateParamsModel passwordUpdateParams) async {
    try {
      await _remoteDataSource.updatePassword(passwordUpdateParams);

      return Right(Empty());
    } on DioException catch (e) {
      return const Left(
        MAError.internalServerError(),
      );
    } catch (e) {
      return const Left(
        MAError.unexpected(),
      );
    }
  }

  @override
  Future<Either<MAError, Empty>> updateEmail({
    required String newEmail,
    required String residentUserId,
  }) async {
    try {
      await _remoteDataSource.updateEmail(
        newEmail: newEmail,
        residentUserId: residentUserId,
      );

      return Right(Empty());
    } on DioException catch (e) {
      return const Left(
        MAError.internalServerError(),
      );
    } catch (e) {
      return const Left(
        MAError.unexpected(),
      );
    }
  }

  @override
  Future<Either<MAError, Empty>> updateUsername({
    required String residentUserId,
    required String newUsername,
  }) async {
    try {
      await _remoteDataSource.updateUsername(
        newUsername: newUsername,
        residentUserId: residentUserId,
      );

      return Right(Empty());
    } on DioException catch (e) {
      return const Left(
        MAError.internalServerError(),
      );
    } catch (e) {
      return const Left(
        MAError.unexpected(),
      );
    }
  }
}
