import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_button_styles.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_text_button.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

final _colorPalette = locator<ColorPalette>();

class MASnackBar extends SnackBar {
  MASnackBar({
    super.key,
    Widget? content,
    String? message,
    String? actionLabel,
    bool showDismiss = true,
    VoidCallback? onSnackBarDismiss,
    VoidCallback? snackBarAction,
    bool? showCloseIcon,
    super.duration,
  }) : super(
            behavior: SnackBarBehavior.floating,
            backgroundColor: _colorPalette.surfaceContainerLowest,
            elevation: 1.0,
            padding: EdgeInsets.zero,
            content: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: _MASnackBarMaterial(
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: _colorPalette.surfaceContainerLowest,
                      boxShadow: [
                        BoxShadow(
                          color: _colorPalette.surfaceContainerLow,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: RelationalPadding(
                      addVerticalPadding: true,
                      child: content ??
                          SnackbarContent(
                            message: message,
                            actionLabel: actionLabel,
                            onSnackBarDismiss: onSnackBarDismiss,
                            snackBarAction: snackBarAction,
                            showDismiss: showDismiss,
                          ),
                    ),
                  ),
                ),
              ),
            ));
  MASnackBar.success({
    super.key,
    Widget? content,
    String? message,
    String? actionLabel,
    VoidCallback? snackBarAction,
    super.duration,
  }) : super(
          behavior: SnackBarBehavior.floating,
          elevation: 1.0,
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          content: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _MASnackBarMaterial(
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: _colorPalette.snackbarSuccess,
                        boxShadow: [
                          BoxShadow(
                            color: _colorPalette.surfaceDim,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(
                              0,
                              1,
                            ), // changes position of shadow
                          ),
                        ],
                      ),
                      child: RelationalPadding(
                        addVerticalPadding: true,
                        child: Container(
                          width: double.infinity,
                          color: _colorPalette.snackbarSuccess,
                          child: content ??
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      message ?? "Snackbar invoke",
                                      style: TextStyle(
                                        color: _colorPalette.textBase,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: snackBarAction,
                                      child: const Icon(Icons.check)),
                                ],
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );

  MASnackBar.failure({
    super.key,
    Widget? content,
    String? message,
    String? actionLabel,
    VoidCallback? snackBarAction,
    super.duration,
  }) : super(
          behavior: SnackBarBehavior.floating,
          elevation: 1.0,
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          content: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _MASnackBarMaterial(
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.red.shade100,
                        boxShadow: [
                          BoxShadow(
                            color: _colorPalette.surfaceDim,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(
                              0,
                              1,
                            ), // changes position of shadow
                          ),
                        ],
                      ),
                      child: RelationalPadding(
                        addVerticalPadding: true,
                        child: Container(
                          width: double.infinity,
                          color: Colors.red.shade100,
                          child: content ??
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      message ?? "Snackbar invoke",
                                      style: TextStyle(
                                        color: _colorPalette.textBase,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: snackBarAction,
                                      child: const Icon(Icons.close)),
                                ],
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
}

class SnackbarContent extends StatelessWidget {
  final String? message;
  final String? actionLabel;
  final bool showDismiss;
  final VoidCallback? onSnackBarDismiss;
  final VoidCallback? snackBarAction;

  const SnackbarContent(
      {super.key,
      this.message,
      this.actionLabel,
      this.showDismiss = true,
      this.onSnackBarDismiss,
      this.snackBarAction});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    if (actionLabel != null && actionLabel!.length > 6) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * .65,
              child: Text(message ?? "Snackbar invoked")),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MATextButton.primary(
                onPressed: snackBarAction ?? () {},
                text: actionLabel,
                buttonStyle: MAButtonStyles.mainTextButton.copyWith(
                    padding: const WidgetStatePropertyAll(
                        EdgeInsets.fromLTRB(0, 0, 0, 5))),
              ),
              if (showDismiss)
                IconButton(
                    onPressed: onSnackBarDismiss,
                    icon: const Icon(Icons.close)),
            ],
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              message ?? "Snackbar invoked",
              style: textTheme.labelMedium,
            ),
          ),
          if (actionLabel != null)
            MATextButton.primary(
              onPressed: snackBarAction ?? () {},
              text: actionLabel,
              buttonStyle: MAButtonStyles.mainTextButton.copyWith(
                  padding: const WidgetStatePropertyAll(
                      EdgeInsets.fromLTRB(0, 0, 0, 5))),
            ),
          if (showDismiss)
            IconButton(
                onPressed: onSnackBarDismiss, icon: const Icon(Icons.close)),
        ],
      );
    }
  }
}

class _MASnackBarMaterial extends StatelessWidget {
  final Widget child;

  const _MASnackBarMaterial({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      elevation: 10.0,
      child: child,
    );
  }
}
