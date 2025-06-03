import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class DemoTypographyView extends StatelessWidget {
  const DemoTypographyView({super.key});
  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: AppBar(title: const Text('Typography')),
      body: Center(
        child: SizedBox(
          width: 312,
          child: ListView(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Center(
                  child: Text("Display Small",
                      style: Theme.of(context).textTheme.displaySmall)),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text("Title Large",
                      style: Theme.of(context).textTheme.titleLarge)),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text("Title Medium",
                      style: Theme.of(context).textTheme.titleMedium)),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text("Title Small",
                      style: Theme.of(context).textTheme.titleSmall)),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text("Body Medium",
                      style: Theme.of(context).textTheme.bodyMedium)),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text("Body Small",
                      style: Theme.of(context).textTheme.bodySmall)),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text("LABEL LARGE",
                      style: Theme.of(context).textTheme.labelLarge)),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text("Label Medium",
                      style: Theme.of(context).textTheme.labelMedium)),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text("Label Small",
                      style: Theme.of(context).textTheme.labelSmall)),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text("Hyperlink",
                      style: Theme.of(context).textTheme.hyperlink)),
            ],
          ),
        ),
      ),
    );
  }
}
