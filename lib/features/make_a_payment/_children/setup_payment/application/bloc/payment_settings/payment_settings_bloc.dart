import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/make_a_payment/domain/repositories/make_a_payment_repository.dart';

part 'payment_settings_bloc.freezed.dart';
part 'payment_settings_event.dart';
part 'payment_settings_state.dart';

class PaymentSettingsBloc
    extends Bloc<PaymentSettingsEvent, PaymentSettingsState> {
  PaymentSettingsBloc({
    required MakeAPaymentRepository makeAPaymentRepository,
  })  : _makeAPaymentRepository = makeAPaymentRepository,
        super(const _Initial()) {
    on<_GetPaymentSettings>(_onGetPaymentSettings);
  }

  final MakeAPaymentRepository _makeAPaymentRepository;

  void _onGetPaymentSettings(
    _GetPaymentSettings event,
    Emitter<PaymentSettingsState> emit,
  ) async {
    emit(const _Loading());

    final paymentSettingsOrFailure = await _makeAPaymentRepository
        .getPropertyPaymentSettings(event.propertyId);

    paymentSettingsOrFailure.fold(
      (error) {
        emit(
          _Failure(error),
        );
      },
      (paymentSettings) {
        bool displayBankAccount = false;
        bool displayCreditCard = false;
        bool displayMobileWallet = false;
        bool displayGooglePlay = false;
        bool isRBCPaymentAccount = false;

        for (final setting in paymentSettings) {
          if (event.payToType == PayToType.rent()) {
            if (!displayBankAccount) {
              displayBankAccount =
                  setting.paymentMethodType == const PaymentMethodType.bank() &&
                      setting.payToType == PayToType.rent();
            }

            if (!displayCreditCard) {
              displayCreditCard = setting.paymentMethodType ==
                      const PaymentMethodType.creditCard() &&
                  setting.payToType == const PayToType.rent();
            }

            if (!displayMobileWallet) {
              displayMobileWallet = setting.paymentMethodType ==
                      const PaymentMethodType.mobileWallet() &&
                  setting.payToType == const PayToType.rent();
            }
            if (setting.paymentProcessorType == PaymentProcessorType.rbc()) {
              isRBCPaymentAccount = true;
            }
          }

          if (event.payToType == PayToType.loan()) {
            if (!displayBankAccount) {
              displayBankAccount =
                  setting.paymentMethodType == const PaymentMethodType.bank() &&
                      setting.payToType == PayToType.loan();
            }

            if (!displayCreditCard) {
              displayCreditCard = setting.paymentMethodType ==
                      const PaymentMethodType.creditCard() &&
                  setting.payToType == const PayToType.loan();
            }

            if (!displayMobileWallet) {
              displayMobileWallet = setting.paymentMethodType ==
                      const PaymentMethodType.mobileWallet() &&
                  setting.payToType == const PayToType.loan();
            }
            if (setting.paymentProcessorType == PaymentProcessorType.rbc()) {
              isRBCPaymentAccount = true;
            }
          }
        }
        emit(
          _Success(
            displayBankAccount: displayBankAccount,
            displayCreditCard: displayCreditCard,
            displayMobileWallet: displayMobileWallet,
            displayGooglePlay: displayGooglePlay,
            isRBCPaymentAccount: isRBCPaymentAccount,
          ),
        );
      },
    );
  }
}
