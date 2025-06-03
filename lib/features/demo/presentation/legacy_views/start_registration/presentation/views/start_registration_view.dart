import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/inputs/inputs.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/routes.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/start_registration/application/bloc/start_registration/start_registration_bloc.dart';

class StartRegistrationView extends StatefulWidget {
  const StartRegistrationView({super.key});

  @override
  State<StartRegistrationView> createState() => _StartRegistrationViewState();
}

class _StartRegistrationViewState extends State<StartRegistrationView> {
  late StartRegistrationBloc _startRegistrationBloc;

  @override
  void initState() {
    _startRegistrationBloc = locator<StartRegistrationBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool keyBoardOut = !(MediaQuery.of(context).viewInsets.bottom != 0);
    TextTheme textTheme = Theme.of(context).textTheme;
    AppLocalizations localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    return PopScope(
      child: BlocListener<StartRegistrationBloc, StartRegistrationState>(
        bloc: _startRegistrationBloc,
        listenWhen: (oldState, state) {
          return oldState.isFormValid != state.isFormValid;
        },
        listener: (context, state) {
          if (state.isFormValid) {
            context.goNamed(LegacyRoutes.accessCode.name!);
          }
        },
        child: Scaffold(
          backgroundColor: colorPalette.surfaceContainerLowest,
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.register,
            ),
            backgroundColor: colorPalette.surfaceContainerLowest,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    style: textTheme.titleLarge!.copyWith(
                      color: colorPalette.textBrand,
                    ),
                    AppLocalizations.of(context)!.registerTitle,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    style: textTheme.bodyMedium,
                    AppLocalizations.of(context)!.registerBody,
                  ),
                  if (keyBoardOut)
                    SvgPicture.asset(
                      width: 125,
                      height: 125,
                      "assets/enter_email.svg",
                    ),
                  BlocBuilder<StartRegistrationBloc, StartRegistrationState>(
                    bloc: _startRegistrationBloc,
                    builder: (context, state) {
                      return MATextFormField.email(
                        label: AppLocalizations.of(context)!.emailField,
                        onFocusExited: () {
                          _startRegistrationBloc.add(
                            const StartRegistrationEvent.validateEmail(),
                          );
                        },
                        onChanged: (email) {
                          _startRegistrationBloc.add(
                            StartRegistrationEvent.setEmail(email),
                          );
                        },
                        hasError: state.emailErrorMessage != null,
                        errorText: state.emailErrorMessage,
                      );
                    },
                  ),
                  const RelationalSpace(),
                  MAElevatedButton.primary(
                    text:
                        AppLocalizations.of(context)!.nextButton.toUpperCase(),
                    onPressed: () async {
                      _startRegistrationBloc
                          .add(const StartRegistrationEvent.validateForm());
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {},
                    child: Text(
                      localizations.needHelpRegisteringButton,
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
