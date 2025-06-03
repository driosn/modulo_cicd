import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/delete_my_account/data/datasources/delete_remote_datasource.dart';
import 'package:resident_app/features/payment_account/common/error_parser.dart';

import 'DeleteAccountsRepository.dart';

class DeleteAccountsRepositoryImpl implements DeleteAccountRepository {
  const DeleteAccountsRepositoryImpl({
    required DeleteRemoteDataSource deleteRemoteDataSource,
    required ErrorParser errorParser,
  })  : _deleteRemoteDataSource = deleteRemoteDataSource,
        _errorParser = errorParser;

  final DeleteRemoteDataSource _deleteRemoteDataSource;
  final ErrorParser _errorParser;

  @override
  Future<Either<MAError, Empty>> deleteAccount(
      String residentId,
      ) async {
    try {
      await _deleteRemoteDataSource.deleteAccount(residentId);
      return Right(Empty());
    } on DioException catch (e) {
      final jsonString = e.response?.data
          .replaceFirst('Error:', '')
          .trim()
          .replaceAll(RegExp(r',$'), '');
      final Map<String, dynamic> jsonData = jsonDecode(jsonString);
      final String message = jsonData['errorDetails']['message'];
      return Left(
        MAError.unexpected(message: message.isEmpty ? 'Unexpected exception' : message),
      );
    } catch (e) {
      return Left(
        MAError.unexpected(message: 'Unexpected exception'),
      );
    }
  }
}