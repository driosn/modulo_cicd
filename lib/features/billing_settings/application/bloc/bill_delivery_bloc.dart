import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/extensions/string_extensions.dart';
import 'package:resident_app/core/shared/formz_inputs/formz_inputs.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';
import 'package:resident_app/features/billing_settings/common/billing_settings_update_params.dart';
import 'package:resident_app/features/billing_settings/constants/billing_settings.dart';
import 'package:resident_app/features/billing_settings/domain/repositories/billing_settings_repository.dart';

part 'bill_delivery_bloc.freezed.dart';
part 'bill_delivery_event.dart';
part 'bill_delivery_state.dart';

class BillDeliveryBloc extends Bloc<BillDeliveryEvent, BillDeliveryState> {
  BillDeliveryBloc({
    required BillingSettingsRepository billingSettingsRepository,
    required ErrorMessagesHelper errorMessagesHelper,
  })  : _errorMessagesHelper = errorMessagesHelper,
        _billingSettingsRepository = billingSettingsRepository,
        super(const BillDeliveryState()) {
    on<_SetDeliveryType>(_onSetDeliveryTypeEvent);
    on<_SetEmailAddress>(_onSetEmailAddressEvent);
    on<_ValidateEmailAddress>(_onValidateEmailAddressEvent);
    on<_SetPhoneNumber>(_onSetPhoneNumberEvent);
    on<_ValidatePhoneNumber>(_onValidatePhoneNumberEvent);
    on<_SetLeadDaysForBillReminder>(_onSetLeadDaysForBillReminderEvent);
    on<_SetReadMode>(_onSetReadModeEvent);
    on<_SetDefaultValues>(_onSetDefaultValuesEvent);
    on<_SetBillingSettings>(_onSetBillingSettingsEvent);
    on<_InitializeBillingSettings>(_onInitializeBillingSettingsEvent);
    on<_UpdateEvent>(_onUpdateEvent);
  }

  final ErrorMessagesHelper _errorMessagesHelper;
  final BillingSettingsRepository _billingSettingsRepository;

  void _onSetDeliveryTypeEvent(
    _SetDeliveryType event,
    Emitter<BillDeliveryState> emit,
  ) {
    emit(
      state.copyWith(
        deliveryType: event.deliveryType,
      ),
    );
  }

  void _onSetEmailAddressEvent(
    _SetEmailAddress event,
    Emitter<BillDeliveryState> emit,
  ) {
    emit(
      state.copyWith(
        email: EmailInput.dirty(event.email),
      ),
    );
  }

  void _onValidateEmailAddressEvent(
    _ValidateEmailAddress event,
    Emitter<BillDeliveryState> emit,
  ) {
    final emailErrorMessage =
        _errorMessagesHelper.email[state.email.validator(state.email.value)];
    emit(
      state.copyWith(
        emailErrorMessage: emailErrorMessage,
      ),
    );
  }

  void _onSetPhoneNumberEvent(
    _SetPhoneNumber event,
    Emitter<BillDeliveryState> emit,
  ) {
    emit(
      state.copyWith(
        phone: PhoneInput.dirty(event.phoneNumber),
      ),
    );
  }

  void _onSetLeadDaysForBillReminderEvent(
    _SetLeadDaysForBillReminder event,
    Emitter<BillDeliveryState> emit,
  ) {
    emit(
      state.copyWith(
        leadDaysForBillReminder: event.leadDays,
      ),
    );
  }

  void _onValidatePhoneNumberEvent(
    _ValidatePhoneNumber event,
    Emitter<BillDeliveryState> emit,
  ) {
    final phoneErrorMessage =
        _errorMessagesHelper.phone[state.phone.validator(state.phone.value)];
    emit(
      state.copyWith(
        phoneErrorMessage: phoneErrorMessage,
      ),
    );
  }

  void _onSetBillingSettingsEvent(
    _SetBillingSettings event,
    Emitter<BillDeliveryState> emit,
  ) {
    emit(
      state.copyWith(
        email: EmailInput.dirty(event.email),
        phone: PhoneInput.dirty(event.phoneNumber),
        leadDaysForBillReminder: event.leadDays,
      ),
    );
  }

  void _onSetReadModeEvent(
    _SetReadMode event,
    Emitter<BillDeliveryState> emit,
  ) {
    emit(
      state.copyWith(
        readMode: event.readmode,
      ),
    );
  }

