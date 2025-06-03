import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/announcements/domain/entities/announcement.dart';
import 'package:resident_app/features/announcements/presentation/views/announcement_details_view.dart';
import 'package:resident_app/features/announcements/presentation/views/announcements_view.dart';

class AnnouncementsRoutes implements RoutesGroup {
  static final announcements = GoRoute(
      name: 'announcements',
      path: 'announcements',
      builder: (BuildContext context, __) {
        locator<NavigationDrawerBloc>()
            .add(const NavigationDrawerEvent.announcements());
        return const AnnouncementsView();
      },
      routes: [
        announcementDetailsView,
      ]);
  static final announcementDetailsView = GoRoute(
      name: 'announcement_details_view',
      path: 'announcement-details-view',
      builder: (_, state) {
        final announcement = state.extra! as Announcement;
        return AnnouncementDetailsView(
          announcement: announcement,
        );
      });
  @override
  List<RouteBase> get routes => [announcements];
}
