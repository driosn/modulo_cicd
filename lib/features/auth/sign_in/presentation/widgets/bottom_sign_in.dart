import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/auth/log_in_help/presentation/log_in_help_bottomsheet.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_validations_bloc.dart';
import 'package:resident_app/features/auth/sign_in/constants/sign_in.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';
import 'package:resident_app/main_common.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomSignIn extends StatefulWidget {
  const BottomSignIn({
    super.key,
    required this.onEnterValidatedCredentials,
    required this.hasInvalidLogInInformation,
    required this.hasWhitelabelLogo,
  });

  final Function(String username, String password) onEnterValidatedCredentials;
  final bool hasInvalidLogInInformation;
  final bool hasWhitelabelLogo;

  @override
  State<StatefulWidget> createState() => _BottomSignInState();
}

class _BottomSignInState extends State<BottomSignIn> {
  final _localizations = locator<MaLocalizations>().I;
  final _whitelabelBloc = locator<WhitelabelBloc>();

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return BlocListener<SignInValidationsBloc, SignInValidationsState>(
      listenWhen: (previousState, currentState) => previousState.allFieldsAreValid != currentState.allFieldsAreValid,
      listener: (context, state) {
        if (state.allFieldsAreValid) {
          widget.onEnterValidatedCredentials(
            state.username.value,
            state.password.value,
          );
        }
      },
      child: Container(
        color: widget.hasWhitelabelLogo ? colorPalette.surfaceContainerLowest : colorPalette.grassColor,
        child: RelationalPadding(
          child: AutofillGroup(
            child: Column(
              children: [
                if (widget.hasInvalidLogInInformation)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _localizations.invalidLogInInformation,
                          style: textTheme.bodyMedium?.copyWith(
                            color: locator<ColorPalette>().warningWarning,
                          ),
                        ),
                        MASpacing.s(),
                      ],
                    ),
                  ),
                BlocBuilder<SignInValidationsBloc, SignInValidationsState>(
                  builder: (context, state) {
                    return MATextFormField(
                      label: _localizations.username,
                      hintText: "",
                      autofillHints: const [
                        AutofillHints.username,
                      ],
                      hasError: state.usernameErrorMesasge != null,
                      errorText: state.usernameErrorMesasge,
                      onFocusExited: () => context.read<SignInValidationsBloc>().add(const SignInValidationsEvent.validateUsername()),
                      onChanged: (username) {
                        context.read<SignInValidationsBloc>().add(
                              SignInValidationsEvent.setUsername(username),
                            );
                      },
                    );
                  },
                ),
                const RelationalSpace(),
                BlocBuilder<SignInValidationsBloc, SignInValidationsState>(
                  builder: (context, state) {
                    return MATextFormField.password(
                      label: _localizations.passwordField,
                      hintText: "",
                      hasError: state.passwordErrorMessage != null,
                      errorText: state.passwordErrorMessage,
                      autofillHints: const [
                        AutofillHints.password,
                      ],
                      onFocusExited: () => context.read<SignInValidationsBloc>().add(const SignInValidationsEvent.validatePassword()),
                      onChanged: (password) {
                        context.read<SignInValidationsBloc>().add(
                              SignInValidationsEvent.setPassword(password),
                            );
                      },
                    );
                  },
                ),
                MASpacing.l(),
                MAElevatedButton.primary(
                  text: _localizations.logInButton,
                  onPressed: () async {
                    context.read<SignInValidationsBloc>().add(
                          const SignInValidationsEvent.validateAll(),
                        );
                  },
                ),
                MASpacing.l(),
                BlocBuilder<WhitelabelBloc, WhitelabelState>(
                  bloc: _whitelabelBloc,
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        context.showMADialog(
                          maDialogBody: MABasicDialogBody(
                            title: _localizations.forgotUsernamePasswordTitle,
                            text: _localizations.youWillTransferredPortal(state.whitelabel.appName),
                          ),
                          actions: [
                            MADialogAction(
                              label: _localizations.goToWebsiteButton,
                              onPressed: () => {
                                context.pop(),
                                launchUrl(
                                  Uri.parse(
                                    SignInValues.linkRecoveryCredentials,
                                  ),
                                  mode: LaunchMode.externalApplication,
                                ),
                              },
                              style: MADialogActionStyle.elevated,
                            ),
                            MADialogAction(
                              label: _localizations.cancelButton,
                              onPressed: () => context.pop(),
                              style: MADialogActionStyle.text,
                            )
                          ],
                        );
                      },
                      child: Text(
                        textAlign: TextAlign.center,
                        _localizations.forgotUsernamePasswordLabel,
                        style: textTheme.hyperlink.copyWith(
                          shadows: [
                            Shadow(
                              color: colorPalette.iconBaseTextIcon,
                              offset: const Offset(0, -4),
                            ),
                          ],
                          decorationColor: colorPalette.iconBaseTextIcon,
                        ),
                      ),
                    );
                  },
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return LogInHelpBottomSheet();
                      },
                    );
                  },
                  child: Text(
                    textAlign: TextAlign.center,
                    _localizations.needHelpLoggingIn,
                    style: textTheme.hyperlink.copyWith(
                      shadows: [
                        Shadow(
                          color: colorPalette.iconBaseTextIcon,
                          offset: const Offset(0, -4),
                        ),
                      ],
                      decorationColor: colorPalette.iconBaseTextIcon,
                    ),
                  ),
                ),
                MASpacing.l(),
                Text(
                  "${_localizations.version} $versionNumber",
                  style: textTheme.labelSmall,
                ),
                MASpacing.l(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
