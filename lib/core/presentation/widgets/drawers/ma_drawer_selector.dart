import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MADrawerSelectorInputItem<T> {
  const MADrawerSelectorInputItem({
    required this.value,
    required this.label,
  });

  final T value;
  final String label;
}

class MADrawerSelector<T> extends StatefulWidget {
  const MADrawerSelector({
    super.key,
    required this.onClosedDrawer,
    required this.title,
    required this.items,
    required this.value,
  });

  final String title;
  final Function(T?) onClosedDrawer;
  final List<MADrawerSelectorInputItem<T>> items;
  final T? value;

  @override
  State<MADrawerSelector> createState() => _MADrawerSelectorState<T>();
}

class _MADrawerSelectorState<T> extends State<MADrawerSelector<T>> {
  late ValueNotifier<T?> _selectedValueNotifier;

  @override
  void initState() {
    _selectedValueNotifier = ValueNotifier<T?>(widget.value);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).viewPadding;
    final topPadding = padding.top;
    final colorPalette = locator<ColorPalette>();

    return Container(
      padding: EdgeInsets.only(
        top: topPadding,
      ),
      height: double.infinity,
      width: double.infinity,
      color: colorPalette.surfaceContainerLowest,
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          RelationalPadding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: colorPalette.navigationDrawerIconText,
                      ),
                ),
                InkWell(
                  onTap: () {
                    context.pop();

                    widget.onClosedDrawer(_selectedValueNotifier.value);
                  },
                  child: Icon(
                    Icons.close,
                    color: colorPalette.navigationDrawerIconText,
                  ),
                )
              ],
            ),
          ),
          const RelationalSpace(),
          Expanded(
            child: ValueListenableBuilder<T?>(
              valueListenable: _selectedValueNotifier,
              builder: (context, selectedValue, child) {
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: widget.items.length,
                  itemBuilder: (context, index) {
                    final item = widget.items[index];
                    final isSelected = item.value == selectedValue;
                    final isLast = index == widget.items.length - 1;

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RelationalPadding(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.5,
                            ),
                            child: InkWell(
                              onTap: () {
                                _selectedValueNotifier.value = item.value;
                              },
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      item.label,
                                      style: isSelected ? Theme.of(context).textTheme.titleSmall : Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  ),
                                  isSelected
                                      ? Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: colorPalette.primaryBase,
                                          ),
                                          height: 32,
                                          width: 32,
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                        )
                                      : Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                          ),
                                          height: 32,
                                          width: 32,
                                        )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          margin: EdgeInsets.only(
                            left: 8,
                            right: 8,
                            bottom: isLast ? 48 : 0,
                          ),
                          width: double.infinity,
                          color: const Color(0xffCAC4D0),
                        )
                      ],
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
