import 'package:flutter/material.dart';

class MABottomSafeSpacing extends StatelessWidget {
  const MABottomSafeSpacing({
    super.key,
    required BuildContext context,
  }) : _context = context;

  final BuildContext _context;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(_context).padding.bottom,
    );
  }
}
