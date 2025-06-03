import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:resident_app/core/shared/formz_inputs/formz_inputs.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/application/bloc/setup_payment/setup_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/presentation/enums/make_a_payment_enums.dart';

import '../../../../../common/test_mocks.dart';

void main() {
  group(
    'Setup Payment Form',
    () {
      final errorMessagesHelper = MockErrorMessagesHelper();

      const tStringAmount = '\$1500.0';
      const tPaymentAmountType = PaymentAmountType.aDifferentAmount;
      const tPaymentMethodType = MPPaymentMethodType.mobileWallet;
      blocTest(
        'Should change amount when SetAmountEvent is added',
        build: () => SetupPaymentBloc(
          errorMessagesHelper: errorMessagesHelper,
        ),
        act: (bloc) {
          bloc.add(
            const SetupPaymentEvent.setAmount(
              tStringAmount,
            ),
          );
        },
        expect: () => <SetupPaymentState>[
          const SetupPaymentState(
            paymentAmount: DollarInput.dirty(true, tStringAmount),
          )
        ],
      );

      blocTest(
        'Should change paymentAmountType when SetPaymentAmountTypeEvent is added',
        build: () => SetupPaymentBloc(
          errorMessagesHelper: errorMessagesHelper,
        ),
        act: (bloc) {
          bloc.add(
            const SetupPaymentEvent.setPaymentAmountType(
              tPaymentAmountType,
            ),
          );
        },
        expect: () => <SetupPaymentState>[
          const SetupPaymentState(
            paymentAmountType: tPaymentAmountType,
          )
        ],
      );

      blocTest(
        'Should change paymentMethodType when SetPaymentMethodEvent is added',
        build: () => SetupPaymentBloc(
          errorMessagesHelper: errorMessagesHelper,
        ),
        act: (bloc) {
          bloc.add(
            const SetupPaymentEvent.setPaymentMethodType(
              tPaymentMethodType,
            ),
          );
        },
        expect: () => <SetupPaymentState>[
          const SetupPaymentState(
            paymentMethodType: tPaymentMethodType,
          )
        ],
      );

      // blocTest(
      //   'Should emit [initial, notValid] statuses when ValidateSetupPaymentEvent is added without adding amount',
      //   build: () => SetupPaymentBloc(
      //     errorMessagesHelper: errorMessagesHelper,
      //   ),
      //   act: (bloc) {
      //     when(() => errorMessagesHelper.dollarInput).thenReturn(
      //       <DollarInputValidationError, String>{
      //         DollarInputValidationError.empty: 'tEmptyError'
      //       },
      //     );

      //     bloc.add(
      //       const SetupPaymentEvent.setPaymentAmountType(
      //         PaymentAmountType.aDifferentAmount,
      //       ),
      //     );
      //     bloc.add(
      //       const SetupPaymentEvent.validateSetupPayment(),
      //     );
      //   },
      //   expect: () => <SetupPaymentState>[
      //     const SetupPaymentState(
      //       paymentAmountType: PaymentAmountType.aDifferentAmount,
      //       setupPaymentValidationStatus:
      //           SetupPaymentValidationStatus.initial(),
      //     ),
      //     const SetupPaymentState(
      //       paymentAmountType: PaymentAmountType.aDifferentAmount,
      //       paymentAmountErrorMessage: 'tEmptyError',
      //       setupPaymentValidationStatus:
      //           SetupPaymentValidationStatus.notValid(),
      //     )
      //   ],
      // );

      // blocTest(
      //   'Should emit [initial, valid] statuses when ValidateSetupPaymentEvent is added adding amount',
      //   build: () => SetupPaymentBloc(
      //     errorMessagesHelper: errorMessagesHelper,
      //   ),
      //   act: (bloc) {
      //     when(() => errorMessagesHelper.dollarInput).thenReturn(
      //       <DollarInputValidationError, String>{
      //         DollarInputValidationError.empty: 'tEmptyError'
      //       },
      //     );

      //     bloc.add(
      //       const SetupPaymentEvent.setPaymentAmountType(
      //         PaymentAmountType.aDifferentAmount,
      //       ),
      //     );
      //     bloc.add(
      //       const SetupPaymentEvent.setAmount(tStringAmount),
      //     );
      //     bloc.add(
      //       const SetupPaymentEvent.validateSetupPayment(),
      //     );
      //   },
      //   expect: () => <SetupPaymentState>[
      //     const SetupPaymentState(
      //       paymentAmountType: PaymentAmountType.aDifferentAmount,
      //       setupPaymentValidationStatus:
      //           SetupPaymentValidationStatus.initial(),
      //     ),
      //     const SetupPaymentState(
      //       paymentAmountType: PaymentAmountType.aDifferentAmount,
      //       paymentAmount: DollarInput.dirty(true, tStringAmount),
      //       setupPaymentValidationStatus:
      //           SetupPaymentValidationStatus.initial(),
      //     ),
      //     const SetupPaymentState(
      //       paymentAmountType: PaymentAmountType.aDifferentAmount,
      //       paymentAmount: DollarInput.dirty(true, tStringAmount),
      //       setupPaymentValidationStatus: SetupPaymentValidationStatus.valid(),
      //     )
      //   ],
      // );
    },
  );
}
