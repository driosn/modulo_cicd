import 'dart:typed_data';

import 'package:resident_app/features/bills_and_payments/data/models/billings_model.dart';

abstract class BillingsRemoteDataSource {
  Future<BillingsModel> getByCompanyIdResidentId(
    String companyId,
    String residentId,
  );

  Future<Uint8List> getBillingPDF(
    String billingId,
  );
}
