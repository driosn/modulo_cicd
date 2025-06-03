import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class DemoColorPaletteView extends StatelessWidget {
  const DemoColorPaletteView({super.key});
  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: AppBar(title: const Text('Color palette')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 10),

              //Primary
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Center(
                    child: Text(
                  "Primary",
                  style: Theme.of(context).textTheme.titleLarge,
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                //TODO: Update color palette view in Demo
                child: Row(children: [
                  ColorCard(
                      title: "Primary",
                      color: Theme.of(context).colorScheme.primary),
                  ColorCard(
                      title: "On Primary",
                      color: Theme.of(context).colorScheme.onPrimary),
                  ColorCard(
                      title: "Primary Container",
                      color: Theme.of(context).colorScheme.primaryContainer),
                  ColorCard(
                      title: "On Primary Container",
                      color: Theme.of(context).colorScheme.onPrimaryContainer),
                ]),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  ColorCard(
                    title: "Primary-\n800",
                    color: colorPalette.primary800,
                  ),
                  ColorCard(
                    title: "Primary-\n700",
                    color: colorPalette.primary700,
                  ),
                  ColorCard(
                    title: "Primary-\n600",
                    color: colorPalette.primary600,
                  ),
                  ColorCard(
                    title: "Primary-\n500",
                    color: colorPalette.primary500,
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  ColorCard(
                    title: "Primary-\n400",
                    color: colorPalette.primary400,
                  ),
                  ColorCard(
                    title: "Primary-\n300",
                    color: colorPalette.primary300,
                  ),
                  ColorCard(
                    title: "Primary-\n200",
                    color: colorPalette.primary200,
                  ),
                  ColorCard(
                    title: "Primary-\n100",
                    color: colorPalette.primary100,
                  ),
                ]),
              ),
              const Divider(
                thickness: 2,
              ),

              //Secundary
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Center(
                    child: Text(
                  "Secondary",
                  style: Theme.of(context).textTheme.titleLarge,
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Row(children: [
                  ColorCard(
                    title: "Secondary",
                    color: colorPalette.secondaryBase,
                  ),
                  ColorCard(
                    title: "On Secondary",
                    color: colorPalette.secondaryBase,
                  ),
                  ColorCard(
                      title: "Secondary Container",
                      color: Theme.of(context).colorScheme.secondaryContainer),
                  ColorCard(
                      title: "On Secondary Container",
                      color:
                          Theme.of(context).colorScheme.onSecondaryContainer),
                ]),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  ColorCard(
                    title: "Secondary-\n800",
                    color: colorPalette.secondary800,
                  ),
                  ColorCard(
                    title: "Secondary-\n700",
                    color: colorPalette.secondary700,
                  ),
                  ColorCard(
                    title: "Secondary-\n600",
                    color: colorPalette.secondary600,
                  ),
                  ColorCard(
                    title: "Secondary-\n500",
                    color: colorPalette.secondary500,
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  ColorCard(
                    title: "Secondary-\n400",
                    color: colorPalette.secondary400,
                  ),
                  ColorCard(
                    title: "Secondary-\n300",
                    color: colorPalette.secondary300,
                  ),
                  ColorCard(
                    title: "Secundary-\n200",
                    color: colorPalette.secondary200,
                  ),
                  ColorCard(
                    title: "Secondary-\n100",
                    color: colorPalette.secondary100,
                  ),
                ]),
              ),
              const Divider(
                thickness: 2,
              ),

              //Tertiary
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Center(
                    child: Text(
                  "Tertiary",
                  style: Theme.of(context).textTheme.titleLarge,
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Row(children: [
                  ColorCard(
                    title: "Tertiary",
                    color: colorPalette.tertiaryBase,
                  ),
                  ColorCard(
                    title: "On Tertiary",
                    color: colorPalette.tertiaryBase,
                  ),
                  ColorCard(
                    title: "Tertiary Container",
                    color: colorPalette.tertiaryBase,
                  ),
                  ColorCard(
                    title: "On Tertiary Container",
                    color: colorPalette.tertiaryBase,
                  ),
                ]),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  ColorCard(
                    title: "Tertiary-\n800",
                    color: colorPalette.tertiary800,
                  ),
                  ColorCard(
                    title: "Tertiary-\n700",
                    color: colorPalette.tertiary700,
                  ),
                  ColorCard(
                    title: "Tertiary-\n600",
                    color: colorPalette.tertiary600,
                  ),
                  ColorCard(
                    title: "Tertiary-\n500",
                    color: colorPalette.tertiary500,
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  ColorCard(
                    title: "Tertiary-\n400",
                    color: colorPalette.tertiary400,
                  ),
                  ColorCard(
                    title: "Tertiary-\n300",
                    color: colorPalette.tertiary300,
                  ),
                  ColorCard(
                    title: "Tertiary-\n200",
                    color: colorPalette.tertiary200,
                  ),
                  ColorCard(
                    title: "Tertiary-\n100",
                    color: colorPalette.tertiary100,
                  ),
                ]),
              ),
              const Divider(
                thickness: 2,
              ),

              //Error
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Center(
                    child: Text(
                  "Error",
                  style: Theme.of(context).textTheme.titleLarge,
                )),
              ),
              //TODO: Update color palette view in Demo
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 35),
              //   child: Row(children: [
              //     ColorCard(
              //         title: "Error",
              //         color: Theme.of(context).colorScheme.error),
              //     ColorCard(
              //         title: "On Error",
              //         color: Theme.of(context).colorScheme.onError),
              //     ColorCard(
              //         title: "Error Container",
              //         color: Theme.of(context).colorScheme.errorContainer),
              //     ColorCard(
              //         title: "On Error Container",
              //         color: Theme.of(context).colorScheme.onErrorContainer),
              //   ]),
              // ),
              // const Divider(
              //   thickness: 2,
              // ),

              // //Neutral
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              //   child: Center(
              //       child: Text(
              //     "Neutral",
              //     style: Theme.of(context).textTheme.titleLarge,
              //   )),
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 80),
              //   child: Row(children: [
              //     ColorCard(
              //         title: "Surface Dim",
              //         color: Theme.of(context).colorScheme.surfaceDim),
              //     ColorCard(
              //         title: "Surface",
              //         color: Theme.of(context).colorScheme.surface),
              //     ColorCard(
              //         title: "Surface Bright",
              //         color: Theme.of(context).colorScheme.surfaceBright),
              //   ]),
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 0),
              //   child: Row(children: [
              //     ColorCard(
              //         title: "Surface Container Lowest",
              //         color:
              //             Theme.of(context).colorScheme.surfaceContainerLowest),
              //     ColorCard(
              //         title: "Surface Container Low",
              //         color: Theme.of(context).colorScheme.surfaceContainerLow),
              //     ColorCard(
              //         title: "Surface Container",
              //         color: Theme.of(context).colorScheme.surfaceContainer),
              //     ColorCard(
              //         title: "Surface Container High",
              //         color:
              //             Theme.of(context).colorScheme.surfaceContainerHigh),
              //     ColorCard(
              //         title: "Surface Container Highest",
              //         color: Theme.of(context)
              //             .colorScheme
              //             .surfaceContainerHighest),
              //   ]),
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 40),
              //   child: Row(children: [
              //     ColorCard(
              //         title: "On Surface",
              //         color: Theme.of(context).colorScheme.onSurface),
              //     ColorCard(
              //         title: "On Surface Variant",
              //         color: Theme.of(context).colorScheme.onSurfaceVariant),
              //     ColorCard(
              //         title: "Outline",
              //         color: Theme.of(context).colorScheme.outline),
              //     ColorCard(
              //         title: "Outline Variant",
              //         color: Theme.of(context).colorScheme.outlineVariant),
              //   ]),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorCard extends StatelessWidget {
  final String title;
  final Color color;

  const ColorCard({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return Expanded(
        child: Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              return Container(
                height: width,
                decoration: BoxDecoration(
                    color: color,
                    border: Border.all(
                      color: colorPalette.surfaceDim,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Text(
              // "$color",
              "#${color.toString().substring(10, 16).toUpperCase()}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
