import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/contact_information/application/bloc/contact_information_edit/contact_information_edit_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';

import '../../../demo/presentation/legacy_views/create_password/create_password.dart';

class EditPasswordView extends StatelessWidget {
  EditPasswordView({super.key});

  final userBloc = locator<UserBloc>();

  final AppLocalizations _localizations = locator<MaLocalizations>().I;

  final ContactInformationEditBloc contactInformationEditBloc = locator<ContactInformationEditBloc>();

  final TextEditingController currentPasswordController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    final width = MediaQuery.of(context).size.width;
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    return BlocListener<ContactInformationEditBloc, ContactInformationEditState>(
      bloc: contactInformationEditBloc,
      listener: (context, state) {
        if (state.updateStatus == ContactInformationUpdateStatus.updating()) {
          if (state.currentPasswordErrorMessage == null && state.newPasswordErrorMessage == null && state.newPasswordConfirmationErrorMessage == null) {
            contactInformationEditBloc.add(
              ContactInformationEditEvent.updatePassword(
                residentUserId: userBloc.state.user.residentUserId,
              ),
            );
            Navigator.pop(context);
          } else {
            contactInformationEditBloc.add(
              ContactInformationEditEvent.setUpdateStatus(
                ContactInformationUpdateStatus.initial(),
              ),
            );
          }
        }
      },
      child: Scaffold(
        backgroundColor: colorPalette.surfaceContainerLowest,
        appBar: MAAppBar(
          iconTheme: IconThemeData(
            color: colorPalette.appBarTextIcon,
          ),
          maAppBarType: MAAppBarType.blue,
          bottom: const MABottomAppBar(),
          leadingWidth: 120,
          leading: SizedBox(
            width: width / 3,
            child: MATextButton(
              isPadding: false,
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                _localizations.cancelButton,
                style: textTheme.labelLarge!.copyWith(
                  color: colorPalette.appBarTextIcon,
                ),
              ),
            ),
          ),
          title: AutoSizeText(
            _localizations.updatePassword,
            style: textTheme.titleSmall!.copyWith(
              color: colorPalette.appBarTextIcon,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            minFontSize: 17,
            maxFontSize: 17,
            overflowReplacement: const SizedBox.shrink(),
          ),
          actions: [
            SizedBox(
              width: 90,
              child: MATextButton(
                isPadding: false,
                onPressed: () {
                  contactInformationEditBloc.add(
                    const ContactInformationEditEvent.validatePasswordUpdate(),
                  );
                  contactInformationEditBloc.add(
                    ContactInformationEditEvent.setUpdateStatus(
                      ContactInformationUpdateStatus.updating(),
                    ),
                  );
                },
                child: Text(
                  _localizations.saveButton,
                  style: textTheme.labelLarge!.copyWith(
                    color: colorPalette.appBarTextIcon,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: RelationalPadding(
          addVerticalPadding: true,
          child: BlocBuilder<ContactInformationEditBloc, ContactInformationEditState>(
            bloc: contactInformationEditBloc,
            builder: (context, state) {
              return ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MASpacing.s(),
                      MASpacing.xxs(),
                      MATextFormField.password(
                        label: AppLocalizations.of(context)!.currentPasswordField,
                        controller: currentPasswordController,
                        hintText: "",
                        onChanged: (value) {
                          contactInformationEditBloc.add(
                            ContactInformationEditEvent.setPassword(
                              value,
                            ),
                          );
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s')),
                        ],
                        errorText: state.currentPasswordErrorMessage,
                        hasError: state.currentPasswordErrorMessage != null,
                      ),
                      MASpacing.xl(),
                      if (!isKeyboard)
                        BlocBuilder<WhitelabelBloc, WhitelabelState>(
                          bloc: locator<WhitelabelBloc>(),
                          builder: (context, state) {
                            return Text(
                              AppLocalizations.of(context)!.updateAPasswordField(state.whitelabel.appName),
                              textAlign: TextAlign.start,
                              style: textTheme.titleSmall,
                            );
                          },
                        ),
                      MASpacing.xxl(),
                      MASpacing.s(),
                      SizedBox(
                        child: Column(
                          children: [
                            PasswordCriteria(
                              criteria: AppLocalizations.of(context)!.charactersField,
                              state: state.charactersState,
                            ),
                            PasswordCriteria(
                              criteria: AppLocalizations.of(context)!.atLeast1NumberField,
                              state: state.atLeastNumberState,
                            ),
                            PasswordCriteria(
                              criteria: AppLocalizations.of(context)!.atLeast1SymbolField,
                              state: state.atLeastSymbolState,
                            ),
                          ],
                        ),
                      ),
                      MASpacing.xl(),
                      MASpacing.xl(),
                      MATextFormField.password(
                        label: AppLocalizations.of(context)!.newPasswordField,
                        hintText: "",
                        controller: passwordController,
                        hideErrorLabel: true,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s')),
                        ],
                        errorText: state.newPasswordErrorMessage,
                        hasError: ([
                              state.atLeastNumberState,
                              state.charactersState,
                              state.atLeastSymbolState,
                            ].contains(CriteriaState.error)
                                ? true
                                : false) ||
                            state.newPasswordErrorMessage != null,
                        onFocusExited: () {
                          contactInformationEditBloc.add(ContactInformationEditEvent.validatePassword(passwordController.value.text));
                        },
                        onChanged: (value) {
                          contactInformationEditBloc.add(
                            ContactInformationEditEvent.setNewPassword(
                              value,
                            ),
                          );
                        },
                      ),
                      MASpacing.xl(),
                      MATextFormField.password(
                        label: AppLocalizations.of(context)!.confirmNewPasswordField,
                        controller: rePasswordController,
                        hintText: "",
                        hideErrorLabel: true,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s')),
                        ],
                        onChanged: (value) {
                          contactInformationEditBloc.add(
                            ContactInformationEditEvent.setNewPasswordConfirmation(
                              value,
                            ),
                          );
                        },
                        errorText: state.newPasswordConfirmationErrorMessage,
                        hasError: state.newPasswordConfirmationErrorMessage != null,
                      ),
                      MASpacing.xl()
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
