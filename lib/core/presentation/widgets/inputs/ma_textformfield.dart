import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_fonts.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

enum MATextFormFieldType {
  normal,
  email,
  password,
  phoneNumber,
  dollar,
}

class MATextFormField extends StatefulWidget {
  const MATextFormField({
    super.key,
    required this.label,
    this.hintText,
    this.errorText,
    this.hideErrorLabel = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.hasError = false,
    this.maxLength,
    this.suffixIcon,
    this.onPressedSuffix,
    this.maTextFieldType = MATextFormFieldType.normal,
    this.onFocusExited,
    this.onChanged,
    this.controller,
    this.inputFormatters,
    this.enabled,
    this.addLetterSpacing,
    this.readOnly = false,
    this.onTap,
    this.initialValue,
    this.autofillHints,
  });

  const MATextFormField.email({
    super.key,
    this.label = 'Email',
    this.hintText = 'e.g. johndoe@gmail.com',
    this.errorText = 'Email address must have the correct format',
    this.hideErrorLabel = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.emailAddress,
    this.hasError = false,
    this.maxLength = 400,
    this.suffixIcon,
    this.onPressedSuffix,
    this.maTextFieldType = MATextFormFieldType.email,
    this.onFocusExited,
    this.onChanged,
    this.controller,
    this.inputFormatters,
    this.enabled,
    this.addLetterSpacing,
    this.readOnly = false,
    this.onTap,
    this.initialValue,
    this.autofillHints,
  });

  const MATextFormField.username({
    super.key,
    this.label = 'username',
    this.hintText = 'e.g. theuser',
    this.errorText = 'Username must have the correct format',
    this.hideErrorLabel = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.hasError = false,
    this.maxLength = 400,
    this.suffixIcon,
    this.onPressedSuffix,
    this.maTextFieldType = MATextFormFieldType.normal,
    this.onFocusExited,
    this.onChanged,
    this.controller,
    this.inputFormatters,
    this.enabled,
    this.addLetterSpacing,
    this.readOnly = false,
    this.onTap,
    this.initialValue,
    this.autofillHints,
  });

  const MATextFormField.password({
    super.key,
    this.label = 'Password',
    this.hintText = 'Enter x to xx characters',
    this.errorText = "",
    this.hideErrorLabel = false,
    this.obscureText = true,
    this.keyboardType = TextInputType.text,
    this.hasError = false,
    this.maxLength = 64,
    this.suffixIcon,
    this.onPressedSuffix,
    this.maTextFieldType = MATextFormFieldType.password,
    this.onFocusExited,
    this.onChanged,
    this.controller,
    this.inputFormatters,
    this.enabled,
    this.addLetterSpacing,
    this.readOnly = false,
    this.onTap,
    this.initialValue,
    this.autofillHints,
  });

  const MATextFormField.phoneNumber({
    super.key,
    this.label = 'Phone number',
    this.hintText = 'Area code + number',
    this.errorText = 'Incomplete phone number',
    this.hideErrorLabel = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.number,
    this.hasError = false,
    this.maxLength = 400,
    this.suffixIcon,
    this.onPressedSuffix,
    this.maTextFieldType = MATextFormFieldType.phoneNumber,
    this.onFocusExited,
    this.onChanged,
    this.controller,
    this.inputFormatters,
    this.enabled,
    this.addLetterSpacing,
    this.readOnly = false,
    this.onTap,
    this.initialValue,
    this.autofillHints,
  });
  //TODO update labels with internationalization
  const MATextFormField.registrationCode({
    super.key,
    this.label = 'Registration Code',
    this.hintText = 'Enter the code',
    this.errorText = 'Wrong code',
    this.hideErrorLabel = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.hasError = false,
    this.maxLength = 400,
    this.suffixIcon,
    this.onPressedSuffix,
    this.maTextFieldType = MATextFormFieldType.normal,
    this.onFocusExited,
    this.onChanged,
    this.controller,
    this.inputFormatters,
    this.enabled,
    this.addLetterSpacing,
    this.readOnly = false,
    this.onTap,
    this.initialValue,
    this.autofillHints,
  });

  const MATextFormField.dollar({
    super.key,
    required this.label,
    this.hintText = '\$0',
    this.errorText = 'Enter amount',
    this.hideErrorLabel = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.number,
    this.hasError = false,
    this.maxLength = 400,
    this.suffixIcon,
    this.onPressedSuffix,
    this.maTextFieldType = MATextFormFieldType.dollar,
    this.onFocusExited,
    this.onChanged,
    this.controller,
    this.inputFormatters,
    this.enabled,
    this.addLetterSpacing,
    this.readOnly = false,
    this.onTap,
    this.initialValue,
    this.autofillHints,
  });

  final String label;
  final String? hintText;
  final String? errorText;
  final bool? hideErrorLabel;
  final bool obscureText;
  final TextInputType keyboardType;
  final bool hasError;
  final int? maxLength;
  final Widget? suffixIcon;
  final VoidCallback? onPressedSuffix;
  final MATextFormFieldType maTextFieldType;
  final VoidCallback? onFocusExited;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final bool? addLetterSpacing;
  final bool readOnly;
  final VoidCallback? onTap;
  final String? initialValue;
  final Iterable<String>? autofillHints;

  @override
  State<MATextFormField> createState() => _MATextFieldState();
}

class _MATextFieldState extends State<MATextFormField> {
  late TextEditingController _controller;
  //
  // Flags
  //
  late bool obscureText;

  //
  // Notifiers
  //
  late ValueNotifier<bool> hasErrorNotifier;
  late ValueNotifier<bool> hasFocusNotifier;
  late ValueNotifier<bool> showSuffixNotifier;

