import 'package:flutter/material.dart' hide PopupMenuButton, PopupMenuItem;
import 'package:resident_app/core/data/models/models.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_popup_menu_button.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MASelectorInputItem<T> {
  const MASelectorInputItem({
    required this.value,
    required this.label,
  });

  final T value;
  final String label;
}

class MASelectorInputField<T> extends StatefulWidget {
  final String labelText;
  final String hintText;
  final List<MASelectorInputItem<T>> menuItems;
  final ValueChanged<T> onSelectedItem;
  final bool hasError;
  final String? errorText;
  final T? initialValue;

  const MASelectorInputField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.menuItems,
    required this.onSelectedItem,
    this.errorText,
    this.initialValue,
    this.hasError = false,
  });

  @override
  State<MASelectorInputField<T>> createState() =>
      _MASelectorInputFieldState<T>();
}

class _MASelectorInputFieldState<T> extends State<MASelectorInputField<T>> {
  late ValueNotifier<MASelectorInputItem?> selectedItemNotifier;

  @override
  void initState() {
    super.initState();

    selectedItemNotifier = ValueNotifier<MASelectorInputItem?>(null);

    final existsInitialItem = widget.menuItems
        .where((mItem) => mItem.value == widget.initialValue)
        .isNotEmpty;

    if (existsInitialItem) {
      selectedItemNotifier.value = widget.menuItems
          .firstWhere((mItem) => mItem.value == widget.initialValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.labelText,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: widget.hasError
                            ? colorPalette.warningWarning
                            : colorPalette.textBase,
                      ),
                ),
              ),
            ),
            MAPopupMenuButton(
              position: PopupMenuPosition.under,
              color: colorPalette.surfaceContainerLowest,
              elevation: 8,
              constraints: BoxConstraints(minWidth: width, maxWidth: width),
              padding: const EdgeInsets.all(0),
              child: Container(
                width: width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: colorPalette.surfaceContainerLowest,
                  border: Border.all(
                    color: widget.hasError
                        ? colorPalette.warningWarning
                        : colorPalette.surfaceContainerHigh,
                    width: 2.0,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(2)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: ValueListenableBuilder<MASelectorInputItem?>(
                        valueListenable: selectedItemNotifier,
                        builder: (context, selectedItem, child) {
                          return Text(
                            selectedItem == null
                                ? widget.hintText
                                : selectedItem.label,
                            style: Theme.of(context).textTheme.bodyMedium,
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: colorPalette.outline,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              itemBuilder: (context) {
                return widget.menuItems
                    .map(
                      (item) => PopupMenuItem<MASelectorInputItem>(
                        padding: const EdgeInsets.all(0),
                        value: item,
                        child: ValueListenableBuilder<MASelectorInputItem?>(
                          valueListenable: selectedItemNotifier,
                          builder: (context, selectedItem, child) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              decoration: BoxDecoration(
                                borderRadius:
                                    widget.menuItems.indexOf(item) == 0
                                        ? const BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5))
                                        : widget.menuItems.indexOf(item) ==
                                                widget.menuItems.length - 1
                                            ? const BorderRadius.only(
                                                bottomLeft: Radius.circular(5),
                                                bottomRight: Radius.circular(5))
                                            : const BorderRadius.all(
                                                Radius.circular(0),
                                              ),
                                color: selectedItem?.value == item.value
                                    //Apply theming color
                                    ? colorPalette.secondary200
                                    : colorPalette.surfaceContainerLowest,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      item.label,
                                      style: selectedItem?.value == item.value
                                          ? Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                          : Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    )
                    .toList();
              },
              onSelected: (selectedItem) {
                selectedItemNotifier.value = selectedItem;
                widget.onSelectedItem(selectedItem.value);
              },
            ),
            if (widget.hasError && widget.errorText != null) ...[
              MASpacing.s(),
              Text(
                widget.errorText!,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colorPalette.warningWarning,
                    ),
              ),
              MASpacing.s(),
            ]
          ],
        );
      },
    );
  }
}

//TODO REFACTOR COMPOENENT / Use SelectorInputField<T> instead this one.
class MASelectorInputFieldLanguage extends StatefulWidget {
  final String labelText;
  final Language hintLanguage;
  final List<Language> menuItems;
  final ValueChanged<Language> onSelectedItem;

  const MASelectorInputFieldLanguage({
    super.key,
    required this.labelText,
    required this.hintLanguage,
    required this.menuItems,
    required this.onSelectedItem,
  });

  @override
  State<MASelectorInputFieldLanguage> createState() =>
      _MASelectorInputFieldLanguageState();
}

class _MASelectorInputFieldLanguageState
    extends State<MASelectorInputFieldLanguage> {
  Language? selectedItem;

  @override
  void initState() {
    super.initState();
    if (widget.menuItems.contains(widget.hintLanguage)) {
      selectedItem = widget.hintLanguage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final colorPalette = locator<ColorPalette>();
        return Column(
          children: [
            MAPopupMenuButton(
              position: PopupMenuPosition.under,
              color: colorPalette.surfaceContainerLowest,
              elevation: 8,
              constraints: BoxConstraints(minWidth: width, maxWidth: width),
              padding: const EdgeInsets.all(0),
              child: Container(
                width: width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: colorPalette.surfaceContainerLowest,
                  border: Border.all(
                    color: colorPalette.surfaceContainerHigh,
                    width: 2.0,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(7)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Text(
                        selectedItem?.languageHint ??
                            widget.hintLanguage.languageHint,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: colorPalette.outline,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              itemBuilder: (context) {
                return widget.menuItems
                    .map(
                      (i) => PopupMenuItem(
                        padding: const EdgeInsets.all(0),
                        value: i,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                            borderRadius: widget.menuItems.indexOf(i) == 0
                                ? const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5))
                                : widget.menuItems.indexOf(i) ==
                                        widget.menuItems.length - 1
                                    ? const BorderRadius.only(
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5))
                                    : const BorderRadius.all(
                                        Radius.circular(0)),
                            color: selectedItem == i
                                //Apply theming color
                                ? colorPalette.secondary200
                                : colorPalette.surfaceContainerLowest,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  i.languageHint,
                                  style: selectedItem == i
                                      ? Theme.of(context).textTheme.titleSmall
                                      : Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList();
              },
              onSelected: (value) {
                widget.onSelectedItem(value);
                setState(() {
                  selectedItem = value;
                });
              },
            ),
          ],
        );
      },
    );
  }
}
