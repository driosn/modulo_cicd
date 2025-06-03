import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/application/bloc/payment_settings/payment_settings_bloc.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/domain/entities/property_payment_setting.dart';
import 'package:resident_app/features/make_a_payment/domain/repositories/make_a_payment_repository.dart';

import '../../../make_a_payment_mocks.dart';

void main() {
  group(
    PaymentSettingsEvent.getPaymentSettings,
    () {
      late MakeAPaymentRepository makeAPaymentRepository;

      final tSettings = <PropertyPaymentSetting>[];
      const tPropertyId = 'tPropertyId';

      setUp(() {
        makeAPaymentRepository = MockMakeAPaymentRepository();
      });

      blocTest(
        'emits [Loading, Success] when all goes success',
        build: () => PaymentSettingsBloc(
          makeAPaymentRepository: makeAPaymentRepository,
        ),
        act: (bloc) {
          when(() => makeAPaymentRepository.getPropertyPaymentSettings(any()))
              .thenAnswer(
            (_) async => Right(tSettings),
          );

          return bloc.add(
            const PaymentSettingsEvent.getPaymentSettings(
                tPropertyId, PayToType.rent()),
          );
        },
        expect: () => <PaymentSettingsState>[
          const PaymentSettingsState.loading(),
          const PaymentSettingsState.success(
            displayBankAccount: false,
            displayCreditCard: false,
            displayGooglePlay: false,
            displayMobileWallet: false,
            displayPayPal: false,
            displayVenmo: false,
          ),
        ],
      );

      blocTest(
        'emits [Loading, Failure] when GetPaymentSettings event is added',
        build: () => PaymentSettingsBloc(
          makeAPaymentRepository: makeAPaymentRepository,
        ),
        act: (bloc) {
          when(() => makeAPaymentRepository.getPropertyPaymentSettings(any()))
              .thenAnswer(
            (_) async => const Left(MAError.unexpected()),
          );

          return bloc.add(
            const PaymentSettingsEvent.getPaymentSettings(
                tPropertyId, PayToType.rent()),
          );
        },
        expect: () => <PaymentSettingsState>[
          const PaymentSettingsState.loading(),
          const PaymentSettingsState.failure(MAError.unexpected())
        ],
      );
    },
  );
}
