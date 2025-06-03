import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/badges/multi_char_badge.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/announcements/domain/entities/announcement.dart';

class AnnouncementTile extends StatelessWidget {
  const AnnouncementTile({
    super.key,
    required this.announcement,
    this.badgeText,
    this.badgeTextColor,
    this.badgeColor,
    required this.onTap,
  });

  final Announcement announcement;
  final String? badgeText;
  final Color? badgeTextColor;
  final Color? badgeColor;
  final VoidCallback onTap;

  Widget _newChip() {
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
        'New',
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: announcement.isRead
            ? colorPalette.surface
            : colorPalette.surfaceContainerLowest,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 16,
                top: 16,
                bottom: 16,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            DateFormat('EEE MMMM d').format(announcement.start),
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        if (!announcement.isRead) _newChip(),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  children: [
                                    if (badgeText != null)
                                      WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: MultiCharBadge(
                                          label: badgeText!,
                                          color: badgeColor ??
                                              colorPalette
                                                  .surfaceContainerLowest,
                                          textColor: badgeTextColor ??
                                              colorPalette
                                                  .surfaceContainerLowest,
                                        ),
                                      ),
                                    TextSpan(
                                      text: announcement.body,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            textScaler: MediaQuery.of(context).textScaler,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_outlined,
                        size: 32,
                        color: colorPalette.onSurfaceVariant,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: colorPalette.surfaceContainerHigh,
            ),
          ],
        ),
      ),
    );
  }
}
