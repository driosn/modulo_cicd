import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';

import 'ma_dialog.dart';

class MAWithHeroIconDialogBody extends StatelessWidget implements MADialogBody {
  const MAWithHeroIconDialogBody({
    super.key,
    required this.icon,
    required this.title,
    required this.text,
  });

  final Widget icon;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: MAScaler(
            child: SizedBox(
              height: 24,
              width: 24,
              child: icon,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: Text(
            title,
            style: textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const RelationalSpace(),
        Text(
          text,
          style: textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 16,
        ),
        const RelationalSpace(),
      ],
    );
  }
}
