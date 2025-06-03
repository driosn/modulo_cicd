import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class OptionContentCard<T> extends StatefulWidget {
  const OptionContentCard({
    super.key,
    this.padding,
    this.crossAxisAlignment,
    required this.value,
    required this.groupValue,
    required this.content,
    required this.onSelected,
  });

  final EdgeInsetsGeometry? padding;
  final CrossAxisAlignment? crossAxisAlignment;
  final T value;
  final T groupValue;
  final Widget content;
  final Function(T) onSelected;

  @override
  State<OptionContentCard<T>> createState() => _OptionContentCardState<T>();
}

class _OptionContentCardState<T> extends State<OptionContentCard<T>> {
  final _colorPalette = locator<ColorPalette>();
  late ValueNotifier<bool> _isSelectedNotifier;

  @override
  void initState() {
    _isSelectedNotifier = ValueNotifier<bool>(
      widget.value == widget.groupValue,
    );
    super.initState();
  }

  @override
  void didUpdateWidget(OptionContentCard<T> oldWidget) {
    _isSelectedNotifier = ValueNotifier<bool>(
      widget.value == widget.groupValue,
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _isSelectedNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scalerConfig = locator<ScalerConfig>();
    final colorPalette = locator<ColorPalette>();
    return ValueListenableBuilder<bool>(
      valueListenable: _isSelectedNotifier,
      builder: (context, isSelected, child) {
        return GestureDetector(
          onTap: () {
            widget.onSelected(
              widget.value,
            );
          },
          child: Container(
            padding: widget.padding ?? const EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: isSelected ? _colorPalette.surfaceContainerLowest : _colorPalette.surface,
              border: isSelected
                  ? Border.all(
                      color: _colorPalette.primary600,
                      width: 3,
                    )
                  : null,
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: scalerConfig.spacingM,
                bottom: scalerConfig.spacingXXL,
              ),
              child: Row(
                crossAxisAlignment: widget.crossAxisAlignment ?? CrossAxisAlignment.start,
                children: [
                  MAScaler(
                    child: SizedBox(
                      height: 28,
                      width: 28,
                      child: Radio<T>(
                        splashRadius: 30,
                        fillColor: WidgetStatePropertyAll(
                          isSelected ? colorPalette.inputFieldRadioSelected : colorPalette.inputFieldRadioUnselected,
                        ),
                        value: widget.value,
                        groupValue: widget.groupValue,
                        onChanged: null,
                      ),
                    ),
                  ),
                  MASpacing.l(
                    axis: Axis.horizontal,
                  ),
                  Expanded(
                    child: widget.content,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
