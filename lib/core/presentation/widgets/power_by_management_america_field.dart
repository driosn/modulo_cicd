import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class PowerByManagementAmericaField extends StatelessWidget {
  const PowerByManagementAmericaField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/MA-logo-single-color.svg',
          colorFilter: ColorFilter.mode(
            colorPalette.iconBaseTextIcon,
            BlendMode.srcIn,
          ),
          height: 25,
          width: 25,
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              "Powered by ManageAmerica",
              textAlign: TextAlign.center,
              style: textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
