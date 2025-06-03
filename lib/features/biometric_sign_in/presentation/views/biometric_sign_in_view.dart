import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/fields/ma_text_field.dart';
import 'package:resident_app/core/presentation/widgets/ma_background.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/biometric_sign_in/application/bloc/biometric_authentication_bloc.dart';

class BiometricSignInView extends StatelessWidget {
  BiometricSignInView({super.key});

  final colorPalette = locator<ColorPalette>();
  final _colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      body: MABackground(
        child: BlocConsumer<BiometricAuthenticationBloc, BiometricAuthenticationState>(listener: (BuildContext context, state) {
          if (state.biometricsFirstTime != true) {
            context.replaceNamed(CoreRoutes.home.name!);
          }

          if (state.isEnabled) {
            ScaffoldMessenger.of(context).showSnackBar(
              MASnackBar.success(
                message: state.authenticationType == 'Face ID' ? localizations.faceIdLogInEnabled : localizations.touchIdLogInEnabled,
              ),
            );
          }
        }, builder: (context, state) {
          return VerticalRhythm(
            topChildren: [
              TopBiometrics(authenticationType: state.authenticationType),
              MASpacing.l(),
              RelationalPadding(
                child: Text(
                  localizations.biometricLoginDisclaimer(state.authenticationType),
                  style: textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              MASpacing.xl(),
              MASpacing.xl(),
              MASpacing.xl(),
              SvgPicture.asset(
                state.authenticationType == 'Face ID'
                    ? Platform.isIOS
                        ? 'assets/biometrics/ios-face-id.svg'
                        : 'assets/biometrics/android-face-id.svg'
                    : Platform.isIOS
                        ? 'assets/biometrics/ios-touch-id.svg'
                        : 'assets/biometrics/android-fingerprint-id.svg',
                height: 160,
                width: 160,
              )
            ],
            bottomChildren: [
              RelationalPadding(
                child: Column(
                  children: [
                    MAElevatedButton.primary(
                        text: localizations.enableLoginWithBiometrics(state.authenticationType).toUpperCase(),
                        onPressed: () {
                          locator<BiometricAuthenticationBloc>().add(const BiometricAuthenticationEvent.enableBiometricAuthentication());
                        }),
                    MASpacing.xxl(),
                    MAElevatedButton.secondary(
                      text: localizations.skip.toUpperCase(),
                      onPressed: () {
                        locator<BiometricAuthenticationBloc>().add(const BiometricAuthenticationEvent.disableBiometricAuthentication());
                        // context.replaceNamed(CoreRoutes.home.name!);
                      },
                    ),
                    MASpacing.xxl(),
                  ],
                ),
              ),
            ],
            middleColor: Colors.transparent,
            middleHeight: 60,
          );
        }),
      ),
    );
  }
}

class TopBiometrics extends StatelessWidget {
  const TopBiometrics({super.key, required this.authenticationType});
  final String authenticationType;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    return RelationalPadding(
      child: Column(
        children: [
          MASpacing.xl(),
          MASpacing.xl(),
          MASpacing.xl(),
          MASpacing.s(),
          MATextField(
            text: localizations.loginWithBiometrics(authenticationType),
            textStyle: textTheme.displaySmall?.copyWith(
              color: colorPalette.textBrand,
            ),
          ),
          MASpacing.s(),
        ],
      ),
    );
  }
}
