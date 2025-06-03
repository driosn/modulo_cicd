import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/register_site/routes.dart';

class BottomRegisterSite extends StatelessWidget {
  const BottomRegisterSite({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    return RelationalPadding(
      child: Column(
        children: [
          MAElevatedButton(
            text: localizations.registerButton,
            onPressed: () {
              context.goNamed(RegisterSiteRoutes.thankYou.name!);
            },
          ),
          const RelationalSpace(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
