import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';

class MATitleContentDialogBody extends StatelessWidget implements MADialogBody {
  const MATitleContentDialogBody({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 16,
        ),
        const RelationalSpace(),
        content,
        const SizedBox(
          height: 16,
        ),
        const RelationalSpace(),
      ],
    );
  }
}
