import 'package:flutter/material.dart';

class MADrawerTile extends ListTile {
  final Icon icon;
  final Text name;
  final VoidCallback navigation;
  MADrawerTile({
    required this.navigation,
    super.key,
    required this.icon,
    required this.name,
  }) : super(
          onTap: navigation,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                icon,
                const SizedBox(
                  width: 10,
                ),
                name,
              ],
            ),
          ),
          contentPadding: const EdgeInsets.all(0),
        );
}
