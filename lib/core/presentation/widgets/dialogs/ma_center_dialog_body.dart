import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';

import 'ma_dialog.dart';

class MACenterDialogBody extends StatelessWidget implements MADialogBody {
  const MACenterDialogBody({
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
          Center(
            child: Text(
              title!,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const RelationalSpace(),
        ],
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        const RelationalSpace(),
      ],
    );
  }
}
