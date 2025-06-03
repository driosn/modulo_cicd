import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/data/models/models.dart';
import 'package:resident_app/core/presentation/themes/application/bloc/ma_colorpalette_bloc.dart';
import 'package:resident_app/core/presentation/themes/application/bloc/ma_theme_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/color_palette_dark.dart';
import 'package:resident_app/core/presentation/themes/color_palette_light.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/fields/ma_text_field.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_selector_input_field.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/auth/routes.dart';
import 'package:resident_app/features/language_selection/application/bloc/language_preference_bloc.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';

class LanguageSelectionView extends StatefulWidget {
  const LanguageSelectionView({super.key});

  @override
  State<LanguageSelectionView> createState() => _LanguageSelectionViewState();
}

class _LanguageSelectionViewState extends State<LanguageSelectionView> {
  ///
  Language? selectedLanguage;

  ColorPalette colorPalette = locator<ColorPalette>();

  late LanguagePreferenceBloc _languagePreferenceBloc;

  late String localeName;

  @override
  void initState() {
    localeName = PlatformDispatcher.instance.locale.toString().split("_").first == "es" ? "es_US" : "en_US";
    context.read<UserPreferencesBloc>().add(
          UserPreferencesEvent.setLanguage(
            selectedLanguage: Language.fromLocaleName(localeName),
            setStorageLanguage: false,
            onLanguageSet: () {},
          ),
        );

    _languagePreferenceBloc = locator<LanguagePreferenceBloc>();

    _languagePreferenceBloc.add(
      LanguagePreferenceEvent.setSelectedLanguage(
        Language.fromLocaleName(localeName),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //TODO: Refactor logic of color selectiont to be theme context
    TextTheme textTheme = Theme.of(context).textTheme;

    if (true) {
      locator<MAColorpaletteBloc>().add(
        MAColorpaletteEvent.updateColorpalette(ColorPaletteLight()),
      );
    } else {
      locator<MAColorpaletteBloc>().add(
        MAColorpaletteEvent.updateColorpalette(ColorPaletteDark()),
      );
    }
    context.read<MAThemeBloc>().add(
          MAThemeEvent.updateTheme(
            getTheme(
              textBase: locator<MAColorpaletteBloc>().state.palette.textBase,
            ),
          ),
        );
    return BlocBuilder<UserPreferencesBloc, UserPreferencesState>(
      bloc: locator<UserPreferencesBloc>(),
      builder: (context, state) {
        return Scaffold(
          body: VerticalRhythm(
            topChildren: [
              Container(
                color: colorPalette.surfaceContainerLowest,
                child: RelationalPadding(
                  child: Column(
                    children: [
                      const SizedBox(height: 60),
                      const RelationalSpace(),
                      BlocBuilder<WhitelabelBloc, WhitelabelState>(
                        bloc: locator<WhitelabelBloc>(),
                        builder: (context, state) {
                          return MATextField(
                            text: state.whitelabel.appName,
                            textStyle: textTheme.displaySmall?.copyWith(
                              color: colorPalette.textBrand,
                            ),
                          );
                        },
                      ),
                      const RelationalSpace(),
                    ],
                  ),
                ),
              ),
            ],
            centerImage: Image.asset(
              "assets/house_with_trees_image.png",
              fit: BoxFit.scaleDown,
            ),
            centerImageHeight: 668 / 1374 * MediaQuery.of(context).size.width,
            bottomChildren: [
              Container(
                color: colorPalette.grassColor,
                child: RelationalPadding(
                  child: Column(
                    children: [
                      MATextField(
                        text: AppLocalizations.of(context)!.whatLanguageField,
                        textStyle: textTheme.titleSmall,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        AppLocalizations.of(context)!.yourSelectionWillApply,
                        style: textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 16),
                      MASelectorInputField<Language>(
                        labelText: AppLocalizations.of(context)!.languageField,
                        hintText: "",
                        initialValue: Language.fromLocaleName(localeName),
                        menuItems: [
                          MASelectorInputItem(
                            value: Language.english,
                            label: Language.english.languageName,
                          ),
                          MASelectorInputItem(
                            value: Language.spanish,
                            label: Language.spanish.languageName,
                          ),
                        ],
                        onSelectedItem: (Language language) {
                          selectedLanguage = language;
                          context.read<UserPreferencesBloc>().add(
                                UserPreferencesEvent.setLanguage(
                                  selectedLanguage: language,
                                  setStorageLanguage: false,
                                  onLanguageSet: () {
                                    locator.resetLocalizations(
                                      language.language,
                                    );
                                  },
                                ),
                              );
                          _languagePreferenceBloc.add(
                            LanguagePreferenceEvent.setSelectedLanguage(
                              language,
                            ),
                          );
                        },
                      ),
                      const RelationalSpace(),
                      const SizedBox(height: 25),
                      MAElevatedButton.primary(
                        text: AppLocalizations.of(context)!.nextButton,
                        width: double.infinity,
                        onPressed: () async {
                          final newSelectedLanguage = selectedLanguage ?? context.read<UserPreferencesBloc>().state.selectedLanguage;

                          context.read<UserPreferencesBloc>().add(
                                UserPreferencesEvent.setLanguage(
                                  selectedLanguage: newSelectedLanguage,
                                  setStorageLanguage: true,
                                  onLanguageSet: () {
                                    locator.resetLocalizations(
                                      newSelectedLanguage.language,
                                    );
                                    context.goNamed(AuthRoutes.signIn.name!);
                                  },
                                ),
                              );
                          _languagePreferenceBloc.add(
                            LanguagePreferenceEvent.setIsSelectedLanguage(),
                          );
                        },
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ],
            middleColor: colorPalette.grassColor,
            middleHeight: 40,
          ),
        );
      },
    );
  }
}
