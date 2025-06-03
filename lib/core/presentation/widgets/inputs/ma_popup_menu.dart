import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MAPopupMenu<T> extends StatelessWidget {
  ///This is the Custom PopupMenu for ManageAmerica. The child is a [Widget]
  ///from which the PopupMenu originates. The menuItems is a [List] of [MAMenuItem]
  ///containing all the items to be shown in the PopupMenu. If a [MAMenuItem]
  ///has its [menuItem] as a String, this string will become the label with a
  ///[Text] using MAStyles for this component; however, the [menuItem]
  ///could also be a Widget. Each [MAMenuItem] also has an [onTap] action
  ///to be executed when tapping the [menuItem]
  const MAPopupMenu({
    super.key,
    required this.menuItems,
    required this.child,
  });

  final Widget child;
  final List<MAMenuItem> menuItems;

  @override
  Widget build(BuildContext context) {
    ///
    TextTheme textTheme = Theme.of(context).textTheme;
    double appBarHeight = AppBar().preferredSize.height;
    final colorPalette = locator<ColorPalette>();

    return PopupMenuButton(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
      ),
      color: colorPalette.surfaceContainerLowest,
      surfaceTintColor: colorPalette.surfaceContainerLowest,
      icon: child,
      offset: Offset(0.0, appBarHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      itemBuilder: (context) {
        return menuItems
            .map(
              (st) => PopupMenuItem(
                onTap: st.onTap,
                child: st.menuItem is String
                    ? Text(
                        st.menuItem as String,
                        style: textTheme.bodyMedium!.copyWith(
                          fontWeight: st.isBoldItem
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      )
                    : st.menuItem,
              ),
            )
            .toList();
      },
    );
  }
}

class MAMenuItem<T> extends StatelessWidget {
  const MAMenuItem(
      {super.key,
      required this.menuItem,
      required this.onTap,
      this.isBoldItem = false});

  final T menuItem;
  final VoidCallback onTap;
  final bool isBoldItem;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
