import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/biometric_sign_in/application/bloc/biometric_authentication_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class EditSecureAuthenticationView extends StatelessWidget {
  EditSecureAuthenticationView({super.key});
  final AppLocalizations _localizations = locator<MaLocalizations>().I;

  final userBloc = locator<UserBloc>();

  final AppLocalizations localizations = locator<MaLocalizations>().I;

  final colorPalette = locator<ColorPalette>();

  final String authenticationType = locator<BiometricAuthenticationBloc>().state.authenticationType;
  @override
  Widget build(BuildContext context) {
    final biometricAuthenticationBloc = context.read<BiometricAuthenticationBloc>();

    final textTheme = Theme.of(context).textTheme;
    return BlocConsumer<BiometricAuthenticationBloc, BiometricAuthenticationState>(
      listener: (context, state) {
        if (state.isEnabled) {
          ScaffoldMessenger.of(context).showSnackBar(
            MASnackBar.success(
              message: _localizations.secureAuthenticationEnabled(authenticationType),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            MASnackBar.success(
              message: _localizations.secureAuthenticationDisabled(authenticationType),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: colorPalette.surfaceContainerLowest,
          appBar: MAAppBar(
            iconTheme: IconThemeData(
              color: colorPalette.appBarTextIcon,
            ),
            maAppBarType: MAAppBarType.blue,
            bottom: const MABottomAppBar(),
            title: AutoSizeText(
              _localizations.secureAuthentication,
              style: textTheme.titleSmall!.copyWith(
                color: colorPalette.appBarTextIcon,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              minFontSize: 17,
              maxFontSize: 17,
              overflowReplacement: const SizedBox.shrink(),
            ),
          ),
          body: RelationalPadding(
            addVerticalPadding: true,
            child: VerticalRhythm(
              topChildren: [
                MASpacing.xl(),
                Text(_localizations.secureAuthenticationInfo(state.authenticationType)),
                MASpacing.xxl(),
                MASpacing.s(),
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
                MASpacing.s(),
                SwitchListTile(
                  title: Text(
                    state.isEnabled ? _localizations.on : _localizations.off,
                    style: textTheme.titleSmall,
                  ),
                  onChanged: (bool value) {
                    if (value == true) {
                      biometricAuthenticationBloc.add(
                        BiometricAuthenticationEvent.enableBiometricAuthenticationWithoutVerification(),
                      );
                    } else {
                      biometricAuthenticationBloc.add(
                        BiometricAuthenticationEvent.disableBiometricAuthenticationWithoutVerification(),
                      );
                    }
                  },
                  value: state.isEnabled,
                  tileColor: state.isEnabled ? colorPalette.secondary100 : colorPalette.surfaceContainerLow,
                  activeColor: colorPalette.navigationDrawerIconText,
                ),
                MASpacing.xxl(),
                MASpacing.s(),
              ],
              middleColor: colorPalette.surfaceContainerLowest,
              middleHeight: 20,
            ),
          ),
        );
      },
    );
  }
}
