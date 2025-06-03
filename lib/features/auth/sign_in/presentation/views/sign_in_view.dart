import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/presentation/themes/application/bloc/ma_colorpalette_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/color_palette_dark.dart';
import 'package:resident_app/core/presentation/themes/color_palette_light.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_bloc.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_validations_bloc.dart';
import 'package:resident_app/features/auth/sign_in/presentation/widgets/sign_in_widgets.dart';
import 'package:resident_app/features/biometric_sign_in/application/bloc/biometric_authentication_bloc.dart';
import 'package:resident_app/features/document_acceptance/routes.dart';
import 'package:resident_app/features/language_selection/application/bloc/language_preference_bloc.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';
import 'package:resident_app/features/whitelabel/domain/entities/whitelabel.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  initState() {
    context.read<BiometricAuthenticationBloc>().add(
          const BiometricAuthenticationEvent.setAuthenticationType(),
        );
    super.initState();
  }

  final _localizations = locator<MaLocalizations>().I;

  final SiteBloc _siteBloc = locator<SiteBloc>();
  final WhitelabelBloc _whiteLabelBloc = locator<WhitelabelBloc>();

  final LanguagePreferenceBloc _languagePreferenceBloc =
      locator<LanguagePreferenceBloc>();

  final colorPalette = locator<ColorPalette>();
  bool navigateToSummary = false;

  @override
  Widget build(BuildContext context) {
    late bool hasMobileAccess;

    void showNoAccessDialog() => context.showMADialog(
          barrierColor:
              locator<ColorPalette>().layoutScrimSurface.withOpacity(0.75),
          maDialogBody: MABasicDialogBody(
            text: _localizations.residentPortalNotAvailable(
                _whiteLabelBloc.state.whitelabel.appName),
          ),
          actions: [
            MADialogAction(
              label: 'Close',
              onPressed: () => context.pop(),
              style: MADialogActionStyle.elevated,
            )
          ],
        );

    void validateAccess(User user, bool navigateToSummary) {
      locator<UserBloc>().add(UserEvent.setUser(user));
      hasMobileAccess = user.primarySite.propertySettings.hasMobileAccess;
      _siteBloc.add(SiteEvent.setSite(user.primarySite));

      if (hasMobileAccess) {
        locator<WhitelabelBloc>().add(
          WhitelabelEvent.setupWhitelabel(
            corePropertyId: user.propertyNumber,
            coreCompanyId: user.companyNumber,
          ),
        );

        if (_languagePreferenceBloc.state.isLanguageSelected) {
          _languagePreferenceBloc.add(
            LanguagePreferenceEvent.update(
                residentUserId: locator<UserBloc>().state.user.residentUserId),
          );
          locator<UserBloc>().add(
            UserEvent.setNotificationLanguagePreferenceType(
              _languagePreferenceBloc.state.selectedLanguage,
            ),
          );
        } else {
          context.read<BiometricAuthenticationBloc>().add(
                BiometricAuthenticationEvent.acceptedTermsAndContions(
                  navigateToSummary,
                ),
              );
          if (user.notificationLanguagePreferenceType ==
              Language.spanish.languageType) {
            locator.resetLocalizations(const Locale('es', 'US'));
          } else {
            locator.resetLocalizations(const Locale('en', 'US'));
          }
        }
      } else {
        context.closeAnyOpenedDialog();
        showNoAccessDialog();
      }
    }

    void setupColorsByWhitelabel(Whitelabel whitelabel) {
      if (MediaQuery.of(context).platformBrightness == Brightness.light) {
        locator<MAColorpaletteBloc>().add(
          MAColorpaletteEvent.updateColorpalette(
            ColorPaletteLight.fromModel(
              whitelabel,
            ),
          ),
        );
      } else {
        locator<MAColorpaletteBloc>().add(
          MAColorpaletteEvent.updateColorpalette(
            ColorPaletteDark.fromModel(
              whitelabel,
            ),
          ),
        );
      }
      locator.setThemeColor(
        ColorPaletteLight.fromModel(
          whitelabel,
        ),
      );
    }

    void setupColorsAsDefault() {
      final defaultPalette =
          MediaQuery.of(context).platformBrightness == Brightness.light
              ? ColorPaletteLight()
              : ColorPaletteDark();
      locator<MAColorpaletteBloc>().add(
        MAColorpaletteEvent.updateColorpalette(
          defaultPalette,
        ),
      );
      locator.setThemeColor(defaultPalette);
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: MultiBlocProvider(
        providers: [
          BlocProvider<SignInValidationsBloc>(
              create: (_) => locator<SignInValidationsBloc>()),
        ],
        child: BlocListener<BiometricAuthenticationBloc,
            BiometricAuthenticationState>(
          listenWhen: (oldState, state) {
            return oldState.isEnabled != state.isEnabled ||
                oldState.biometricsFirstTime != state.biometricsFirstTime;
          },
          listener: (context, state) {
            if (state.isEnabled && !state.biometricsFirstTime) {
              context.read<SignInBloc>().add(
                    SignInEvent.signInWithBiometrics(),
                  );
            }
          },
          child: BlocListener<WhitelabelBloc, WhitelabelState>(
            bloc: _whiteLabelBloc,
            listener: (context, state) {
              state.whitelabelStatus.maybeWhen(
                  orElse: () => null,
                  failure: (failure) {
                    ///
                    /// Failure will handle the case of not found
                    /// if whitelabel is not found, we still access the app
                    /// but with default theme
                    ///
                    context.closeAnyOpenedDialog();
                    setupColorsAsDefault();

                    if (navigateToSummary) {
                      context.goNamed(
                        CoreRoutes.home.name!,
                      );
                      return;
                    }
                    context.goNamed(
                      DocumentAcceptanceRoutes.documentAcceptance.name!,
                    );
                  },
                  success: () {
                    setupColorsByWhitelabel(state.whitelabel);

                    if (navigateToSummary) {
                      context.goNamed(
                        CoreRoutes.home.name!,
                      );
                      return;
                    }

                    context.goNamed(
                      DocumentAcceptanceRoutes.documentAcceptance.name!,
                    );
                  });
            },
            child: BlocListener<SignInBloc, SignInState>(
              listener: (context, state) {
                state.when(
                  initial: () => null,
                  loading: context.showLoader,
                  loggedOut: () => null,
                  sessionExpired: () => null,
                  success: (user, hasAcceptedDocuments) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      MASnackBar.success(
                        message: _localizations.loginSuccessful,
                      ),
                    );

                    navigateToSummary = hasAcceptedDocuments;
                    validateAccess(
                      user,
                      hasAcceptedDocuments,
                    );
                  },
                  biometricsFailure: (failureMessage) {
                    context.read<BiometricAuthenticationBloc>().add(
                        BiometricAuthenticationEvent.authenticationFailed());
                    context.closeAnyOpenedDialog();
                  },
                  failure: (failureMessage) {
                    context.closeAnyOpenedDialog();
                  },
                );
              },
              child: BlocBuilder<WhitelabelBloc, WhitelabelState>(
                bloc: _whiteLabelBloc,
                builder: (context, whitelabelState) {
                  return VerticalRhythm(
                    topChildren: [
                      TopSignIn(
                        hasWhitelabelLogo: whitelabelState.hasLogo(),
                        logo: whitelabelState.whitelabel.logo,
                      ),
                    ],
                    centerImage: whitelabelState.hasLogo()
                        ? null
                        : Image.asset(
                            "assets/house_with_trees_image.png",
                            fit: BoxFit.scaleDown,
                          ),
                    centerImageHeight:
                        668 / 1374 * MediaQuery.of(context).size.width,
                    bottomChildren: [
                      BlocBuilder<SignInBloc, SignInState>(
                        builder: (context, state) {
                          return BottomSignIn(
                            key: widget.key,
                            hasInvalidLogInInformation: state.when(
                              initial: () => false,
                              loading: () => false,
                              loggedOut: () => false,
                              sessionExpired: () => false,
                              success: (user, navigateToSummary) => false,
                              failure: (failureMessage) => true,
                              biometricsFailure: (failureMessage) => false,
                            ),
                            onEnterValidatedCredentials: (username, password) {
                              context.read<SignInBloc>().add(
                                    SignInEvent.signIn(
                                      username: username.trim(),
                                      password: password.trim(),
                                    ),
                                  );
                            },
                            hasWhitelabelLogo: whitelabelState.hasLogo(),
                          );
                        },
                      ),
                    ],
                    middleColor: whitelabelState.hasLogo()
                        ? colorPalette.surfaceContainerLowest
                        : colorPalette.grassColor,
                    middleHeight: 40,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
