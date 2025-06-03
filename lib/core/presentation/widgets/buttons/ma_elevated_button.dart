import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_button_styles.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MAElevatedButton extends StatelessWidget {
  MAElevatedButton({
    super.key,
    this.text,
    this.child,
    this.onPressed,
    this.disabled = false,
    this.width,
    this.constraints = _defaultConstraints,
    ButtonStyle? enabledButtonStyle,
    ButtonStyle? disabledButtonStyle,
  })  : enabledButtonStyle = enabledButtonStyle ?? MAButtonStyles.elevatedButtonPrimary,
        disabledButtonStyle = disabledButtonStyle ?? MAButtonStyles.elevatedButtonDisabled;

  factory MAElevatedButton.custom({
    Key? key,
    String? text,
    Widget? child,
    VoidCallback? onPressed,
    bool disabled = false,
    double? width,
    BoxConstraints? constraints,
    ButtonStyle? buttonStyle,
  }) {
    return MAElevatedButton(
      key: key,
      text: text,
      onPressed: onPressed,
      disabled: disabled,
      width: width,
      constraints: constraints ?? _defaultConstraints,
      enabledButtonStyle: buttonStyle ?? MAButtonStyles.elevatedButtonPrimary,
      child: child,
    );
  }

  factory MAElevatedButton.primary({
    Key? key,
    String? text,
    Widget? child,
    VoidCallback? onPressed,
    bool disabled = false,
    double? width,
    BoxConstraints? constraints,
  }) {
    return MAElevatedButton(
      key: key,
      text: text,
      onPressed: onPressed,
      disabled: disabled,
      width: width,
      constraints: constraints ?? _defaultConstraints,
      enabledButtonStyle: MAButtonStyles.elevatedButtonPrimary,
      child: child,
    );
  }

  factory MAElevatedButton.secondary({
    Key? key,
    String? text,
    Widget? child,
    VoidCallback? onPressed,
    bool disabled = false,
    double? width,
    BoxConstraints? constraints,
  }) {
    return MAElevatedButton(
      key: key,
      text: text,
      onPressed: onPressed,
      disabled: disabled,
      width: width,
      constraints: constraints ?? _defaultConstraints,
      enabledButtonStyle: MAButtonStyles.elevatedButtonSecondary,
      disabledButtonStyle: MAButtonStyles.elevatedButtonSecondaryDisabled,
      child: child,
    );
  }
  factory MAElevatedButton.social({
    Key? key,
    String? text,
    Widget? child,
    VoidCallback? onPressed,
    bool disabled = false,
    double? width,
    BoxConstraints? constraints,
  }) {
    return MAElevatedButton(
      key: key,
      text: text,
      onPressed: onPressed,
      disabled: disabled,
      width: width,
      constraints: constraints ?? _defaultConstraints,
      enabledButtonStyle: MAButtonStyles.elevatedButtonSocial,
      disabledButtonStyle: MAButtonStyles.elevatedButtonSecondaryDisabled,
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

  static const _defaultConstraints = BoxConstraints(minWidth: double.infinity);

  @override
  Widget build(BuildContext context) {
    final scalerConfig = locator<ScalerConfig>();
    final buttonVerticalPadding = scalerConfig.buttonVerticalPadding;

    return Container(
      width: width,
      constraints: constraints,
      child: ElevatedButton(
        style: disabled || onPressed == null ? disabledButtonStyle : enabledButtonStyle,
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.only(
            top: buttonVerticalPadding,
            bottom: buttonVerticalPadding,
            left: 12,
            right: 12,
          ),
          child: child ??
              Text(
                text ?? '',
                textAlign: TextAlign.center,
              ),
        ),
      ),
    );
  }
}
