import 'package:flutter/material.dart';

class MATextField extends StatelessWidget {
  const MATextField({super.key, required this.text, required this.textStyle});
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: textStyle,
      ),
    );
  }
}
