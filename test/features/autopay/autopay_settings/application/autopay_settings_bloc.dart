// Fetching autopay settings successfully updates the state with the settings list
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay_settings/autopay_settings_bloc.dart';
import 'package:resident_app/features/autopay/domain/entities/autopay_settings.dart';
import 'package:resident_app/features/autopay/domain/repositories/autopay_settings_repository.dart';

class MockAutoPaySettingsRepository extends Mock
    implements AutoPaySettingsRepository {}

class MockErrorMessageHelper extends Mock implements ErrorMessagesHelper {}

void fetchAutopaySettingsSuccess() async {
  final errorMessagesHelper = MockErrorMessageHelper();
  final autopaySettingsRepository = MockAutoPaySettingsRepository();
  final bloc = AutoPaySettingsBloc(
    errorMessagesHelper: errorMessagesHelper,
    autopaySettingsRepository: autopaySettingsRepository,
  );

  final settingsList = [AutoPaySettings.empty];
  when(() => autopaySettingsRepository.getAutoPaySettings(''))
      .thenAnswer((_) async => Right(settingsList));

  bloc.add(const AutoPaySettingsEvent.fetch('valid_id'));

  await expectLater(
    bloc.stream,
    emitsInOrder([
      // isA<AutoPaySettingsState>().having((s) => s.isLoading, 'isLoading', true),
      isA<AutoPaySettingsState>().having(
          (s) => s.status, 'status', const AutoPaySettingsStatus.loading()),
      isA<AutoPaySettingsState>()
          .having((s) => s.isAutoPayActive, 'isAutoPayActive', true)
          .having(
              (s) => s.autopaySettingsList, 'autopaySettingsList', settingsList)
          .having(
              (s) => s.status, 'status', const AutoPaySettingsStatus.success()),
    ]),
  );
}

// Fetching autopay settings with an invalid resident ID returns an error
void fetchAutopaySettingsInvalidId() async {
  final errorMessagesHelper = MockErrorMessageHelper();
  final autopaySettingsRepository = MockAutoPaySettingsRepository();
  final bloc = AutoPaySettingsBloc(
    errorMessagesHelper: errorMessagesHelper,
    autopaySettingsRepository: autopaySettingsRepository,
  );

  when(() => autopaySettingsRepository.getAutoPaySettings(''))
      .thenAnswer((_) async => Left(MAError.unexpected()));

  bloc.add(const AutoPaySettingsEvent.fetch('invalid_id'));

  await expectLater(
    bloc.stream,
    emitsInOrder([
      isA<AutoPaySettingsState>().having(
          (s) => s.status, 'status', const AutoPaySettingsStatus.loading()),
      isA<AutoPaySettingsState>().having((s) => s.status, 'status',
          const AutoPaySettingsStatus.failure(MAError.unexpected())),
    ]),
  );
}
