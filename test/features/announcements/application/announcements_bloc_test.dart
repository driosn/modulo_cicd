import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/announcements/application/bloc/announcements_bloc.dart';
import 'package:resident_app/features/announcements/domain/entities/announcement.dart';
import 'package:resident_app/features/announcements/domain/repositories/announcements_repository.dart';

class MockAnnouncementsRepository extends Mock
    implements AnnouncementsRepository {}

void main() {
  group(
    AnnouncementsEvent.getAnnouncements,
    () {
      const tResidentUserId = 'tResidentUserId';
      final tAnnouncements = <Announcement>[];
      final tReadIds = <String>[];

      late AnnouncementsRepository mockAnnouncementsRepository;

      setUp(
        () {
          mockAnnouncementsRepository = MockAnnouncementsRepository();
        },
      );

      blocTest(
        'emits [Loading, Success](statuses) when GetQuestions is added.',
        build: () => AnnouncementsBloc(
          announcementsRepository: mockAnnouncementsRepository,
        ),
        act: (bloc) {
          when(() => mockAnnouncementsRepository.getAnnouncements(any()))
              .thenAnswer(
            (_) async => Right(tAnnouncements),
          );
          when(() => mockAnnouncementsRepository.getReadIds()).thenReturn(
            Right(tReadIds),
          );

          return bloc
              .add(const AnnouncementsEvent.getAnnouncements(tResidentUserId));
        },
        expect: () => <AnnouncementsState>[
          const AnnouncementsState(status: AnnouncementsStatus.loading()),
          AnnouncementsState(
            status: AnnouncementsStatus.success(tAnnouncements),
            announcements: tAnnouncements,
          ),
        ],
      );

      blocTest(
        'emits [Loading, Failure](statuses) when GetQuestions is added (getAnnouncements fails).',
        build: () => AnnouncementsBloc(
          announcementsRepository: mockAnnouncementsRepository,
        ),
        act: (bloc) {
          when(() => mockAnnouncementsRepository.getAnnouncements(any()))
              .thenAnswer(
            (_) async => Left(Failure(message: 'tMessage')),
          );
          when(() => mockAnnouncementsRepository.getReadIds()).thenReturn(
            Right(tReadIds),
          );

          return bloc
              .add(const AnnouncementsEvent.getAnnouncements(tResidentUserId));
        },
        expect: () => <AnnouncementsState>[
          const AnnouncementsState(
            status: AnnouncementsStatus.loading(),
          ),
          const AnnouncementsState(
            status: AnnouncementsStatus.failure('tMessage'),
          )
        ],
      );

      blocTest(
        'emits [Loading, Failure](statuses) when GetQuestions is added (getReadIds fails).',
        build: () => AnnouncementsBloc(
          announcementsRepository: mockAnnouncementsRepository,
        ),
        act: (bloc) {
          when(() => mockAnnouncementsRepository.getAnnouncements(any()))
              .thenAnswer(
            (_) async => Right(tAnnouncements),
          );
          when(() => mockAnnouncementsRepository.getReadIds()).thenReturn(
            Left(Failure(message: 'tMessage')),
          );

          return bloc
              .add(const AnnouncementsEvent.getAnnouncements(tResidentUserId));
        },
        expect: () => <AnnouncementsState>[
          const AnnouncementsState(
            status: AnnouncementsStatus.loading(),
          ),
          const AnnouncementsState(
            status: AnnouncementsStatus.failure('tMessage'),
          )
        ],
      );
    },
  );

  group(
    AnnouncementsEvent.setRead,
    () {
      const tResidentUserId = 'tResidentUserId';
      final tAnnouncements = <Announcement>[];
      final tReadIds = <String>[];

      late AnnouncementsRepository mockAnnouncementsRepository;

      setUp(
        () {
          mockAnnouncementsRepository = MockAnnouncementsRepository();
        },
      );

      blocTest(
        'emits [Success](statuses) when setRead is added.',
        build: () => AnnouncementsBloc(
          announcementsRepository: mockAnnouncementsRepository,
        ),
        act: (bloc) {
          when(() => mockAnnouncementsRepository.setReadId(any()))
              .thenAnswer((_) async {
            return;
          });
          when(() => mockAnnouncementsRepository.getReadIds()).thenReturn(
            Right(tReadIds),
          );

          return bloc.add(const AnnouncementsEvent.setRead(tResidentUserId));
        },
        expect: () => <AnnouncementsState>[
          AnnouncementsState(
            status: AnnouncementsStatus.success(tAnnouncements),
            announcements: tAnnouncements,
          ),
        ],
      );

      blocTest(
        'emits [Failure](statuses) when GetQuestions is added (getAnnouncements fails).',
        build: () => AnnouncementsBloc(
          announcementsRepository: mockAnnouncementsRepository,
        ),
        act: (bloc) {
          when(() => mockAnnouncementsRepository.setReadId(any()))
              .thenAnswer((_) async {
            return;
          });
          when(() => mockAnnouncementsRepository.getReadIds()).thenReturn(
            Left(Failure(message: 'tMessage')),
          );

          return bloc.add(const AnnouncementsEvent.setRead(tResidentUserId));
        },
        expect: () => <AnnouncementsState>[
          const AnnouncementsState(
            status: AnnouncementsStatus.failure('tMessage'),
          )
        ],
      );
    },
  );
}
