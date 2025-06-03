import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_drawer_bloc.freezed.dart';
part 'navigation_drawer_event.dart';
part 'navigation_drawer_state.dart';

class NavigationDrawerBloc
    extends Bloc<NavigationDrawerEvent, NavigationDrawerState> {
  NavigationDrawerBloc() : super(const NavigationDrawerState(dashboard: true)) {
    on<NavigationDrawerEventDashboard>((event, emit) {
      emit(
        const NavigationDrawerState(
          dashboard: true,
        ),
      );
    });
    on<NavigationDrawerEventPayments>((event, emit) {
      emit(
        const NavigationDrawerState(
          payments: true,
        ),
      );
    });
    on<NavigationDrawerEventPaymentsBillsPayments>((event, emit) {
      emit(
        const NavigationDrawerState(
          payments: true,
          paymentsBillsPayments: true,
        ),
      );
    });
    on<NavigationDrawerEventPaymentsAutoPay>((event, emit) async {
      emit(
        const NavigationDrawerState(
          payments: true,
          paymentsAutoPay: true,
        ),
      );
    });
    on<NavigationDrawerEventPaymentsPayByText>(
      (event, emit) => emit(
        const NavigationDrawerState(
          payments: true,
          paymentsPayByText: true,
        ),
      ),
    );
    on<NavigationDrawerEventPaymentsMakePayment>(
      (event, emit) => emit(
        const NavigationDrawerState(
          payments: true,
          paymentsMakePayment: true,
        ),
      ),
    );
    on<NavigationDrawerEventPaymentsPaymentAccount>(
      (event, emit) => emit(
        const NavigationDrawerState(
          payments: true,
          paymentsPaymentAccount: true,
        ),
      ),
    );
    on<NavigationDrawerEventPaymentsBillingSettings>(
      (event, emit) => emit(
        const NavigationDrawerState(
          payments: true,
          paymentsBillingSettings: true,
        ),
      ),
    );
    on<NavigationDrawerEventAnnouncements>(
      (event, emit) => emit(
        const NavigationDrawerState(
          announcements: true,
        ),
      ),
    );
    on<NavigationDrawerEventCommunity>(
      (event, emit) => emit(
        const NavigationDrawerState(
          community: true,
        ),
      ),
    );
    on<NavigationDrawerEventMyAccount>(
      (event, emit) => emit(
        const NavigationDrawerState(
          myAccount: true,
        ),
      ),
    );
    on<NavigationDrawerEventMyAccountContactInfo>(
      (event, emit) => emit(
        const NavigationDrawerState(
          myAccount: true,
          myAccountContactInfo: true,
        ),
      ),
    );
    on<NavigationDrawerEventMyAccountRegisterSite>(
      (event, emit) => emit(
        const NavigationDrawerState(
          myAccount: true,
          myAccountRegisterSite: true,
        ),
      ),
    );
    on<NavigationDrawerEventMyAccountLanguagePreference>(
      (event, emit) => emit(
        const NavigationDrawerState(
          myAccount: true,
          myAccountLanguagePreference: true,
        ),
      ),
    );
    on<NavigationDrawerEventHelpFAQ>(
      (event, emit) => emit(
        const NavigationDrawerState(
          help: true,
          helpFAQ: true,
        ),
      ),
    );
    on<NavigationDrawerEventPaymentsCashPay>(
      (event, emit) => emit(
        const NavigationDrawerState(
          payments: true,
          paymentsCashPay: true,
        ),
      ),
    );
    on<NavigationDrawerEventMyAccountTermsOfUse>(
      (event, emit) => emit(
        const NavigationDrawerState(
          myAccount: true,
          myAccountTermsOfUse: true,
        ),
      ),
    );
    on<NavigationDrawerEventMyAccountLegalDocuments>(
      (event, emit) => emit(
        const NavigationDrawerState(
          myAccount: true,
          myAccountLegalDocuments: true,
        ),
      ),
    );
    on<NavigationDrawerEventMyAccountLogInSettings>(
      (event, emit) => emit(
        const NavigationDrawerState(
          myAccount: true,
          myAccountLogInSettings: true,
        ),
      ),
    );
    on<NavigationDrawerEventMyAccountPrivacyPolicy>(
      (event, emit) => emit(
        const NavigationDrawerState(
          myAccount: true,
          myAccountPrivacyPolicy: true,
        ),
      ),
    );

    on<NavigationDrawerEventdeleteMyAccount>(
          (event, emit) => emit(
        const NavigationDrawerState(
          myAccount: true,
          myAccountDeleteMyAccount: true,
        ),
      ),
    );
  }
}
