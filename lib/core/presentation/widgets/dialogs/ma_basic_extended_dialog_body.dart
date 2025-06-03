import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';

import 'ma_dialog.dart';

class MABasicExtendedDialogBody extends StatelessWidget
    implements MADialogBody {
  const MABasicExtendedDialogBody({
    super.key,
    required this.title,
    required this.text,
    required this.content,
  });

  final String title;
  final String text;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        MASpacing.xxl(),
        content,
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        MASpacing.xxl(),
      ],
    );
  }
}
