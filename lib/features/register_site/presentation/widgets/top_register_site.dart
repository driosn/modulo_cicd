import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';

class TopRegisterSite extends StatelessWidget {
  const TopRegisterSite({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: colorPalette.appBarAccent,
            width: 6,
          ),
        ),
      ),
      child: RelationalPadding(
        child: Column(
          children: [
            const RelationalSpace(),
            const SizedBox(
              height: 10,
            ),
            //Register Site title
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                localizations.drawerMyAccountRegister,
                style: theme.textTheme.titleLarge,
              ),
            ),
            const RelationalSpace(),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<WhitelabelBloc, WhitelabelState>(
              bloc: locator<WhitelabelBloc>(),
              builder: (context, state) {
                return Text(
                  localizations.registerSiteDescription(state.whitelabel.appName),
                  style: theme.textTheme.bodyMedium,
                );
              },
            ),
            const RelationalSpace(),
            const SizedBox(
              height: 10,
            ),
            MATextFormField.registrationCode(
              label: localizations.siteRegistrationCodeLabel,
              hintText: localizations.siteRegistrationCodeHint,
            ),
            const RelationalSpace(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
