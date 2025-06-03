import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'make_a_payment_navigation_bloc.freezed.dart';
part 'make_a_payment_navigation_event.dart';
part 'make_a_payment_navigation_state.dart';

class MakeAPaymentNavigationBloc
    extends Bloc<MakeAPaymentNavigationEvent, MakeAPaymentNavigationState> {
  MakeAPaymentNavigationBloc() : super(MakeAPaymentNavigationState()) {
    on<_SetNavigatedFromSummaryEvent>(_onSetNavigatedFromSummaryEvent);
  }

  void _onSetNavigatedFromSummaryEvent(
    _SetNavigatedFromSummaryEvent event,
    Emitter<MakeAPaymentNavigationState> emit,
  ) {
    emit(
      state.copyWith(
        navigatedFromSummary: event.isNavigatedFromSummary,
      ),
    );
  }
}
