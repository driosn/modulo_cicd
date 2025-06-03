import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:resident_app/features/bills_and_payments/data/models/billings_model.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/billings.dart';

void main() {
  group(
    'Billings Model from json',
    () {
      late File jsonFile;
      late Map<String, dynamic> json;

      setUp(
        () async {
          jsonFile = File('test_resources/billings_question_model.json');
          json = jsonDecode(await jsonFile.readAsString());
        },
      );

      test(
        'Should return a valid BillingsModel instance from a valid json',
        () {
          final billingsModel = BillingsModel.fromJson(json);

          expect(billingsModel, isA<BillingsModel>());
        },
      );

      test(
        'Should return a valid BillingsModel instance from a empty json',
        () {
          final billingsModel = BillingsModel.fromJson({});

          expect(billingsModel, isA<BillingsModel>());
        },
      );

      test(
        'Instance of BillingsModel should be Billings type ',
        () {
          const billingsModel = BillingsModel();

          expect(billingsModel, isA<Billings>());
        },
      );
    },
  );
}
