import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

void showFacebookDialog(BuildContext context) {
  TextTheme textTheme = Theme.of(context).textTheme;
  final colorPalette = locator<ColorPalette>();
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        // shape:
        //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        elevation: 16,
        child: Container(
          height: 430,
          decoration: BoxDecoration(
              color: colorPalette.surfaceContainerLowest,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: ListView(
            // shrinkWrap: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      child: IconButton(
                        icon: Image.asset('assets/facebook.png'),
                        iconSize: 50,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Center(
                        child: Text(
                          "Sign in to Facebook",
                          style: textTheme.titleLarge,
                        ),
                      ),
                    ),
                    const MATextFormField.email(
                      label: "Mobile number or email",
                    ),
                    const SizedBox(height: 20),
                    const MATextFormField.password(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(children: [
                        const Expanded(flex: 3, child: SizedBox()),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "CANCEL",
                            style: textTheme.labelMedium?.copyWith(
                              color: colorPalette.primary500,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: MAElevatedButton.primary(
                            text: "NEXT",
                            onPressed: () {},
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void showGoogleDialog(BuildContext context) {
  TextTheme textTheme = Theme.of(context).textTheme;
  ColorScheme colorScheme = Theme.of(context).colorScheme;
  final colorPalette = locator<ColorPalette>();
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        // shape:
        //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        elevation: 16,
        child: Container(
          height: 380,
          decoration: BoxDecoration(
              color: colorPalette.surfaceContainerLowest,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: ListView(
            // shrinkWrap: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(children: [
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: IconButton(
                      icon: Image.asset('assets/google.png'),
                      iconSize: 50,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Center(
                      child: Text(
                        "Choose an account",
                        style: textTheme.titleLarge,
                      ),
                    ),
                  ),
                  AccountTile(
                    colorScheme: colorScheme,
                    textTheme: textTheme,
                    email: "janedoe@gmail.com",
                    letter: "J",
                    letterColor: colorPalette.tertiary200,
                  ),
                  Divider(
                    color: colorPalette.surfaceDim,
                  ),
                  AccountTile(
                    colorScheme: colorScheme,
                    textTheme: textTheme,
                    email: "mhresident123456@gmail.com",
                    letter: "M",
                    letterColor: colorPalette.tertiary200,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(children: [
                      const Expanded(flex: 3, child: SizedBox()),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "CANCEL",
                          style: textTheme.labelMedium
                              ?.copyWith(color: colorPalette.primary500),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: MAElevatedButton.primary(
                          text: "NEXT",
                          onPressed: () {},
                        ),
                      ),
                    ]),
                  )
                ]),
              )
            ],
          ),
        ),
      );
    },
  );
}

class AccountTile extends StatelessWidget {
  const AccountTile({
    super.key,
    required this.colorScheme,
    required this.textTheme,
    required this.email,
    required this.letter,
    required this.letterColor,
  });

  final ColorScheme colorScheme;
  final TextTheme textTheme;
  final String email;
  final String letter;
  final Color letterColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
              backgroundColor: letterColor,
              child: Text(letter),
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(email,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodyMedium)),
          ),
        ],
      ),
    );
  }
}
