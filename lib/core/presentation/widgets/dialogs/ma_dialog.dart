import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

abstract class MADialogBody implements Widget {}

final _colorPalette = locator<ColorPalette>();

enum MADialogActionStyle {
  elevated,
  text,
}

final class MADialogAction {
  const MADialogAction({
    required this.label,
    required this.onPressed,
    required this.style,
  });

  final String label;
  final VoidCallback onPressed;
  final MADialogActionStyle style;
}

class MADialog extends StatelessWidget {
  const MADialog({
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
                  body,
                  if (actions != null)
                    Align(
                      alignment: Alignment.centerRight,
                      child: Wrap(
                        alignment: WrapAlignment.end,
                        children: actions!
                            .map(
                              (action) => Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                ),
                                child: IntrinsicWidth(
                                  child: action.style == MADialogActionStyle.elevated
                                      ? _mainAction(
                                          context,
                                          onPressed: action.onPressed,
                                          label: action.label.toUpperCase(),
                                        )
                                      : _secondaryAction(
                                          context,
                                          onPressed: action.onPressed,
                                          label: action.label.toUpperCase(),
                                        ),
                                ),
                              ),
                            )
                            .toList()
                            .reversed
                            .toList(),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _mainAction(
    BuildContext context, {
    required VoidCallback onPressed,
    required String label,
  }) {
    return MAElevatedButton.primary(
      onPressed: onPressed,
      text: label,
    );
  }

  Widget _secondaryAction(
    BuildContext context, {
    required VoidCallback onPressed,
    required String label,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: _colorPalette.buttonSecondaryLabel,
            ),
      ),
    );
  }
}
