import 'package:flutter/material.dart';

class MultiCharBadge extends StatelessWidget {
  const MultiCharBadge({
    super.key,
    required this.label,
    required this.color,
    required this.textColor,
  });

  final String label;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 24,
      ),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: color,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              label,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
