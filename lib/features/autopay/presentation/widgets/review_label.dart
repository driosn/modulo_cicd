import 'package:flutter/material.dart';
class ReviewLabel extends StatelessWidget {
  const ReviewLabel(
    this.text, {
    super.key,
    this.italicStyle = false,
  });

  final String text;
  final bool italicStyle;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: italicStyle
            ? textTheme.bodySmall!.copyWith(
                fontStyle: FontStyle.italic,
              )
            : textTheme.bodyMedium,
      ),
    );
  }
}
