import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/application/bloc/send_payment/send_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/common/make_a_payment_request_params.dart';
import 'package:resident_app/features/make_a_payment/data/repositories/make_a_payment_repository_impl.dart';
import 'package:resident_app/features/make_a_payment/domain/repositories/make_a_payment_repository.dart';

import '../../../make_a_payment_mocks.dart';

void main() {
  group(
    SendPaymentEvent.sendPayment,
    () {
      late MakeAPaymentRepository makeAPaymentRepository;

      const tMakeAPaymentRequestParams = MakeAPaymentRequestParams(
        amount: 0.0,
        payToType: PayToType.rent(),
        processAdditionalPayment: false,
        referenceId: 'referenceId',
        referenceTitle: 'referenceTitle',
        residentId: 'residentId',
        residentUserId: 'residentUserId',
      );

      setUp(() {
        makeAPaymentRepository = MockMakeAPaymentRepository();

        registerFallbackValue(
          tMakeAPaymentRequestParams,
        );
      });

      blocTest(
        'emits [Loading, Success, Initial] when SendPaymentEvent is added',
        build: () => SendPaymentBloc(
          makeAPaymentRepository: makeAPaymentRepository,
        ),
        act: (bloc) {
          when(
            () => makeAPaymentRepository.postMakeAPayment(
              params: any(named: 'params'),
            ),
          ).thenAnswer((_) async => Right(Empty()));

          return bloc.add(
            const SendPaymentEvent.sendPayment(
              amount: 0.0,
              payToType: PayToType.rent(),
              processAdditionalPayment: false,
              referenceId: 'referenceId',
              referenceTitle: 'referenceTitle',
              residentId: 'residentId',
              residentUserId: 'residentUserId',
            ),
          );
        },
        expect: () => <SendPaymentState>[
          const SendPaymentState.loading(),
          const SendPaymentState.success(),
          const SendPaymentState.initial(),
        ],
      );

      blocTest(
        'emits [Loading, Failure, Initial] when SendPaymentEvent event is added',
        build: () => SendPaymentBloc(
          makeAPaymentRepository: makeAPaymentRepository,
        ),
        act: (bloc) {
          when(
            () => makeAPaymentRepository.postMakeAPayment(
              params: any(named: 'params'),
            ),
          ).thenAnswer((_) async => Left(MakeAPaymentErrorResult(error: const MAError.badRequest())));

          return bloc.add(
            const SendPaymentEvent.sendPayment(
              amount: 0.0,
              payToType: PayToType.rent(),
              processAdditionalPayment: false,
              referenceId: 'referenceId',
              referenceTitle: 'referenceTitle',
              residentId: 'residentId',
              residentUserId: 'residentUserId',
            ),
          );
        },
        expect: () => <SendPaymentState>[
          const SendPaymentState.loading(),
          const SendPaymentState.failure(MAError.badRequest(), null),
          const SendPaymentState.initial(),
        ],
      );
    },
  );
}