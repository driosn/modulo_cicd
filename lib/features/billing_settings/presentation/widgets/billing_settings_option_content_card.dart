import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/billing_settings/application/bloc/bill_delivery_bloc.dart';

class BillingSettingsOptionContentCard<T> extends StatefulWidget {
  const BillingSettingsOptionContentCard({
    super.key,
    this.padding,
    this.crossAxisAlignment,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.content,
    required this.onSelected,
  });

  final EdgeInsetsGeometry? padding;
  final CrossAxisAlignment? crossAxisAlignment;
  final String title;
  final T value;
  final T groupValue;
  final Widget content;
  final Function(T) onSelected;

  @override
  State<BillingSettingsOptionContentCard<T>> createState() =>
      _BillingSettingsOptionContentCardState<T>();
}

class _BillingSettingsOptionContentCardState<T>
    extends State<BillingSettingsOptionContentCard<T>> {
  final _colorPalette = locator<ColorPalette>();
  late ValueNotifier<bool> _isSelectedNotifier;
  late ColorPalette colorPalette;
  late BillDeliveryBloc billDeliveryBloc;

  @override
  void initState() {
    colorPalette = locator<ColorPalette>();
    billDeliveryBloc = locator<BillDeliveryBloc>();
    _isSelectedNotifier = ValueNotifier<bool>(
      widget.value == widget.groupValue,
    );
    super.initState();
  }

  @override
  void didUpdateWidget(BillingSettingsOptionContentCard<T> oldWidget) {
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
    final textTheme = Theme.of(context).textTheme;
    return ValueListenableBuilder<bool>(
      valueListenable: _isSelectedNotifier,
      builder: (context, isSelected, child) {
        return GestureDetector(
          onTap: () {
            widget.onSelected(
              widget.value,
            );
            if (billDeliveryBloc.state.readMode) {
              billDeliveryBloc.add(
                const BillDeliveryEvent.setReadMode(false),
              );
            }
          },
          child: Container(
            padding: widget.padding ?? const EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: isSelected
                  ? _colorPalette.surfaceContainerLowest
                  : _colorPalette.surface,
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
              padding: const EdgeInsets.only(
                top: 28,
                left: 24,
                right: 24,
                bottom: 32,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MAScaler(
                        child: SizedBox(
                          height: 28,
                          width: 28,
                          child: Radio<T>(
                            splashRadius: 30,
                            fillColor: WidgetStatePropertyAll(
                              isSelected
                                  ? colorPalette.inputFieldRadioSelected
                                  : colorPalette.inputFieldRadioUnselected,
                            ),
                            value: widget.value,
                            groupValue: widget.groupValue,
                            onChanged: null,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        widget.title,
                        style: textTheme.titleSmall!.copyWith(
                          fontWeight:
                              isSelected ? FontWeight.w700 : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 36.0,
                    ),
                    child: widget.content,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
