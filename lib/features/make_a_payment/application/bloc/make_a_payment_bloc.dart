import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/formz_inputs/dollar_input.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';
import 'package:resident_app/core/shared/helpers/loan_name_helper.dart';
import 'package:resident_app/features/make_a_payment/domain/entities/payment_option.dart';
import 'package:resident_app/features/make_a_payment/presentation/enums/make_a_payment_enums.dart';
import 'package:resident_app/features/user/domain/user_domain.dart';

part 'make_a_payment_bloc.freezed.dart';
part 'make_a_payment_event.dart';
part 'make_a_payment_state.dart';

class MakeAPaymentBloc extends Bloc<MakeAPaymentEvent, MakeAPaymentState> {
  MakeAPaymentBloc({
    required ErrorMessagesHelper errorMessagesHelper,
    required LoanNameHelper loanNameHelper,
  })  : _loanNameHelper = loanNameHelper,
        super(const MakeAPaymentState()) {
    on<_InitSelectablePaymentsEvent>(_onInitSelectablePaymentsEvent);
  }

  final LoanNameHelper _loanNameHelper;

  void _onInitSelectablePaymentsEvent(
    _InitSelectablePaymentsEvent event,
    Emitter<MakeAPaymentState> emit,
  ) {
    final primarySite = event.primarySite;

    var rentTotalPayment = PaymentOption(
      amount: primarySite.residentBalance.totalBalance,
      payToType: const PayToType.rent(),
      referenceId: defaultRentReferenceId,
      label: defaultRentLabel,
      loan: null,
    );

    PaymentOption? rentCurrentPayment;
    if (primarySite.propertySettings.displayCurrentBalance) {
      rentCurrentPayment = PaymentOption(
        amount: primarySite.residentBalance.currentMonthBalance,
        payToType: const PayToType.rent(),
        referenceId: defaultRentReferenceId,
        label: defaultRentLabel,
        loan: null,
      );
    }

    final loanPayments = <PaymentOption>[];
    for (final loan in primarySite.residentBalance.loans) {
      final loanPayment = PaymentOption(
        amount: loan.currentDue,
        payToType: const PayToType.loan(),
        referenceId: loan.loanId.toString(),
        label: _loanNameHelper.getOptionLabel(loan),
        loan: loan,
      );
      loanPayments.add(loanPayment);
    }

    emit(
      state.copyWith(
        totalRentPayment: rentTotalPayment,
        currentRentPayment: rentCurrentPayment,
        loanPayments: loanPayments,
      ),
    );
  }
}
