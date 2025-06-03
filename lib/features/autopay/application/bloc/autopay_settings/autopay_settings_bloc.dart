import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/core/shared/formz_inputs/dollar_input.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/data/models/autopay_option_model.dart';
import 'package:resident_app/features/autopay/data/models/autopay_option_types.dart';
import 'package:resident_app/features/autopay/data/models/autopay_update_settings_model.dart';
import 'package:resident_app/features/autopay/domain/entities/autopay_settings.dart';
import 'package:resident_app/features/autopay/domain/entities/autopay_update_settings.dart';
import 'package:resident_app/features/autopay/domain/repositories/autopay_settings_repository.dart';
import 'package:resident_app/features/autopay/presentation/enums/withdrawal_amount_option.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date.dart';

part 'autopay_settings_bloc.freezed.dart';
part 'autopay_settings_event.dart';
part 'autopay_settings_state.dart';

class AutoPaySettingsBloc
    extends Bloc<AutoPaySettingsEvent, AutoPaySettingsState> {
  AutoPaySettingsBloc({
    required ErrorMessagesHelper errorMessagesHelper,
    required this.autopaySettingsRepository,
  })  : _errorMessagesHelper = errorMessagesHelper,
        super(const AutoPaySettingsState()) {
    on<_FetchAutoPaySettingsEvent>(_onFetch);
    on<_FetchAfterUpdateAutoPaySettingsEvent>(_onFetchAfterUpdate);
    on<_LoadAutoPaySettingsEvent>(_onLoad);
    on<_UpdateAutoPaySettingsEvent>(_onUpdate);
    on<_ResetAutoPaySettingsEvent>(_onReset);
    on<_ResetStatusAutoPaySettingsEvent>(_onResetStatus);
  }

  final ErrorMessagesHelper _errorMessagesHelper;
  final AutoPaySettingsRepository autopaySettingsRepository;

  void _onFetch(
    _FetchAutoPaySettingsEvent event,
    Emitter<AutoPaySettingsState> emit,
  ) async {
    //API call
    final autopaySettingsResponse =
        await autopaySettingsRepository.getAutoPaySettings(event.residentId);

    emit(
      state.copyWith(
        status: const AutoPaySettingsStatus.loading(),
      ),
    );

    autopaySettingsResponse.fold(
      (failure) {
        emit(
          state.copyWith(
              isAutoPayActive: false,
              status: AutoPaySettingsStatus.failure(failure),
              autopaySettingsList: []),
        );
      },
      (autopaySettingsList) {
        emit(
          state.copyWith(
              isAutoPayActive: autopaySettingsList.isNotEmpty,
              status: const AutoPaySettingsStatus.success(),
              autopaySettingsList: autopaySettingsList),
        );
      },
    );
  }

  void _onFetchAfterUpdate(
    _FetchAfterUpdateAutoPaySettingsEvent event,
    Emitter<AutoPaySettingsState> emit,
  ) async {
    //API call
    await Future.delayed(Duration(seconds: 2), () async {
      final autopaySettingsResponse =
          await autopaySettingsRepository.getAutoPaySettings(event.residentId);

      autopaySettingsResponse.fold(
        (failure) {},
        (autopaySettingsList) {
          emit(
            state.copyWith(
              isAutoPayActive: autopaySettingsList.isNotEmpty,
              status: const AutoPaySettingsStatus.success(),
              autopaySettingsList: autopaySettingsList,
              updateResult: null,
            ),
          );
        },
      );
    });
  }

  void _onLoad(
    _LoadAutoPaySettingsEvent event,
    Emitter<AutoPaySettingsState> emit,
  ) {
    //API call
    emit(const AutoPaySettingsState());
  }

  void _onUpdate(
    _UpdateAutoPaySettingsEvent event,
    Emitter<AutoPaySettingsState> emit,
  ) async {
    final updateModel = AutoPayUpdateSettingsModel(
      autoPaySettingsId: event.autopayId == "0" ? null : event.autopayId,
      paymentDay: event.paymentDate.value,
      paymentAmount:
          (AutoPayOptionTypes.values[event.withdrawalAmountOption.index] ==
                  AutoPayOptionTypes.fullAmount)
              ? null
              : event.withdrawalAmount.amount.toInt(),
      autoPayOptionType:
          AutoPayOptionTypes.values[event.withdrawalAmountOption.index],
      isActive: true,
      referenceId: event.referenceId,
      residentId: event.residentId,
      residentUserId: event.residentUserId,
    );

    final updateAutoPaySettingsModel = AutoPaySettings(
      id: event.autopayId ?? "0",
      autoPayOption: AutoPayOptionModel(
        id: "",
        autoPayOptionTypeDescription: "",
        autoPayOptionType:
            AutoPayOptionTypes.values[event.withdrawalAmountOption.index],
      ),
      isActive: true,
      residentId: event.residentId,
      referenceId: event.referenceId,
      payAmount: event.withdrawalAmount.amount.toInt(),
      paymentMethodTypeDescription: event.withdrawalAmountOption.name,
      paymentMethodType: 1,
      payDay: event.paymentDate.value,
    );

    emit(
      state.copyWith(
        status: const AutoPaySettingsStatus.loading(),
      ),
    );

    //API call
    final autopaySettingsResponse =
        await autopaySettingsRepository.updateAutoPaySettings(updateModel);

    await autopaySettingsResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            status: AutoPaySettingsStatus.failure(failure),
          ),
        );
      },
      (autopaySettingsList) async {
        var newAutopaySettingsList =
            List<AutoPaySettings>.from(state.autopaySettingsList);

        int index = newAutopaySettingsList.indexWhere((element) =>
            element.referenceId == updateAutoPaySettingsModel.referenceId);

        if (index != -1) {
          newAutopaySettingsList[index] = updateAutoPaySettingsModel;
        } else {
          newAutopaySettingsList.add(updateAutoPaySettingsModel);
        }

        emit(
          state.copyWith(
            isAutoPayActive: true,
            status: const AutoPaySettingsStatus.success(),
            updateResult: updateModel,
            autopaySettingsList: newAutopaySettingsList,
          ),
        );
      },
    );
  }

  void _onReset(
    _ResetAutoPaySettingsEvent event,
    Emitter<AutoPaySettingsState> emit,
  ) async {
    final currentAutopayConfig = locator<AutoPayBloc>().state;
    //API call

    final updateModel = AutoPayUpdateSettingsModel(
      autoPaySettingsId: event.autopayId,
      paymentDay: event.paymentDay,
      //TODO: this logic may be reevaluated and probably deleted if API endpoint it's refactored
      paymentAmount: null,
      autoPayOptionType: AutoPayOptionTypes.fullAmount,
      isActive: false,
      referenceId: event.referenceId,
      residentId: event.residentId,
      residentUserId: event.residentUserId,
    );
    final autopaySettingsResponse =
        await autopaySettingsRepository.updateAutoPaySettings(updateModel);

    autopaySettingsResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            status: AutoPaySettingsStatus.failure(failure),
          ),
        );
      },
      (autopaySettingsList) {
        var newAutopaySettingsList =
            List<AutoPaySettings>.from(state.autopaySettingsList);
        newAutopaySettingsList
            .removeWhere((element) => element.referenceId == event.referenceId);

        emit(
          state.copyWith(
            status: const AutoPaySettingsStatus.success(),
            autopaySettingsList: newAutopaySettingsList,
          ),
        );
      },
    );
  }

  void _onResetStatus(
    _ResetStatusAutoPaySettingsEvent event,
    Emitter<AutoPaySettingsState> emit,
  ) {
    emit(
      state.copyWith(
        status: const AutoPaySettingsStatus.initial(),
      ),
    );
  }
}
