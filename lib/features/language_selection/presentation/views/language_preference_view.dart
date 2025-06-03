import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_selector_input_field.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/language_selection/application/bloc/language_preference_bloc.dart';
import 'package:resident_app/features/language_selection/routes.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class LanguagePreferenceView extends StatelessWidget {
  LanguagePreferenceView({super.key});

  final UserBloc _userBloc = locator<UserBloc>();
  final colorPalette = locator<ColorPalette>();

  final LanguagePreferenceBloc _languagePreferenceBloc =
      locator<LanguagePreferenceBloc>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<LanguagePreferenceBloc, LanguagePreferenceState>(
      bloc: _languagePreferenceBloc,
      listener: (context, state) {
        state.updateStatus.whenOrNull(
          success: () {
            locator.resetLocalizations(state.selectedLanguage.language);
            _userBloc.add(
              UserEvent.setNotificationLanguagePreferenceType(
                state.selectedLanguage,
              ),
            );
            context.read<UserPreferencesBloc>().add(
                  UserPreferencesEvent.setLanguage(
                    selectedLanguage: state.selectedLanguage,
                    setStorageLanguage: true,
                    onLanguageSet: () {},
                  ),
                );
            ScaffoldMessenger.of(context).showSnackBar(
              MASnackBar.success(
                message: locator<MaLocalizations>()
                    .I
                    .changesPreferredLanguageSavedSuccessfully,
              ),
            );
          },
          failure: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              MASnackBar.failure(
                message: error.message,
              ),
            );
          },
        );
      },
      builder: (BuildContext context, LanguagePreferenceState state) {
        AppLocalizations localizations = locator<MaLocalizations>().I;
        return Scaffold(
          backgroundColor: colorPalette.surfaceContainerLowest,
          drawer: MADrawer(
            items: MADrawer.defaultItems,
          ),
          appBar: MAAppBar(
            iconTheme: IconThemeData(
              color: colorPalette.appBarTextIcon,
            ),
            maAppBarType: MAAppBarType.blue,
            title: Text(localizations.drawerMyAccountLanguagePreference),
          ),
          body: state.updateStatus.maybeWhen(
            updating: () {
              return const Center(
                child: MACircularProgressIndicator(),
              );
            },
            orElse: () {
              return RelationalPadding(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MASpacing.xxl(),
                      MASelectorInputField<Language>(
                        labelText: localizations.preferredLanguage,
                        hintText: localizations.selectYourPreferredLanguage,
                        initialValue:
                            _userBloc.state.languageSelectorInitialValue,
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
                          actionWhenTapOnLanguageSelector(
                            language: language,
                            context: context,
                            localizations: localizations,
                          );
                        },
                      ),
                      MASpacing.l(),
                      Text(
                        localizations.languagePreferenceDescription,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void actionWhenTapOnLanguageSelector({
    required Language language,
    required BuildContext context,
    required AppLocalizations localizations,
  }) {
    Language defaultLanguage = _userBloc.state.languageSelectorInitialValue;
    if (language != defaultLanguage) {
      _languagePreferenceBloc.add(
        LanguagePreferenceEvent.setSelectedLanguage(
          language,
        ),
      );
      context.showMADialog(
        maDialogBody: MABasicDialogBody(
          title: localizations.changeLanguageQuestion,
          text: localizations.theLanguageChangeWillTakeEffect,
        ),
        actions: [
          MADialogAction(
            label: localizations.changeLanguage,
            onPressed: () {
              _languagePreferenceBloc.add(
                LanguagePreferenceEvent.update(
                  residentUserId: _userBloc.state.user.residentUserId,
                ),
              );
              context.pop();
            },
            style: MADialogActionStyle.elevated,
          ),
          MADialogAction(
            label: localizations.cancel.toUpperCase(),
            onPressed: () {
              _languagePreferenceBloc.add(
                LanguagePreferenceEvent.setSelectedLanguage(
                  defaultLanguage,
                ),
              );
              context.pop();
              context.pushReplacementNamed(
                  LanguagePreferenceRoutes.languagePreference.name!);
            },
            style: MADialogActionStyle.text,
          ),
        ],
      );
    }
  }
}
