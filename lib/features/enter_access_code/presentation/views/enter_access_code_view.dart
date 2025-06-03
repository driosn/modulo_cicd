import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/inputs/inputs.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/routes.dart';

class EnterAccessCodeView extends StatelessWidget {
  const EnterAccessCodeView({super.key});
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return PopScope(
      child: Scaffold(
        backgroundColor: colorPalette.surfaceContainerLowest,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.register,
            ),
            backgroundColor: colorPalette.surfaceContainerLowest),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                textAlign: TextAlign.center,
                style: textTheme.titleLarge!.copyWith(
                  color: colorPalette.textBrand,
                ),
                AppLocalizations.of(context)!.enterCodeTitle,
              ),
              Text(
                textAlign: TextAlign.center,
                style: textTheme.bodyMedium,
                AppLocalizations.of(context)!.enterCodeBody("jdoe@gmail.com"),
              ),
              MAOneTimeInput(
                onLastDigitEntered: (fullCode) {
                  debugPrint(fullCode);
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        MASnackBar.success(
                          message: 'Access code accepted',
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 40,
              ),
              MAElevatedButton.primary(
                text: AppLocalizations.of(context)!.nextButton,
                onPressed: () async {
                  context.goNamed(LegacyRoutes.createPassword.name!);
                },
              ),
              MAElevatedButton.secondary(
                text: AppLocalizations.of(context)!.resendAccessCodeButton,
                onPressed: () async {
                  context.go('/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
