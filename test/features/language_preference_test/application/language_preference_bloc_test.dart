import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';
import 'package:resident_app/features/language_selection/application/bloc/language_preference_bloc.dart';
import 'package:resident_app/features/language_selection/common/language_preference_update_params.dart';
import 'package:resident_app/features/language_selection/domain/repositories/language_preference_repository.dart';

class MockLanguagePreferenceRepository extends Mock
    implements LanguagePreferenceRepository {}

class MockErrorMessagesHelper extends Mock implements ErrorMessagesHelper {}

class FakeLanguagePreferenceUpdateParams extends Fake
    implements LanguagePreferenceUpdateParams {}

void main() {
  late LanguagePreferenceBloc languagePreferenceBloc;
  late MockLanguagePreferenceRepository languagePreferenceRepository;

  setUpAll(() {
    registerFallbackValue(FakeLanguagePreferenceUpdateParams());
  });

  setUp(() {
    languagePreferenceRepository = MockLanguagePreferenceRepository();
    languagePreferenceBloc = LanguagePreferenceBloc(
      languagePreferenceRepository: languagePreferenceRepository,
    );
  });

  tearDown(() {
    languagePreferenceBloc.close();
  });

  group('LanguagePreferenceBloc', () {
    const testLanguage = Language.english;
    const tResidentUserId = 'tResidentUserId';
    blocTest<LanguagePreferenceBloc, LanguagePreferenceState>(
      'emits [LanguagePreferenceState] with updated deliveryType when _SetDeliveryType event is added',
      build: () => languagePreferenceBloc,
      act: (bloc) => bloc.add(const LanguagePreferenceEvent.setSelectedLanguage(
        testLanguage,
      )),
      expect: () => [
        const LanguagePreferenceState(selectedLanguage: testLanguage),
      ],
    );

    blocTest<LanguagePreferenceBloc, LanguagePreferenceState>(
      'emits [LanguagePreferenceState] with _Updating, _Success, then _Initial when LanguagePreferenceEvent.update is added and repository returns success',
      setUp: () {
        when(() => languagePreferenceRepository.update(any()))
            .thenAnswer((_) async => Right(Empty()));
      },
      build: () => languagePreferenceBloc,
      seed: () => const LanguagePreferenceState(selectedLanguage: testLanguage),
      act: (bloc) => bloc.add(const LanguagePreferenceEvent.update(
          residentUserId: tResidentUserId)),
      expect: () => [
        const LanguagePreferenceState(
          selectedLanguage: testLanguage,
          updateStatus: LanguagePreferenceUpdateStatus.updating(),
        ),
        const LanguagePreferenceState(
          selectedLanguage: testLanguage,
          updateStatus: LanguagePreferenceUpdateStatus.success(),
        ),
        const LanguagePreferenceState(
          selectedLanguage: testLanguage,
          updateStatus: LanguagePreferenceUpdateStatus.initial(),
        ),
      ],
    );

    blocTest<LanguagePreferenceBloc, LanguagePreferenceState>(
      'emits [LanguagePreferenceState] with _Updating, _Failure, then _Initial when LanguagePreferenceEvent.update is added and repository returns failure',
      setUp: () {
        when(() => languagePreferenceRepository.update(any()))
            .thenAnswer((_) async => const Left(MAError.unexpected()));
      },
      build: () => languagePreferenceBloc,
      seed: () => const LanguagePreferenceState(selectedLanguage: testLanguage),
      act: (bloc) => bloc.add(const LanguagePreferenceEvent.update(
          residentUserId: tResidentUserId)),
      expect: () => [
        const LanguagePreferenceState(
          selectedLanguage: testLanguage,
          updateStatus: LanguagePreferenceUpdateStatus.updating(),
        ),
        const LanguagePreferenceState(
          selectedLanguage: testLanguage,
          updateStatus: LanguagePreferenceUpdateStatus.failure(
            MAError.unexpected(),
          ),
        ),
        const LanguagePreferenceState(
          selectedLanguage: testLanguage,
          updateStatus: LanguagePreferenceUpdateStatus.initial(),
        ),
      ],
    );
  });
}
