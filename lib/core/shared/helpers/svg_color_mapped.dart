import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

class SvgColorMapper implements ColorMapper {
  final Color fromColor;
  final Color toColor;

  const SvgColorMapper({required this.fromColor, required this.toColor});

  @override
  Color substitute(
    String? id,
    String elementName,
    String attributeName,
    Color color,
  ) {
    if (color == fromColor) return toColor;
    return color;
  }
}


//EXAMPLE OF IMPLEMENTATION

                    // SvgPicture(
                    //   SvgAssetLoader(
                    //     'assets/auto_pay.svg',
                    //     colorMapper: SvgColorMapper(
                    //         fromColor: colorPlaceHolder,
                    //         toColor: Theme.of(context).primaryColor),
                    //   ),
                    // ),
