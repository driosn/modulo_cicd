import 'package:flutter/material.dart';

class PaymentItemHeader extends StatelessWidget {
  const PaymentItemHeader(
      {super.key, required this.title, required this.content, this.textStyle});

  final String title;
  final String content;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            content,
            style: textStyle ??
                theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
          )
        ],
      ),
    );
  }
}
