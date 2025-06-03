import 'package:dio/dio.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/features/payment_account/common/payment_account_create_params.dart';
import 'package:resident_app/features/payment_account/common/payment_account_update_params.dart';
import 'package:resident_app/features/payment_account/data/datasources/payment_accounts_remote_datasource.dart';
import 'package:resident_app/features/payment_account/data/models/payment_accounts_model.dart';

class PaymentAccountsApiDataSource implements PaymentAccountsRemoteDataSource {
  const PaymentAccountsApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<PaymentAccountsModel> getByResidentId(
    String residentId,
  ) async {
    try {
      final response = await _dio.get('/Payments/PaymentAccountSettings', queryParameters: {'selectedSiteResidentId': residentId});

      if (response.isSuccess) {
        final data = response.data;
        return PaymentAccountsModel.fromJson(data);
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> create(PaymentAccountsCreateParams createParams) async {
    try {
      final response = await _dio.post(
        '/Payments/AddBankAccount',
        data: createParams.toJson(),
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
  Future<void> update(PaymentAccountsUpdateParams updateParams) async {
    try {
      final response = await _dio.patch(
        '/Payments/UpdateBankAccount',
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
  Future<void> deleteByResidentId(
    String residentId,
  ) async {
    try {
      final response = await _dio.delete(
        '/Payments/DeleteBankAccount?residentId=$residentId',
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
