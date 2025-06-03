import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:resident_app/features/payment_account/data/models/payment_accounts_model.dart';
import 'package:resident_app/features/payment_account/domain/entities/payment_accounts.dart';

void main() {
  group(
    'PaymentAccount Model from json',
    () {
      late File jsonFile;
      late Map<String, dynamic> json;

      setUp(
        () async {
          jsonFile = File('test_resources/payment_accounts_model.json');
          json = jsonDecode(await jsonFile.readAsString());
        },
      );

      test(
        'Should return a valid PaymentAccountModel instance from a valid json',
        () {
          final paymentAccountModel = PaymentAccountsModel.fromJson(json);

          expect(paymentAccountModel, isA<PaymentAccountsModel>());
        },
      );

      test(
        'Instance of PaymentAccountModel should be PaymentAccount type ',
        () {
          const paymentAccountModel = PaymentAccountsModel();

          expect(paymentAccountModel, isA<PaymentAccounts>());
        },
      );
    },
  );
}
