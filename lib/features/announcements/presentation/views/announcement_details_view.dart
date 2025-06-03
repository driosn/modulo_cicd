import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/announcements/domain/entities/announcement.dart';

class AnnouncementDetailsView extends StatelessWidget {
  const AnnouncementDetailsView({
    super.key,
    required this.announcement,
  });

  final Announcement announcement;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        title: const Text("Sat March 23"),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: colorPalette.primary700,
              border: Border(
                bottom: BorderSide(
                  color: colorPalette.appBarAccent,
                  width: 5,
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        DateFormat('EEEE MMMM d').format(announcement.start),
                        style: textTheme.titleMedium,
                        textAlign: TextAlign.start,
                      ),
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
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        announcement.body,
                        style: textTheme.bodyMedium,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
