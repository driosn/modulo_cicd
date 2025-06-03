import 'package:equatable/equatable.dart';
import 'package:resident_app/features/announcements/domain/entities/announcement.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';

final class SummaryContent {
  const SummaryContent({
    required this.summaryAnnouncement,
    required this.primarySite,
  });

  final SummaryAnnouncement summaryAnnouncement;
  final PrimarySite primarySite;
}

class SummaryAnnouncement extends Equatable {
  const SummaryAnnouncement({
    required this.loaded,
    required this.announcement,
    this.announcementsNewCount = 0,
  });

  final bool loaded;
  final Announcement? announcement;
  final int announcementsNewCount;

  @override
  List<Object?> get props => [
        loaded,
        announcement,
        announcementsNewCount,
      ];
}
