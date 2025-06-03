import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MASwitchCard extends StatelessWidget {
  const MASwitchCard({
    super.key,
    required this.isOn,
    required this.onChanged,
    required this.text,
  });

  final String text;
  final bool isOn;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30),
      constraints: const BoxConstraints(minHeight: 48.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        color: isOn ? colorPalette.secondary100 : colorPalette.surfaceBright,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              text,
              style: textTheme.titleSmall,
            ),
          ),
          Switch(
            value: isOn,
            thumbColor: WidgetStateProperty.resolveWith<Color>((states) {
              if (states.contains(WidgetState.selected)) {
                return colorPalette.inputFieldSwitchSliderOn;
              }
              return colorPalette.inputFieldSwitchSliderOff;
            }),
            trackColor: WidgetStateProperty.resolveWith<Color>((states) {
              if (states.contains(WidgetState.selected)) {
                return colorPalette.inputFieldSwitchTrackOn;
              }
              return colorPalette.inputFieldSwitchTrackOff;
            }),
            trackOutlineColor:
                WidgetStateProperty.resolveWith<Color>((states) {
              if (states.contains(WidgetState.selected)) {
                return colorPalette.inputFieldSwitchTrackOn;
              }
              return colorPalette.inputFieldSwitchSliderOff;
            }),
            onChanged: onChanged,
          )
        ],
      ),
    );
  }
}
