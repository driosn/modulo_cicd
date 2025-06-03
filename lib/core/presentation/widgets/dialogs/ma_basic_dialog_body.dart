import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';

import 'ma_dialog.dart';

class MABasicDialogBody extends StatelessWidget implements MADialogBody {
  const MABasicDialogBody({
    super.key,
    this.title,
    required this.text,
  });

  final String? title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (title != null) ...[
          Text(
            title!,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 16,
          ),
          const RelationalSpace(),
        ],
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 16,
        ),
        const RelationalSpace(),
      ],
    );
  }
}
