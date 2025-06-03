import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/helpers/scaler_factor_helper.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
    required this.children,
    required this.cardTitle,
    required this.divider,
    this.svgIcon,
    this.icon,
    required this.iconColor,
  });

  final List<Widget> children;
  final String cardTitle;
  final bool divider;
  final String? svgIcon;
  final IconData? icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    const double leftPadding = 40;
    double scalerFactor =
        ScalerFactorHelper().getFactor(MediaQuery.of(context).textScaler);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: leftPadding,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Transform.scale(
                    scale: scalerFactor,
                    child: svgIcon != null
                        ? SvgPicture.asset(
                            svgIcon!,
                            colorFilter:
                                ColorFilter.mode(iconColor, BlendMode.srcIn),
                            height: 24,
                            width: 24,
                          )
                        : Icon(
                            icon,
                            color: colorPalette.iconBaseTextIcon,
                            size: 25,
                          ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    cardTitle,
                    style: textTheme.titleMedium,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 16, left: leftPadding, right: 30, bottom: 15),
            child: Column(
              children: children,
            ),
          ),
          if (divider)
            Divider(
              color: colorPalette.primary300,
              thickness: 1,
            )
        ],
      ),
    );
  }
}