  //
  // Focus Nodes
  //
  late FocusNode focusNode;

  //
  // Keys
  //
  late GlobalKey<FormFieldState> fieldKey;

  @override
  void initState() {
    fieldKey = GlobalKey<FormFieldState>();
    _controller = TextEditingController();
    if (widget.controller != null) {
      _controller = widget.controller!;
    }

    obscureText = widget.obscureText;
    hasErrorNotifier = ValueNotifier<bool>(widget.hasError);
    hasFocusNotifier = ValueNotifier<bool>(false);
    showSuffixNotifier = ValueNotifier<bool>(false);
    focusNode = FocusNode();
    focusNode.addListener(() {
      hasFocusNotifier.value = focusNode.hasFocus;

      if (!focusNode.hasFocus) {
        if (widget.onFocusExited != null) {
          widget.onFocusExited!();
        } else {
          fieldKey.currentState?.validate();
        }
      }
    });

    _controller.addListener(
      () {
        if (widget.maTextFieldType == MATextFormFieldType.email ||
            widget.maTextFieldType == MATextFormFieldType.phoneNumber) {
          showSuffixNotifier.value = _controller.value.text.isNotEmpty;
        }
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    hasErrorNotifier.dispose();
    focusNode.dispose();
    hasFocusNotifier.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final verticalPadding = locator<ScalerConfig>().textFieldVerticalPadding;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ValueListenableBuilder<bool>(
          valueListenable: hasErrorNotifier,
          builder: (_, hasError, child) {
            return Text(
              widget.label,
              style: TextStyle(
                color: widget.hasError
                    ? colorPalette.warningWarning
                    : colorPalette.textBase,
                fontWeight: FontWeight.w400,
                fontSize: 17,
                height: 1.5,
                fontFamily: MAFontFamily.lato,
              ),
            );
          },
        ),
        const SizedBox(
          height: 8,
        ),
        ValueListenableBuilder<bool>(
          valueListenable: hasFocusNotifier,
          builder: (context, hasFocus, child) {
            return TextFormField(
              initialValue: widget.initialValue,
              onTap: widget.onTap,
              enabled: widget.enabled,
              focusNode: focusNode,
              readOnly: widget.readOnly,
              autofillHints: widget.autofillHints,
              key: fieldKey,
              controller: widget.initialValue != null ? null : _controller,
              onChanged: widget.onChanged,
              maxLength: widget.maxLength,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    letterSpacing: (widget.addLetterSpacing != null &&
                            widget.addLetterSpacing == true)
                        ? 2
                        : null,
                  ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: verticalPadding,
                ),
                filled: true,
                fillColor: colorPalette.inputFieldInputBg,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    color: colorPalette.inputFieldInputBorderNormal,
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    color: colorPalette.inputFieldInputBorderFocus,
                    width: 3.0,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    color: colorPalette.inputFieldInputBorderWarning,
                    width: 3.0,
                  ),
                ),
                counter: const SizedBox(),
                hintText: hasFocus ? null : widget.hintText,
                hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colorPalette.textMuted,
                    ),
                errorStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colorPalette.warningWarning,
                    ),
                errorText: widget.hasError ? widget.errorText : null,
                errorMaxLines: 2,
                prefix: const SizedBox(
                  width: 16,
                ),
                suffixIcon: GestureDetector(
                  onTap: widget.maTextFieldType == MATextFormFieldType.normal
                      ? widget.onPressedSuffix
                      : widget.maTextFieldType == MATextFormFieldType.email ||
                              widget.maTextFieldType ==
                                  MATextFormFieldType.phoneNumber
                          ? _emailSuffixTapEvent
                          : _passwordSuffixTapEvent,
                  child: widget.maTextFieldType == MATextFormFieldType.normal ||
                          widget.maTextFieldType == MATextFormFieldType.dollar
                      ? widget.suffixIcon ?? const SizedBox()
                      : widget.maTextFieldType == MATextFormFieldType.email ||
                              widget.maTextFieldType ==
                                  MATextFormFieldType.phoneNumber
                          ? ValueListenableBuilder<bool>(
                              valueListenable: showSuffixNotifier,
                              builder: (context, visible, child) {
                                return Visibility(
                                  visible: visible,
                                  child: Icon(
                                    Icons.close,
                                    size: 24,
                                    color: colorPalette.textMuted,
                                  ),
                                );
                              })
                          : obscureText
                              ? Icon(
                                  Icons.visibility_off_outlined,
                                  size: 24,
                                  color: colorPalette.textMuted,
                                )
                              : Icon(
                                  Icons.visibility_outlined,
                                  size: 24,
                                  color: colorPalette.textMuted,
                                ),
                ),
              ),
              inputFormatters: widget.inputFormatters ??
                  (widget.maTextFieldType == MATextFormFieldType.email
                      ? [
                          FilteringTextInputFormatter.deny(RegExp(r'\s')),
                        ]
                      : widget.maTextFieldType ==
                              MATextFormFieldType.phoneNumber
                          ? [
                              MaskedInputFormatter('(000) 000-0000'),
                              LengthLimitingTextInputFormatter(14),
                            ]
                          : widget.maTextFieldType == MATextFormFieldType.dollar
                              ? [
                                  FilteringTextInputFormatter.deny(
                                      RegExp(r'-')),
                                  CurrencyInputFormatter(
                                    leadingSymbol: '\$',
                                  ),
                                ]
                              : null),
              obscureText: obscureText,
              keyboardType: widget.keyboardType,
            );
          },
        ),
      ],
    );
  }

  void _emailSuffixTapEvent() {
    _controller.text = '';
    setState(() {});
  }

  void _passwordSuffixTapEvent() {
    obscureText = !obscureText;
    setState(() {});
  }
}
