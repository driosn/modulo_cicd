import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';

class ImageCarrousel extends StatelessWidget {
  const ImageCarrousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          MAScaler(
            child: SvgPicture.asset(
              'assets/third_party/mastercard.svg',
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          MAScaler(
            child: SvgPicture.asset(
              'assets/third_party/visa.svg',
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          MAScaler(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(2),
                bottomLeft: Radius.circular(2),
              ),
              child: SvgPicture.asset(
                'assets/third_party/amex.svg',
                height: 36,
              ),
            ),
          )
        ],
      ),
    );
  }
}
