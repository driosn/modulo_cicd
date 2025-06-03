import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/helpers/scaler_factor_helper.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MARadioListTile<T> extends StatelessWidget {
  const MARadioListTile({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final T value;
  final T groupValue;
  final Widget title;
  final ValueChanged<T?> onChanged;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    //TODO:  We should move this logic to another place just to execute the getFactor method only one time. Also we can include an observer to update this factor as soon as the user update this factor in the device accessibility settings.
    double scalerFactor =
        ScalerFactorHelper().getFactor(MediaQuery.of(context).textScaler);
    final colorPalette = locator<ColorPalette>();
    return GestureDetector(
      onTap: () {
        onChanged(value);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        child: Row(
          crossAxisAlignment: crossAxisAlignment,
          children: [
            Container(
              height: 24,
              margin: EdgeInsets.only(
                top: crossAxisAlignment == CrossAxisAlignment.start ? 4 : 0.0,
              ),
              width: 24 * scalerFactor,
              child: Transform.scale(
                scale: scalerFactor,
                child: Radio<T>(
                  splashRadius: 30,
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged,
                  fillColor: WidgetStateProperty.resolveWith((states) {
                    // active
                    if (states.contains(WidgetState.selected)) {
                      return colorPalette.inputFieldRadioSelected;
                    }
                    // inactive
                    return colorPalette.inputFieldRadioUnselected;
                  }),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: title,
            )
          ],
        ),
      ),
    );
  }
}
