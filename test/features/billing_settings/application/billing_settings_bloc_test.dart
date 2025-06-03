import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/formz_inputs/email_input.dart';
import 'package:resident_app/core/shared/formz_inputs/phone_input.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';
import 'package:resident_app/features/billing_settings/application/bloc/bill_delivery_bloc.dart';
import 'package:resident_app/features/billing_settings/domain/repositories/billing_settings_repository.dart';

class MockBillingSettingsRepository extends Mock
    implements BillingSettingsRepository {}

class MockErrorMessagesHelper extends Mock implements ErrorMessagesHelper {}

void main() {
  late BillDeliveryBloc billDeliveryBloc;
  late MockBillingSettingsRepository billingSettingsRepository;
  late MockErrorMessagesHelper errorMessagesHelper;

  setUp(() {
    billingSettingsRepository = MockBillingSettingsRepository();
    errorMessagesHelper = MockErrorMessagesHelper();
    billDeliveryBloc = BillDeliveryBloc(
      billingSettingsRepository: billingSettingsRepository,
      errorMessagesHelper: errorMessagesHelper,
    );
  });

  tearDown(() {
    billDeliveryBloc.close();
  });

  group('BillDeliveryBloc', () {
    blocTest<BillDeliveryBloc, BillDeliveryState>(
      'emits [BillDeliveryState] with updated deliveryType when _SetDeliveryType event is added',
      build: () => billDeliveryBloc,
      act: (bloc) => bloc.add(
          const BillDeliveryEvent.setDeliveryType(BillDeliveryType.mail())),
      expect: () => [
        const BillDeliveryState(deliveryType: BillDeliveryType.mail()),
      ],
    );

    blocTest<BillDeliveryBloc, BillDeliveryState>(
      'emits [BillDeliveryState] with updated email when _SetEmailAddress event is added',
      build: () => billDeliveryBloc,
      act: (bloc) =>
          bloc.add(const BillDeliveryEvent.setEmailAddress('test@example.com')),
      expect: () => [
        const BillDeliveryState(
          email: EmailInput.dirty('test@example.com'),
        ),
      ],
    );

    blocTest<BillDeliveryBloc, BillDeliveryState>(
      'emits [BillDeliveryState] with email error when _ValidateEmail event is added',
      setUp: () {
        when(() => errorMessagesHelper.email).thenReturn({
          EmailValidationError.empty: 'Email cannot be empty',
          EmailValidationError.incorrectFormat: 'Invalid email format',
        });
      },
      build: () => billDeliveryBloc,
      seed: () => const BillDeliveryState(
        email: EmailInput.dirty('invalid-email'),
      ),
      act: (bloc) => bloc.add(const BillDeliveryEvent.validateEmailAddress()),
      expect: () => [
        const BillDeliveryState(
          email: EmailInput.dirty('invalid-email'),
          emailErrorMessage: 'Invalid email format',
        ),
      ],
    );

    blocTest<BillDeliveryBloc, BillDeliveryState>(
      'emits [BillDeliveryState] with phone error when _ValidatePhoneNumber event is added',
      setUp: () {
        when(() => errorMessagesHelper.phone).thenReturn(
            {PhoneValidationError.incomplete: 'Incomplete phone number'});
      },
      build: () => billDeliveryBloc,
      seed: () => const BillDeliveryState(
        phone: PhoneInput.dirty('12345'),
      ),
      act: (bloc) => bloc.add(const BillDeliveryEvent.validatePhoneNumber()),
      expect: () => [
        const BillDeliveryState(
          phone: PhoneInput.dirty('12345'),
          phoneErrorMessage: 'Incomplete phone number',
        ),
      ],
    );

    blocTest<BillDeliveryBloc, BillDeliveryState>(
      'emits updated state when _SetDefaultValues event is added',
      build: () => billDeliveryBloc,
      act: (bloc) => bloc.add(
        const BillDeliveryEvent.setDefaultValues(
          defaultDeliveryType: BillDeliveryType.email(),
          selectedDeliveryType: BillDeliveryType.phone(),
          defaultEmail: 'default@example.com',
          defaultPhoneNumber: '1111111111',
        ),
      ),
      expect: () => [
        const BillDeliveryState(
          deliveryType: BillDeliveryType.email(),
          email: EmailInput.dirty('default@example.com'),
          phone: PhoneInput.pure(),
          leadDaysForBillReminder: 0,
          emailErrorMessage: null,
          phoneErrorMessage: null,
          updateStatus: BillingSettingsUpdateStatus.initial(),
          readMode: false,
        ),
      ],
    );
  });
}