  void _onSetDefaultValuesEvent(
    _SetDefaultValues event,
    Emitter<BillDeliveryState> emit,
  ) {
    event.defaultDeliveryType.when(
      email: () {
        event.selectedDeliveryType.when(
          email: () {
            emit(
              state.copyWith(
                phone: const PhoneInput.dirty(""),
                phoneErrorMessage: null,
              ),
            );
          },
          mail: () {
            emit(
              state.copyWith(
                email: EmailInput.dirty(event.defaultEmail),
                phone:
                    PhoneInput.dirty(event.defaultPhoneNumber.phoneFormatter()),
                phoneErrorMessage: null,
                emailErrorMessage: null,
              ),
            );
          },
          phone: () {
            emit(
              state.copyWith(
                email: EmailInput.dirty(event.defaultEmail),
                emailErrorMessage: null,
              ),
            );
          },
        );
      },
      mail: () {
        event.selectedDeliveryType.when(
          email: () {
            emit(
              state.copyWith(
                phone: const PhoneInput.dirty(""),
                phoneErrorMessage: null,
              ),
            );
          },
          mail: () {
            emit(
              state.copyWith(
                email: EmailInput.dirty(event.defaultEmail),
                phone: const PhoneInput.dirty(""),
                phoneErrorMessage: null,
                emailErrorMessage: null,
              ),
            );
          },
          phone: () {
            emit(
              state.copyWith(
                email: EmailInput.dirty(event.defaultEmail),
                emailErrorMessage: null,
              ),
            );
          },
        );
      },
      phone: () {
        event.selectedDeliveryType.when(
          email: () {
            emit(
              state.copyWith(
                phone:
                    PhoneInput.dirty(event.defaultPhoneNumber.phoneFormatter()),
                phoneErrorMessage: null,
              ),
            );
          },
          mail: () {
            emit(
              state.copyWith(
                email: EmailInput.dirty(event.defaultEmail),
                phone:
                    PhoneInput.dirty(event.defaultPhoneNumber.phoneFormatter()),
                phoneErrorMessage: null,
                emailErrorMessage: null,
              ),
            );
          },
          phone: () {
            emit(
              state.copyWith(
                email: EmailInput.dirty(event.defaultEmail),
                emailErrorMessage: null,
              ),
            );
          },
        );
      },
    );
  }

  void _onInitializeBillingSettingsEvent(
    _InitializeBillingSettings event,
    Emitter<BillDeliveryState> emit,
  ) {
    event.billDeliveryType.when(
      mail: () {
        add(
          BillDeliveryEvent.setBillingSettings(
            email: event.emailAddress,
            phoneNumber: "",
            leadDays: LeadDaysForBillReminderValues.none,
          ),
        );
      },
      email: () {
        add(
          BillDeliveryEvent.setBillingSettings(
            email: event.emailAddress,
            phoneNumber: "",
            leadDays: event.leadDays,
          ),
        );
      },
      phone: () {
        add(
          BillDeliveryEvent.setBillingSettings(
            email: event.emailAddress,
            phoneNumber: event.phoneNumber.phoneFormatter(),
            leadDays: LeadDaysForBillReminderValues.none,
          ),
        );
      },
    );

    add(
      BillDeliveryEvent.setDeliveryType(event.billDeliveryType),
    );
  }

  void _onUpdateEvent(
    _UpdateEvent event,
    Emitter<BillDeliveryState> emit,
  ) async {
    emit(
      state.copyWith(
        updateStatus: const _Updating(),
      ),
    );

    late BillingSettingsUpdateParams updateParams;

    state.deliveryType.when(
      email: () {
        updateParams = BillingSettingsUpdateParams(
          residentId: event.residentId,
          deliveryType: DeliveryTypeValues.email,
          emailAddress: state.email.value,
          phoneNumber: "",
          leadDaysForBillReminder: state.leadDaysForBillReminder,
        );
      },
      mail: () {
        updateParams = BillingSettingsUpdateParams(
          residentId: event.residentId,
          deliveryType: DeliveryTypeValues.mail,
          emailAddress: "",
          phoneNumber: "",
          leadDaysForBillReminder: 0,
        );
      },
      phone: () {
        updateParams = BillingSettingsUpdateParams(
          residentId: event.residentId,
          deliveryType: DeliveryTypeValues.phone,
          emailAddress: "",
          phoneNumber: state.phone.value,
          leadDaysForBillReminder: 0,
        );
      },
    );

    emit(
      state.copyWith(
        updateStatus: const _Updating(),
      ),
    );

    final failureOrSuccess =
        await _billingSettingsRepository.update(updateParams);

    failureOrSuccess.fold((failure) {
      emit(
        state.copyWith(
          updateStatus: _Failure(failure.message),
        ),
      );
    }, (success) {
      emit(
        state.copyWith(
          updateStatus: const _Success(),
        ),
      );
    });

    emit(
      state.copyWith(
        updateStatus: const _Initial(),
      ),
    );
  }
}
