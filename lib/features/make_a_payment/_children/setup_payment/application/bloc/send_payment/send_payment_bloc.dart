import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/make_a_payment/common/make_a_payment_request_params.dart';
import 'package:resident_app/features/make_a_payment/data/repositories/make_a_payment_repository_impl.dart';
import 'package:resident_app/features/make_a_payment/domain/repositories/make_a_payment_repository.dart';

part 'send_payment_bloc.freezed.dart';
part 'send_payment_event.dart';
part 'send_payment_state.dart';

class SendPaymentBloc extends Bloc<SendPaymentEvent, SendPaymentState> {
  SendPaymentBloc({
    required MakeAPaymentRepository makeAPaymentRepository,
  })  : _makeAPaymentRepository = makeAPaymentRepository,
        super(const _Initial()) {
    on<_SendPayment>(_onSendPayment);
  }

  final MakeAPaymentRepository _makeAPaymentRepository;

  void _onSendPayment(
    _SendPayment event,
    Emitter<SendPaymentState> emit,
  ) async {
    emit(const _Loading());

    final errorOrSuccess = await _makeAPaymentRepository.postMakeAPayment(
      params: MakeAPaymentRequestParams(
        amount: event.amount,
        payToType: event.payToType,
        processAdditionalPayment: event.processAdditionalPayment,
        referenceId: event.referenceId,
        referenceTitle: event.referenceTitle,
        residentId: event.residentId,
        residentUserId: event.residentUserId,
      ),
    );

    errorOrSuccess.fold(
      (error) {
        emit(
          _Failure(
            error.error,
            error.makeAPaymentError,
          ),
        );
      },
      (empty) {
        emit(
          const _Success(),
        );
      },
    );

    emit(
      const _Initial(),
    );
  }
}
