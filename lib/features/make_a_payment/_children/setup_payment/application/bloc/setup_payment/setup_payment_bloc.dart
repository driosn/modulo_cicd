import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/formz_inputs/dollar_input.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';
import 'package:resident_app/features/make_a_payment/presentation/enums/make_a_payment_enums.dart';

part 'setup_payment_bloc.freezed.dart';
part 'setup_payment_event.dart';
part 'setup_payment_state.dart';

class SetupPaymentBloc extends Bloc<SetupPaymentEvent, SetupPaymentState> {
  SetupPaymentBloc({
    required ErrorMessagesHelper errorMessagesHelper,
  })  : _errorMessagesHelper = errorMessagesHelper,
        super(const SetupPaymentState()) {
    on<_SetAmount>(_onSetAmountEvent);
    on<_SetPaymentAmountType>(_onSetPaymentAmountType);
    on<_SetPaymentMethodType>(_onSetPaymentMethodType);
    on<_ValidateSetupPayment>(_onValidateSetupPayment);
  }

  final ErrorMessagesHelper _errorMessagesHelper;

  void _onSetAmountEvent(
    _SetAmount event,
    Emitter<SetupPaymentState> emit,
  ) {
    emit(
      state.copyWith(
        paymentAmount: DollarInput.dirty(true, event.amount),
      ),
    );
  }

  void _onSetPaymentAmountType(
    _SetPaymentAmountType event,
    Emitter<SetupPaymentState> emit,
  ) {
    emit(
      state.copyWith(
        paymentAmountType: event.paymentAmountType,
      ),
    );
  }

  void _onSetPaymentMethodType(
    _SetPaymentMethodType event,
    Emitter<SetupPaymentState> emit,
  ) {
    emit(
      state.copyWith(
        paymentMethodType: event.paymentMethodType,
      ),
    );
  }

  void _onValidateSetupPayment(
    _ValidateSetupPayment event,
    Emitter<SetupPaymentState> emit,
  ) {
    emit(
      state.copyWith(
        setupPaymentValidationStatus:
            const SetupPaymentValidationStatus.initial(),
      ),
    );

    String? paymentAmountErrorMessage;
    if (state.paymentAmountType == PaymentAmountType.aDifferentAmount) {
      paymentAmountErrorMessage = _errorMessagesHelper.dollarInput[
          state.paymentAmount.validator(state.paymentAmount.value)];
    }

    if (state.paymentAmount.amount < 1.0) {
      paymentAmountErrorMessage = _errorMessagesHelper
          .dollarInput[DollarInputValidationError.notGreaterThanOne];
    }

    emit(
      state.copyWith(
        processAdditionalPayment: event.processAdditionalPayment,
        paymentAmountErrorMessage: paymentAmountErrorMessage,
        setupPaymentValidationStatus: paymentAmountErrorMessage == null
            ? const SetupPaymentValidationStatus.valid()
            : const SetupPaymentValidationStatus.notValid(),
      ),
    );
  }
}
