import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/payment_account/common/error_parser.dart';
import 'package:resident_app/features/payment_account/common/payment_account_create_params.dart';
import 'package:resident_app/features/payment_account/common/payment_account_update_params.dart';
import 'package:resident_app/features/payment_account/data/datasources/payment_accounts_remote_datasource.dart';
import 'package:resident_app/features/payment_account/domain/entities/payment_accounts.dart';
import 'package:resident_app/features/payment_account/domain/repositories/payment_accounts_repository.dart';

class PaymentAccountsRepositoryImpl implements PaymentAccountsRepository {
  const PaymentAccountsRepositoryImpl({
    required PaymentAccountsRemoteDataSource paymentAccountsRemoteDataSource,
    required ErrorParser errorParser,
  })  : _paymentAccountsRemoteDataSource = paymentAccountsRemoteDataSource,
        _errorParser = errorParser;

  final PaymentAccountsRemoteDataSource _paymentAccountsRemoteDataSource;
  final ErrorParser _errorParser;

  @override
  Future<Either<Failure, PaymentAccounts>> getByResidentId(
    String residentId,
  ) async {
    try {
      final paymentAccounts =
          await _paymentAccountsRemoteDataSource.getByResidentId(
        residentId,
      );
      return Right(paymentAccounts);
    } catch (e) {
      return Left(
        Failure(message: 'Unexpected exception'),
      );
    }
  }

  @override
  Future<Either<MAError, Empty>> create(
      PaymentAccountsCreateParams createParams) async {
    try {
      await _paymentAccountsRemoteDataSource.create(createParams);

      return Right(Empty());
    } on DioException catch (e) {
      if (e.response!.data.toString().isEmpty) {
        return const Left(
          MAError.internalServerError(),
        );
      }
      final String message = _errorParser.extractErrorMessage(e.response?.data);
      if (message.contains('Invalid routing number.') ||
          message.contains('Número de ruta no válido.')) {
        return Left(
          MAError.badRequest(),
        );
      }
      return Left(
        MAError.unexpected(
          message: message.isEmpty ? 'Unexpected exception' : message,
        ),
      );
    } catch (e) {
      return Left(
        MAError.unexpected(),
      );
    }
  }

  @override
  Future<Either<MAError, Empty>> update(
      PaymentAccountsUpdateParams updateParams) async {
    try {
      await _paymentAccountsRemoteDataSource.update(updateParams);

      return Right(Empty());
    } on DioException catch (e) {
      if (e.response!.data.toString().isEmpty) {
        return const Left(
          MAError.internalServerError(),
        );
      }
      final String message = _errorParser.extractErrorMessage(e.response?.data);
      if (message.contains('Invalid routing number.') ||
          message.contains('Número de ruta no válido.')) {
        return Left(
          MAError.badRequest(),
        );
      }
      return Left(
        MAError.unexpected(
          message: message.isEmpty ? 'Unexpected exception' : message,
        ),
      );
    } catch (e) {
      return Left(
        MAError.unexpected(),
      );
    }
  }

  @override
  Future<Either<Failure, Empty>> deleteByResidentId(
    String residentId,
  ) async {
    try {
      final paymentAccounts =
          await _paymentAccountsRemoteDataSource.deleteByResidentId(
        residentId,
      );
      return Right(Empty());
    } on DioException catch (e) {
      final jsonString = e.response?.data
          .replaceFirst('Error:', '')
          .trim()
          .replaceAll(RegExp(r',$'), '');
      final Map<String, dynamic> jsonData = jsonDecode(jsonString);
      final String message = jsonData['errorDetails']['message'];
      return Left(
        Failure(message: message.isEmpty ? 'Unexpected exception' : message),
      );
    } catch (e) {
      return Left(
        Failure(message: 'Unexpected exception'),
      );
    }
  }
}
