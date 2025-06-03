import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/ma_background.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/routes.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';

class ExplainerView extends StatelessWidget {
  const ExplainerView({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations localizations = locator<MaLocalizations>().I;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return Builder(builder: (context) {
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
                      child: Text(
                        state.whitelabel.appName,
                        textAlign: TextAlign.justify,
                        style: textTheme.displaySmall?.copyWith(
                          color: colorPalette.textBrand,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            localizations.explainerText(state.whitelabel.appName),
                            style: textTheme.bodyMedium,
                          ),
                          MAElevatedButton.primary(
                            text: localizations.explainerButton,
                            onPressed: () async {
                              context.goNamed(LegacyRoutes.welcome.name!);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      );
    });
  }
}
