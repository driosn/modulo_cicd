import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/application/bloc/sign_in_dialog/sign_in_dialog_bloc.dart';
import 'package:resident_app/core/presentation/widgets/inputs/inputs.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

import 'ma_dialog.dart';

class MAWithHeroIconAndSignInDialog extends StatelessWidget
    implements MADialogBody {
  MAWithHeroIconAndSignInDialog({
    super.key,
    required this.icon,
    required this.title,
    required this.signInDialogBloc,
  });

  final Widget icon;
  final String title;
  final SignInDialogBloc signInDialogBloc;

  final _localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: MAScaler(
            child: SizedBox(
              height: 24,
              width: 24,
              child: icon,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: Text(
            title,
            style: textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        BlocBuilder<SignInDialogBloc, SignInDialogState>(
          bloc: signInDialogBloc,
          builder: (context, state) {
            return MATextFormField.email(
              label: _localizations.phoneNumberOrPasswordField,
              errorText: state.emailErrorMessage,
              hasError: state.emailErrorMessage != null,
              onChanged: (value) {
                signInDialogBloc.add(SignInDialogEvent.setEmail(value));
              },
              onFocusExited: () {
                signInDialogBloc.add(const SignInDialogEvent.validateEmail());
              },
            );
          },
        ),
        BlocBuilder<SignInDialogBloc, SignInDialogState>(
          bloc: signInDialogBloc,
          builder: (context, state) {
            return MATextFormField.password(
              label: _localizations.passwordField,
              errorText: state.passwordErrorMessage,
              hasError: state.passwordErrorMessage != null,
              onChanged: (value) {
                signInDialogBloc.add(SignInDialogEvent.setPassword(value));
              },
              onFocusExited: () {
                signInDialogBloc
                    .add(const SignInDialogEvent.validatePassword());
              },
            );
          },
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
