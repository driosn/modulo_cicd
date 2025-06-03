import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/extensions/response_extensions.dart';
import 'package:resident_app/features/bills_and_payments/data/datasources/payments_remote_datasource.dart';
import 'package:resident_app/features/bills_and_payments/data/models/payments_model.dart';

class PaymentsApiDataSource implements PaymentsRemoteDataSource {
  const PaymentsApiDataSource({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<PaymentsModel> getByPropertyId(String propertyId) async {
    try {
      final response = await _dio.get('/Payments/PaymentHistory',
          queryParameters: {'residentId': propertyId});

      if (response.isSuccess) {
        final data = {
          "payments": response.data,
        };
        return PaymentsModel.fromJson(data);
      }

      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
