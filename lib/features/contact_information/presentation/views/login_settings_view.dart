import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/biometric_sign_in/application/bloc/biometric_authentication_bloc.dart';
import 'package:resident_app/features/contact_information/application/bloc/contact_information_edit/contact_information_edit_bloc.dart';
import 'package:resident_app/features/contact_information/presentation/widgets/info_field.dart';
import 'package:resident_app/features/contact_information/presentation/widgets/informative_block.dart';
import 'package:resident_app/features/contact_information/routes.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class LoginSettingsView extends StatelessWidget {
  LoginSettingsView({super.key});

  final UserBloc userBloc = locator<UserBloc>();
  final ContactInformationEditBloc _contactInformationEditBloc = locator<ContactInformationEditBloc>();

  final AppLocalizations _localizations = locator<MaLocalizations>().I;

  final bool biometricAuthenticationAvaliable = locator<BiometricAuthenticationBloc>().state.haveBiometricAuthenticationAvaliable;
  final String authenticationType = locator<BiometricAuthenticationBloc>().state.authenticationType;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    final bool isContactSync = userBloc.state.user.primarySite.propertySettings.contactSync;
    return BlocConsumer<ContactInformationEditBloc, ContactInformationEditState>(
      bloc: _contactInformationEditBloc,
      listener: (context, state) {
        state.updateStatus.whenOrNull(
          successUsername: () {
            userBloc.add(
              UserEvent.setUsername(
                state.username.value,
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(
              MASnackBar.success(
                message: _localizations.usernameUpdated,
              ),
            );
          },
          successEmail: () {
            userBloc.add(
              UserEvent.setEmail(
                state.email.value,
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(
              MASnackBar.success(
                message: _localizations.emailUpdated,
              ),
            );
          },
          successPassword: () {
            ScaffoldMessenger.of(context).showSnackBar(
              MASnackBar.success(
                message: _localizations.passwordUpdated,
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
      builder: (context, state) {
        return Scaffold(
          drawer: MADrawer(),
          endDrawerEnableOpenDragGesture: false,
          backgroundColor: colorPalette.surfaceContainerLowest,
          appBar: MAAppBar(
            iconTheme: IconThemeData(
              color: colorPalette.appBarTextIcon,
            ),
            maAppBarType: MAAppBarType.blue,
            bottom: const MABottomAppBar(),
            title: AutoSizeText(
              _localizations.drawerMyAccountUser,
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
          body: state.updateStatus.maybeWhen(
            updating: () {
              return const Center(
                child: MACircularProgressIndicator(),
              );
            },
            orElse: () {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    RelationalPadding(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MASpacing.xxl(),
                          MASpacing.l(),
                          InfoField.navigable(
                            title: _localizations.username.toUpperCase(),
                            values: [userBloc.state.user.username],
                            navigation: () {
                              _contactInformationEditBloc.add(
                                ContactInformationEditEvent.setDefaultUsername(
                                  userBloc.state.user.username,
                                ),
                              );
                              context.goNamed(UserInformationRoutes.editUsername.name!);
                            },
                            icon: Icons.arrow_forward_ios,
                          ),
                          MASpacing.xxl(),
                          MASpacing.l(),
                          InfoField.navigable(
                            title: _localizations.passwordField.toUpperCase(),
                            values: const ["● ● ● ● ● ● ● ● ● ●"],
                            navigation: () {
                              _contactInformationEditBloc.add(
                                ContactInformationEditEvent.setDefaultPassword(),
                              );
                              context.goNamed(
                                UserInformationRoutes.editPassword.name!,
                              );
                            },
                            icon: Icons.arrow_forward_ios,
                          ),
                          MASpacing.xxl(),
                          MASpacing.l(),
                          if (context.read<BiometricAuthenticationBloc>().state.haveBiometricAuthenticationAvaliable)
                            InfoField.navigable(
                              title: _localizations.secureAuthenticationField.toUpperCase(),
                              values: [authenticationType],
                              navigation: () {
                                biometricAuthenticationAvaliable ? context.goNamed(UserInformationRoutes.editSecureAutentication.name!) : null;
                              },
                              icon: Icons.arrow_forward_ios,
                            ),
                          const SizedBox(
                            height: 24,
                          ),
                          InfoField.navigable(
                            title: _localizations.emailAddress.toUpperCase(),
                            values: [userBloc.state.user.residentUserEmail],
                            navigation: !isContactSync
                                ? () {
                                    _contactInformationEditBloc.add(
                                      ContactInformationEditEvent.setDefaultEmail(
                                        userBloc.state.user.residentUserEmail,
                                      ),
                                    );
                                    context.goNamed(
                                      UserInformationRoutes.editEmail.name!,
                                    );
                                  }
                                : null,
                            icon: Icons.arrow_forward_ios,
                          ),
                          MASpacing.xxl(),
                        ],
                      ),
                    ),
                    InformativeBlock(),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
