import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/announcements/data/models/announcement_model.dart';
import 'package:resident_app/features/announcements/domain/repositories/announcements_repository.dart';
import 'package:resident_app/features/summary/domain/entities/summary_content.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';

part 'summary_bloc.freezed.dart';
part 'summary_event.dart';
part 'summary_state.dart';

class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  SummaryBloc({
    required AnnouncementsRepository announcementsRepository,
  })  : _announcementsRepository = announcementsRepository,
        super(const _InitialState()) {
    on<_GetSummaryContentEvent>(_onGetSummaryContent);
  }

  final AnnouncementsRepository _announcementsRepository;

  void _onGetSummaryContent(
    _GetSummaryContentEvent event,
    Emitter<SummaryState> emit,
  ) async {
    emit(const _LoadingState());
    final residentUserId = event.user.residentUserId;
    final primarySite = event.selectedSite;

    final announcementsOrFailure =
        await _announcementsRepository.getAnnouncements(residentUserId);

    final readIdsOrFailure = _announcementsRepository.getReadIds();

    announcementsOrFailure.fold(
      (failure) {
        emit(
          _ErrorState(
            failure.message,
          ),
        );
        return;
      },
      (announcements) {
        if (announcements.isEmpty) {
          emit(
            _SuccessState(
              SummaryContent(
                summaryAnnouncement: const SummaryAnnouncement(
                  loaded: true,
                  announcement: null,
                ),
                primarySite: primarySite,
              ),
            ),
          );
          return;
        }

        readIdsOrFailure.fold(
          (failure) {
            emit(
              _ErrorState(
                failure.message,
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
            announcements.where((a) => a.isRead == false).length;
            final announcement = announcements.first;

            emit(
              _SuccessState(
                SummaryContent(
                  summaryAnnouncement: SummaryAnnouncement(
                    loaded: true,
                    announcement: announcement,
                    announcementsNewCount: announcements.length,
                  ),
                  primarySite: primarySite,
                ),
              ),
            );
            return;
          },
        );
      },
    );
  }
}
