import 'package:resident_app/features/bills_and_payments/data/models/payments_model.dart';

abstract class PaymentsRemoteDataSource {
  Future<PaymentsModel> getByPropertyId(String id);
}
