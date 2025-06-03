import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/announcements/application/bloc/announcements_bloc.dart';
import 'package:resident_app/features/announcements/domain/entities/announcement.dart';
import 'package:resident_app/features/announcements/presentation/widgets/announcements_widgets.dart';
import 'package:resident_app/features/announcements/routes.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class AnnouncementsView extends StatefulWidget {
  const AnnouncementsView({super.key});

  @override
  State<AnnouncementsView> createState() => _AnnouncementsViewState();
}

class _AnnouncementsViewState extends State<AnnouncementsView> {
  late AnnouncementsBloc _announcementsBloc;
  late UserBloc _userBloc;

  @override
  void initState() {
    _announcementsBloc = locator<AnnouncementsBloc>();
    _userBloc = locator<UserBloc>();
    _announcementsBloc.add(
      AnnouncementsEvent.getAnnouncements(_userBloc.state.user.residentUserId),
    );
    super.initState();
  }

  Widget _newChip(int number) {
    if (number == 0) {
      return const SizedBox();
    }

    final colorPalette = locator<ColorPalette>();

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 14.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          100,
        ),
        color: colorPalette.badgeMultiChar,
      ),
      child: Text(
        '$number New',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          height: 18 / 14,
          color: colorPalette.badgeMultiCharLabel,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final AppLocalizations localizations = locator<MaLocalizations>().I;

    return Scaffold(
      backgroundColor: colorPalette.surface,
      drawer: MADrawer(
        items: MADrawer.defaultItems,
      ),
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        title: Text(
          localizations.announcementsCardTitle,
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: colorPalette.appBarAccent,
                  width: 5,
                ),
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<AnnouncementsBloc, AnnouncementsState>(
              bloc: _announcementsBloc,
              builder: (context, state) {
                return state.status.when(
                  initial: SizedBox.new,
                  loading: () => const Center(
                    child: MACircularProgressIndicator(),
                  ),
                  failure: (message) => Center(
                    child: Text(message),
                  ),
                  success: (announcements) {
                    if (announcements.isEmpty) {
                      return const _AnnouncementsEmpty();
                    }

                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          _header(
                            context,
                            announcements,
                          ),
                          ...announcements.map(
                            (a) {
                              return AnnouncementTile(
                                announcement: a,
                                onTap: () {
                                  _announcementsBloc
                                      .add(AnnouncementsEvent.setRead(a.id));
                                  context.goNamed(
                                    AnnouncementsRoutes
                                        .announcementDetailsView.name!,
                                    extra: a,
                                  );
                                },
                              );
                            },
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _header(BuildContext context, List<Announcement> announcements) {
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;

    return Container(
      color: colorPalette.surfaceContainerLowest,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      localizations.announcementsCardTitle,
                      style: textTheme.titleMedium,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                _newChip(announcements.where((a) => a.isRead == false).length),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: colorPalette.surfaceContainerHigh,
          ),
        ],
      ),
    );
  }
}

class _AnnouncementsEmpty extends StatelessWidget {
  const _AnnouncementsEmpty();

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;

    return Container(
      color: colorPalette.surface,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24,
          ),
          Text(
            localizations.announcementsCardTitle,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            localizations.announcementsEmpty,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: colorPalette.textBase,
                ),
          ),
        ],
      ),
    );
  }
}
