import 'package:flutter/material.dart';

mixin MADrawerInternalItem {}

class MADrawerInternalTile extends ListTile with MADrawerInternalItem {
  MADrawerInternalTile({
    this.onPressed,
    required this.name,
    super.key,
    this.child,
  }) : super(
          onTap: onPressed,
          title: child ??
              Text(
                name,
              ),
          contentPadding: const EdgeInsets.all(0),
        );

  final String name;
  final Widget? child;
  final VoidCallback? onPressed;
}
