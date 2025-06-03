import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

final _colorPalette = locator<ColorPalette>();

class MACenterDialog extends StatelessWidget {
  const MACenterDialog({
    super.key,
    required this.body,
    required this.actions,
  });

  final Widget body;
  final List<MADialogAction>? actions;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return Dialog(
      insetPadding: const EdgeInsets.only(left: 24, right: 24),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: colorPalette.surfaceContainerLowest,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: 3,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(28),
              ),
              child: Column(
                children: [
                  Center(child: body),
                  if (actions != null)
                    SizedBox(
                        // width: double.infinity,
                        child: Wrap(alignment: WrapAlignment.end, children: [
                      Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: TextButton(
                            onPressed: actions![1].onPressed,
                            child: Text(
                              actions![1].label,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: _colorPalette.buttonSecondaryLabel,
                                  ),
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: MAElevatedButton(
                            constraints: const BoxConstraints(maxWidth: 100),
                            onPressed: actions![0].onPressed,
                            child: Text(
                              actions![0].label,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: _colorPalette.buttonPrimaryLabel,
                                  ),
                            ),
                          )),
                    ])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
