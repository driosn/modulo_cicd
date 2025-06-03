import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/announcements/data/models/announcement_model.dart';
import 'package:resident_app/features/announcements/domain/entities/announcement.dart';
import 'package:resident_app/features/announcements/domain/repositories/announcements_repository.dart';

part 'announcements_bloc.freezed.dart';
part 'announcements_event.dart';
part 'announcements_state.dart';

class AnnouncementsBloc extends Bloc<AnnouncementsEvent, AnnouncementsState> {
  AnnouncementsBloc({
    required AnnouncementsRepository announcementsRepository,
  })  : _repository = announcementsRepository,
        super(const AnnouncementsState()) {
    on<_GetAnnouncementsEvent>(_onGetAnnouncementsEvent);
    on<_SetReadEvent>(_onSetReadEvent);
  }

  final AnnouncementsRepository _repository;

  void _onGetAnnouncementsEvent(
    _GetAnnouncementsEvent event,
    Emitter<AnnouncementsState> emit,
  ) async {
    emit(state.copyWith(status: const _Loading()));
    final announcementsOrFailure = await _repository.getAnnouncements(
      event.residentUserId,
    );

    final readIdsOrFailure = _repository.getReadIds();

    announcementsOrFailure.fold(
      (failure) {
        emit(
          state.copyWith(
            status: _Failure(
              failure.message,
            ),
          ),
        );
      },
      (announcements) {
        readIdsOrFailure.fold(
          (failure) {
            emit(
              state.copyWith(
                status: _Failure(
                  failure.message,
                ),
              ),
            );
            return;
          },
          (readIds) {
            for (int i = 0; i < announcements.length; i++) {
              final ann = announcements[i];

              if (readIds.contains(ann.id)) {
                announcements[i] = (ann as AnnouncementModel).copyWith(
                  isRead: true,
                );
              }
            }

            announcements.sort((a, b) => b.start.compareTo(a.start));

            emit(
              state.copyWith(
                announcements: announcements,
                status: _Success(
                  announcements,
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _onSetReadEvent(
    _SetReadEvent event,
    Emitter<AnnouncementsState> emit,
  ) async {
    await _repository.setReadId(event.announcementId);

    final currentAnnouncements = List<Announcement>.from(
      state.announcements ?? [],
    );
    final readIdsOrFailure = _repository.getReadIds();

    readIdsOrFailure.fold(
      (failure) {
        emit(
          state.copyWith(
            status: _Failure(
              failure.message,
            ),
          ),
        );
        return;
      },
      (readIds) {
        for (int i = 0; i < currentAnnouncements.length; i++) {
          final ann = currentAnnouncements[i];

          if (readIds.contains(ann.id)) {
            currentAnnouncements[i] = (ann as AnnouncementModel).copyWith(
              isRead: true,
            );
          }
        }

        emit(
          state.copyWith(
            announcements: currentAnnouncements,
            status: _Success(
              currentAnnouncements,
            ),
          ),
        );
      },
    );
  }
}
