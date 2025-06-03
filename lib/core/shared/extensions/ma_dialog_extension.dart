import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_center_dialog.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';

extension MADialogExtension on BuildContext {
  bool get isDialogOpen => ModalRoute.of(this)?.isCurrent != true;

  closeAnyOpenedDialog() => isDialogOpen ? Navigator.pop(this) : null;

  showMADialog({
    required MADialogBody maDialogBody,
    List<MADialogAction>? actions,
    bool barrierDismissible = true,
    Color? barrierColor,
  }) {
    showDialog(
      context: this,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      builder: (context) {
        return MADialog(
          body: maDialogBody,
          actions: actions,
        );
      },
    );
  }

   showMACenterDialog({
    required MADialogBody maDialogBody,
    List<MADialogAction>? actions,
    bool barrierDismissible = true,
    Color? barrierColor,
  }) {
    showDialog(
      context: this,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      builder: (context) {
        return MACenterDialog(
          body: maDialogBody,
          actions: actions,
        );
      },
    );
  }


  showLoader() {
    showDialog(
      context: this,
      barrierDismissible: false,
      barrierColor: Colors.transparent,
      builder: (context) => const Dialog(
        backgroundColor: Colors.transparent,
        child: Center(
          child: MACircularProgressIndicator(),
        ),
      ),
    );
  }
}
