import 'package:flutter/material.dart';

extension GetMediaQuery on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  bool get isKeyboardVisible => MediaQuery.of(this).viewInsets.bottom != 0;
}
