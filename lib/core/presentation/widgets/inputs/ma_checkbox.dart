import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MACheckbox extends StatelessWidget {
  const MACheckbox({
    super.key,
    required this.isOn,
    required this.onChanged,
  });

  final bool isOn;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return Checkbox(
      value: isOn,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      side: BorderSide(
        color: colorPalette.inputFieldCheckboxUnselectedBorder,
        width: 2,
      ),
      fillColor: WidgetStateProperty.resolveWith((states) {
        // active
        if (states.contains(WidgetState.selected)) {
          return colorPalette.inputFieldCheckboxSelected;
        }
        // inactive
        return colorPalette.inputFieldCheckboxUnselected;
      }),
      onChanged: onChanged,
    );
  }
}
