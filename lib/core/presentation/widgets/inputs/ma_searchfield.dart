import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MASearchField extends StatelessWidget {
  const MASearchField({
    super.key,
    required this.onChanged,
  });

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;

    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
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
        prefixIcon: Icon(
          Icons.search,
          color: colorPalette.textMuted,
        ),
        counter: const SizedBox(),
        hintText: localizations.search,
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: colorPalette.textMuted,
            ),
        errorStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: colorPalette.warningWarning,
            ),
        errorText: null,
      ),
    );
  }
}
