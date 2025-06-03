import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/fields/ma_text_field.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/auth/routes.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_bloc.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';

class SignOutView extends StatefulWidget {
  const SignOutView({super.key});

  @override
  State<SignOutView> createState() => _SignOutViewState();
}

class _SignOutViewState extends State<SignOutView> {
  ///
  final ColorPalette colorPalette = locator<ColorPalette>();

  final _localizations = locator<MaLocalizations>().I;

  @override
  void initState() {
    super.initState();
    locator<WhitelabelBloc>().add(WhitelabelEvent.setupWhitelabel());
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: BlocBuilder<WhitelabelBloc, WhitelabelState>(
        bloc: locator<WhitelabelBloc>(),
        builder: (context, state) {
          return VerticalRhythm(
            topChildren: [
              Container(
                color: colorPalette.surfaceContainerLowest,
                child: RelationalPadding(
                  child: Column(
                    children: [
                      MASpacing.xl(),
                      MASpacing.xl(),
                      MASpacing.xl(),
                      MASpacing.xl(),
                      MASpacing.xl(),
                      MASpacing.s(),
                      state.hasLogo()
                          ? SizedBox(
                              width: double.infinity,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: SvgPicture.network(
                                  state.whitelabel.logo,
                                  alignment: Alignment.topCenter,
                                  placeholderBuilder: (BuildContext context) =>
                                      Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.45,
                                    ),
                                    child: MACircularProgressIndicator(),
                                  ),
                                ),
                              ),
                            ) //
                          : MATextField(
                              text: state.whitelabel.appName,
                              textStyle: textTheme.displaySmall?.copyWith(
                                color: colorPalette.textBrand,
                              ),
                            ),
                      const RelationalSpace(),
                    ],
                  ),
                ),
              ),
            ],
            centerImage: state.hasLogo()
                ? null
                : Image.asset(
                    "assets/house_with_trees_image.png",
                    fit: BoxFit.scaleDown,
                  ),
            centerImageHeight: 668 / 1374 * MediaQuery.of(context).size.width,
            bottomChildren: [
              Container(
                color: state.hasLogo() ? colorPalette.surfaceContainerLowest : colorPalette.grassColor,
                child: RelationalPadding(
                  child: Column(
                    children: [
                      MASpacing.s(),
                      MASpacing.xxs(),
                      MATextField(
                        text: _localizations.signOutPrompt,
                        textStyle: textTheme.bodyMedium,
                      ),
                      MASpacing.s(),
                      MASpacing.xxl(),
                      MASpacing.s(),
                      MASpacing.xxl(),
                      MAElevatedButton.primary(
                        text: _localizations.logInButton,
                        width: double.infinity,
                        onPressed: () {
                          locator<SignInBloc>().add(const SignInEvent.signedOut());
                          context.goNamed(AuthRoutes.signIn.name!);
                        },
                      ),
                      MASpacing.l(),
                      MASpacing.xxl(),
                      MASpacing.xxl()
                    ],
                  ),
                ),
              ),
            ],
            middleColor: state.hasLogo() ? colorPalette.surfaceContainerLowest : colorPalette.grassColor,
            middleHeight: 40,
          );
        },
      ),
    );
  }
}
