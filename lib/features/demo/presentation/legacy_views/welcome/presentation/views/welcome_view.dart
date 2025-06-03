import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/ma_background.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/auth/routes.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/routes.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      body: MABackground(
        child: BlocBuilder<WhitelabelBloc, WhitelabelState>(
          bloc: locator<WhitelabelBloc>(),
          builder: (context, state) {
            return Column(
              children: [
                const Expanded(flex: 1, child: SizedBox()),
                Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          state.whitelabel.appName,
                          textAlign: TextAlign.center,
                          style: textTheme.displaySmall?.copyWith(
                            color: colorPalette.textBrand,
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: AppLocalizations.of(context)!.welcomeText,
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          MAElevatedButton.primary(
                            text: AppLocalizations.of(context)!.registerButton,
                            onPressed: () async {
                              context.goNamed(
                                  LegacyRoutes.startRegistration.name!);
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          MAElevatedButton.secondary(
                            text: AppLocalizations.of(context)!.sigInButton,
                            onPressed: () async {
                              context.goNamed(AuthRoutes.signIn.name!);
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
