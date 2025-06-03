import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/helpers/ma_validation_helper.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/create_password/presentation/enums/criteria_state.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/create_password/presentation/widgets/password_criteria.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/create_password/presentation/widgets/temp_social_popups.dart';

class CreatePasswordView extends StatefulWidget {
  late final CriteriaState charactersState;
  late final CriteriaState atLeastNumberState;
  late final CriteriaState atLeastSymbolState;
  late final CriteriaState matchState;
  late final CriteriaState isRequiredState;

  CreatePasswordView({super.key});

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  @override
  State<CreatePasswordView> createState() => _CreatePasswordViewState();
}

class _CreatePasswordViewState extends State<CreatePasswordView> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.charactersState = CriteriaState.clean;
    widget.atLeastNumberState = CriteriaState.clean;
    widget.atLeastSymbolState = CriteriaState.clean;
    widget.matchState = CriteriaState.clean;
    widget.isRequiredState = CriteriaState.clean;
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    bool isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    final colorPalette = locator<ColorPalette>();
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      body: RelationalPadding(
        child: ListView(children: [
          Column(
            children: [
              SizedBox(
                height: isKeyboard ? 20 : 90,
              ),
              if (!isKeyboard)
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "${AppLocalizations.of(context)!.welcomeField}, Jane",
                    textAlign: TextAlign.center,
                    style: textTheme.titleLarge!.copyWith(
                      color: colorPalette.textBrand,
                    ),
                  ),
                ),
              if (!isKeyboard)
                const SizedBox(
                  height: 30,
                ),
              if (!isKeyboard)
                Text(
                  AppLocalizations.of(context)!.createAPasswordField,
                  textAlign: TextAlign.center,
                  style: textTheme.titleSmall,
                ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      PasswordCriteria(
                        criteria: AppLocalizations.of(context)!.charactersField,
                        state: widget.charactersState,
                      ),
                      PasswordCriteria(
                        criteria:
                            AppLocalizations.of(context)!.atLeast1NumberField,
                        state: widget.atLeastNumberState,
                      ),
                      PasswordCriteria(
                        criteria:
                            AppLocalizations.of(context)!.atLeast1SymbolField,
                        state: widget.atLeastSymbolState,
                      ),
                      PasswordCriteria(
                        criteria:
                            AppLocalizations.of(context)!.passwordMatchField,
                        state: widget.matchState,
                      ),
                      if (widget.isRequiredState == CriteriaState.error)
                        PasswordCriteria(
                          criteria: AppLocalizations.of(context)!
                              .passwordRequiredField,
                          state: widget.isRequiredState,
                        )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MATextFormField.password(
                label: AppLocalizations.of(context)!.passwordField,
                hintText: AppLocalizations.of(context)!.hintPasswordLabel,
                controller: passwordController,
                hideErrorLabel: true,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'\s')),
                ],
                hasError: [
                  widget.isRequiredState,
                  widget.atLeastNumberState,
                  widget.charactersState,
                  widget.atLeastSymbolState,
                  widget.matchState
                ].contains(CriteriaState.error)
                    ? true
                    : false,
              ),
              MATextFormField.password(
                label: AppLocalizations.of(context)!.confirmPasswordField,
                controller: rePasswordController,
                hintText: "",
                hideErrorLabel: true,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'\s')),
                ],
                hasError: widget.isRequiredState == CriteriaState.error ||
                    widget.matchState == CriteriaState.error,
              ),
              const SizedBox(
                height: 20,
              ),
              MAElevatedButton.primary(
                text: AppLocalizations.of(context)!.nextField.toUpperCase(),
                onPressed: () {
                  actionWhenTapNext();
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "- ${AppLocalizations.of(context)!.orField.toUpperCase()} -",
                textAlign: TextAlign.center,
                style: textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              MAElevatedButton.social(
                child: Wrap(
                  children: [
                    const Image(
                      width: 24,
                      height: 24,
                      image: AssetImage("assets/google.png"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      style: textTheme.bodyMedium,
                      AppLocalizations.of(context)!.socialLoginButton("Google"),
                    ),
                  ],
                ),
                onPressed: () {
                  showGoogleDialog(context);
                },
              ),
              const SizedBox(
                height: 15,
              ),
              MAElevatedButton.social(
                child: Wrap(
                  children: [
                    const Image(
                      width: 24,
                      height: 24,
                      image: AssetImage("assets/facebook.png"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      style: textTheme.bodyMedium,
                      AppLocalizations.of(context)!
                          .socialLoginButton("Facebook"),
                    ),
                  ],
                ),
                onPressed: () {
                  showFacebookDialog(context);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Text(
                  AppLocalizations.of(context)!.needHelpButton,
                  textAlign: TextAlign.center,
                  style: textTheme.hyperlink.copyWith(
                    shadows: [
                      Shadow(
                        color: colorPalette.textLink,
                        offset: const Offset(0, -4),
                      )
                    ],
                    decorationColor: colorPalette.textLink,
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ]),
      ),
    );
  }

  void actionWhenTapNext() {
    widget.isRequiredState = CriteriaState.clean;
    widget.charactersState = CriteriaState.clean;
    widget.atLeastNumberState = CriteriaState.clean;
    widget.atLeastSymbolState = CriteriaState.clean;
    widget.matchState = CriteriaState.clean;
    setState(() {
      if (passwordController.text == "" && rePasswordController.text == "") {
        widget.isRequiredState = CriteriaState.error;
      } else if (passwordController.text != rePasswordController.text) {
        widget.matchState = CriteriaState.error;
      } else {
        MAValidationHelper validator = MAValidationHelper();
        List<PasswordError> passwordErrors =
            validator.validateAllPassword(passwordController.text);
        if (passwordErrors.isNotEmpty) {
          widget.matchState = CriteriaState.ok;
          widget.charactersState = CriteriaState.ok;
          widget.atLeastNumberState = CriteriaState.ok;
          widget.atLeastSymbolState = CriteriaState.ok;
          for (var passwordError in passwordErrors) {
            switch (passwordError) {
              case PasswordError.charactersLong:
                widget.charactersState = CriteriaState.error;
                break;
              case PasswordError.atLeastNumber:
                widget.atLeastNumberState = CriteriaState.error;
                break;
              case PasswordError.atLeastSymbol:
                widget.atLeastSymbolState = CriteriaState.error;
                break;
              case PasswordError.isRequired:
            }
          }
        } else {
          context.goNamed(CoreRoutes.home.name!);
        }
      }
    });
  }
}
