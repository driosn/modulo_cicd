import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/features/bills_and_payments/data/datasources/billings_remote_datasource.dart';
import 'package:resident_app/features/bills_and_payments/data/models/billings_model.dart';

class BillingsApiDataSource implements BillingsRemoteDataSource {
  const BillingsApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<BillingsModel> getByCompanyIdResidentId(
    String companyId,
    String residentId,
  ) async {
    try {
      final response = await _dio.get('/BillingHistory',
          queryParameters: {'companyId': companyId, 'residentId': residentId});
      if (response.isSuccess) {
        final data = {
          "billings": response.data,
        };
        return BillingsModel.fromJson(data);
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Uint8List> getBillingPDF(
    String billingId,
  ) async {
    try {
      final response = await _dio.get(
        '/BillingHistory/statement/$billingId',
        options: Options(responseType: ResponseType.bytes),
      );

      if (response.isSuccess) {
        final bytes = response.data as Uint8List;
        return bytes;
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
