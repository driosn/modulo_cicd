import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

import 'ma_dialog.dart';

class MADialogListItem<T> {
  const MADialogListItem({
    required this.leading,
    required this.label,
    required this.value,
  });

  final Widget leading;
  final String label;
  final T value;
}

class MAWithHeroIconAndListDialogBody<T> extends StatelessWidget
    implements MADialogBody {
  const MAWithHeroIconAndListDialogBody(
      {super.key,
      this.icon,
      required this.title,
      required this.text,
      required this.items,
      this.isLineBetweenItems = true});

  final Widget? icon;
  final String title;
  final String text;
  final List<MADialogListItem<T>> items;
  final bool? isLineBetweenItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        icon == null
            ? const SizedBox.shrink()
            : Center(
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: icon,
                ),
              ),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const RelationalSpace(),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 16,
        ),
        const RelationalSpace(),
        ...mapListItems(context),
      ],
    );
  }

  List<Widget> mapListItems(BuildContext context) {
    List<Widget> widgetsToRender = [];
    final colorPalette = locator<ColorPalette>();
    for (int i = 0; i < items.length; i++) {
      final item = items[i];
      widgetsToRender.add(
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: Row(
            children: [
              item.leading,
              const SizedBox(
                width: 16,
              ),
              Text(
                item.label,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ),
      );
      if (isLineBetweenItems == true && i != items.length - 1) {
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
