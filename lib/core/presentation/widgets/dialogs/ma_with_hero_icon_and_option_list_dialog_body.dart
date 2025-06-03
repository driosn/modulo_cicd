import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/tiles/ma_radio_list_tile.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

import 'ma_dialog.dart';

class MADialogOptionListItem<T> {
  const MADialogOptionListItem({
    required this.value,
    required this.label,
  });

  final T value;
  final String label;
}

class MAWithHeroIconAndOptionListDialogBody<T> extends StatefulWidget
    implements MADialogBody {
  const MAWithHeroIconAndOptionListDialogBody({
    super.key,
    this.icon,
    required this.title,
    required this.items,
    this.isLineBetweenItems = true,
    required this.onChanged,
  });

  final Widget? icon;
  final String title;
  final List<MADialogOptionListItem<T>> items;
  final bool? isLineBetweenItems;
  final ValueChanged<T> onChanged;

  @override
  State<StatefulWidget> createState() =>
      MAWithHeroIconAndOptionListDialogBodyState<T>();
}

class MAWithHeroIconAndOptionListDialogBodyState<T>
    extends State<MAWithHeroIconAndOptionListDialogBody<T>> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.icon == null
            ? const SizedBox.shrink()
            : Center(
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: widget.icon,
                ),
              ),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: Text(
            widget.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const RelationalSpace(),
        ...mapListItems(context),
      ],
    );
  }

  List<Widget> mapListItems(BuildContext context) {
    final colorPalette = locator<ColorPalette>();

    final selectedOptionNotifier = ValueNotifier<T>(
      widget.items.first.value,
    );

    List<Widget> widgetsToRender = [];
    for (int i = 0; i < widget.items.length; i++) {
      final item = widget.items[i];
      widgetsToRender.add(
        ValueListenableBuilder<T>(
          valueListenable: selectedOptionNotifier,
          builder: (context, selectedOption, _) {
            return MARadioListTile<T>(
              value: item.value,
              groupValue: selectedOption,
              title: Text(
                item.label,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              onChanged: (value) {
                selectedOptionNotifier.value = value as T;
                widget.onChanged(value);
              },
            );
          },
        ),
      );
      if (widget.isLineBetweenItems == true && i != widget.items.length - 1) {
        widgetsToRender.add(Container(
          height: 1,
          width: double.infinity,
          color: colorPalette.surfaceDim,
        ));
      }
    }

    if (widgetsToRender.isNotEmpty) {
      widgetsToRender.add(
        Container(
          height: 16,
        ),
      );
    }

    return widgetsToRender;
  }
}
