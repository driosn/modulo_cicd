import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_button_styles.dart';

class MATextButton extends StatelessWidget {
  MATextButton({
    super.key,
    this.text,
    this.child,
    this.onPressed,
    this.disabled = false,
    this.width,
    this.constraints = _defaultConstraints,
    ButtonStyle? enabledButtonStyle,
    ButtonStyle? disabledButtonStyle,
    this.isPadding = true,
  })  : enabledButtonStyle =
            enabledButtonStyle ?? MAButtonStyles.mainTextButton,
        disabledButtonStyle =
            disabledButtonStyle ?? MAButtonStyles.textButtonDisabled;

  factory MATextButton.custom({
    Key? key,
    String? text,
    Widget? child,
    VoidCallback? onPressed,
    bool disabled = false,
    double? width,
    BoxConstraints? constraints,
    ButtonStyle? buttonStyle,
  }) {
    return MATextButton(
      key: key,
      text: text,
      onPressed: onPressed,
      disabled: disabled,
      width: width,
      constraints: constraints ?? _defaultConstraints,
      enabledButtonStyle: buttonStyle ?? MAButtonStyles.mainTextButton,
      child: child,
    );
  }
  factory MATextButton.primary({
    Key? key,
    String? text,
    Widget? child,
    VoidCallback? onPressed,
    bool disabled = false,
    double? width,
    BoxConstraints? constraints,
    ButtonStyle? buttonStyle,
  }) {
    return MATextButton(
      key: key,
      text: text,
      onPressed: onPressed,
      disabled: disabled,
      width: width,
      constraints: constraints ?? _defaultConstraints,
      enabledButtonStyle: buttonStyle ?? MAButtonStyles.mainTextButton,
      child: child,
    );
  }

  factory MATextButton.secondary({
    Key? key,
    String? text,
    Widget? child,
    VoidCallback? onPressed,
    bool disabled = false,
    double? width,
    BoxConstraints? constraints,
    ButtonStyle? buttonStyle,
  }) {
    return MATextButton(
      key: key,
      text: text,
      onPressed: onPressed,
      disabled: disabled,
      width: width,
      constraints: constraints ?? _defaultConstraints,
      enabledButtonStyle: buttonStyle ?? MAButtonStyles.secondaryTextButton,
      child: child,
    );
  }

  factory MATextButton.hyperLink({
    Key? key,
    String? text,
    Widget? child,
    VoidCallback? onPressed,
    bool disabled = false,
    double? width,
    BoxConstraints? constraints,
    ButtonStyle? buttonStyle,
  }) {
    return MATextButton(
      key: key,
      text: text,
      onPressed: onPressed,
      disabled: disabled,
      width: width,
      constraints: constraints ?? _defaultConstraints,
      enabledButtonStyle: buttonStyle ?? MAButtonStyles.hyperlinkTextButton,
      disabledButtonStyle: MAButtonStyles.hyperlinkTextButtonDisabled,
      child: child,
    );
  }

  final String? text;
  final Widget? child;
  final double? width;
  final BoxConstraints constraints;
  final VoidCallback? onPressed;
  final bool disabled;
  final ButtonStyle enabledButtonStyle;
  final ButtonStyle disabledButtonStyle;
  final bool isPadding;

  static const _defaultConstraints = BoxConstraints.tightForFinite();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: disabled || onPressed == null
          ? disabledButtonStyle
          : enabledButtonStyle,
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.only(
          top: isPadding ? 10.0 : 0,
          bottom: isPadding ? 10 : 0,
        ),
        child: child ??
            Text(
              text ?? "No text",
            ),
      ),
    );
  }
}
