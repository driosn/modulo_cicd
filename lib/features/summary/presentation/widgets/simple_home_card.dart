import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class SimpleHomeCard extends StatelessWidget {
  const SimpleHomeCard({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 3,
            spreadRadius: 1,
            color: Colors.black.withOpacity(0.15),
          ),
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 2,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.30),
          ),
        ],
        color: colorPalette.cardBg,
      ),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            title,
            style: textTheme.titleMedium,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            text,
            style: textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
