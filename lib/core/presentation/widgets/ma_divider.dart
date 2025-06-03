import 'package:flutter/material.dart';

class MADivider extends StatelessWidget {
  const MADivider({
    super.key,
    required this.height,
    required this.color,
  });

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: color,
      width: double.infinity,
    );
  }
}
