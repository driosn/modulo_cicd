import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/payment_account/domain/entities/property_payment_settings.dart';
import 'package:resident_app/features/payment_account/domain/repositories/property_payment_settings_repository.dart';

part 'property_payment_settings_bloc.freezed.dart';
part 'property_payment_settings_event.dart';
part 'property_payment_settings_state.dart';

class PropertyPaymentSettingsBloc
    extends Bloc<PropertyPaymentSettingsEvent, PropertyPaymentSettingsState> {
  PropertyPaymentSettingsBloc({
    required PropertyPaymentSettingsRepository
        propertyPaymentSettingsRepository,
  })  : _propertyPaymentSettingsRepository = propertyPaymentSettingsRepository,
        super(const PropertyPaymentSettingsState()) {
    on<_GetPropertyPaymentSettingsEvent>(_onGetPropertyPaymentSettingsEvent);
    on<_RestartPropertyPaymentSettingsEvent>(
        _onRestartPropertyPaymentSettingsEvent);
  }

  final PropertyPaymentSettingsRepository _propertyPaymentSettingsRepository;

  void _onGetPropertyPaymentSettingsEvent(
    _GetPropertyPaymentSettingsEvent event,
    Emitter<PropertyPaymentSettingsState> emit,
  ) async {
    final propertyPaymentSettingsResponse =
        await _propertyPaymentSettingsRepository.get();

    propertyPaymentSettingsResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            propertyPaymentSettingsStatus:
                PropertyPaymentSettingsStatus.failure,
          ),
        );
      },
      (propertyPaymentSettings) {
        bool isRBCPaymentAccount =
            propertyPaymentSettings.paymentProcessorTypeDescription == "RBC";
        emit(
          state.copyWith(
            propertyPaymentSettingsStatus:
                PropertyPaymentSettingsStatus.success,
            propertyPaymentSettings: propertyPaymentSettings,
            isRBCPaymentAccount: isRBCPaymentAccount,
          ),
        );
      },
    );
  }

  void _onRestartPropertyPaymentSettingsEvent(
    _RestartPropertyPaymentSettingsEvent event,
    Emitter<PropertyPaymentSettingsState> emit,
  ) {
    emit(
      state.copyWith(
        propertyPaymentSettingsStatus: PropertyPaymentSettingsStatus.initial,
      ),
    );
  }
}
