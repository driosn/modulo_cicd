import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/summary/application/bloc/summary_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';

class MakeAPaymentSuccessView extends StatelessWidget {
  MakeAPaymentSuccessView({super.key});

  final localizations = locator<MaLocalizations>().I;
  final colorPalette = locator<ColorPalette>();
  final summaryBloc = locator<SummaryBloc>();
  final siteBloc = locator<SiteBloc>();
  final userBloc = locator<UserBloc>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        title: Text(localizations.makeAPayment),
        maAppBarType: MAAppBarType.blue,
        bottom: const MABottomAppBar(),
      ),
      body: RelationalPadding(
        child: VerticalRhythm(
          topChildren: [
            Container(
              color: colorPalette.surfaceContainerLowest,
              child: Column(
                children: [
                  const RelationalSpace(),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    localizations.thankYouPayment,
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Icon(
                    Icons.check_circle,
                    // TODO: Update this color with palette
                    color: colorPalette.tertiary700,
                    size: 100,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  BlocBuilder<WhitelabelBloc, WhitelabelState>(
                    bloc: locator<WhitelabelBloc>(),
                    builder: (context, state) {
                      return Text(
                        key: key,
                        localizations.allowUpTo48(state.whitelabel.appName),
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium,
                      );
                    },
                  ),
                ],
              ),
            )
          ],
          bottomChildren: [
            Container(
              color: colorPalette.surfaceContainerLowest,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  MAElevatedButton.secondary(
                    text: localizations.continueT.toUpperCase(),
                    onPressed: () {
                      siteBloc.add(
                        SiteEvent.selectByResidentId(
                          siteBloc.state.selectedSite.resident.residentId,
                        ),
                      );
                      summaryBloc.add(
                        SummaryEvent.getSummaryContent(
                          selectedSite: siteBloc.state.selectedSite,
                          user: userBloc.state.user,
                        ),
                      );
                      context.goNamed(
                        CoreRoutes.home.name!,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              ),
            )
          ],
          middleColor: colorPalette.surfaceContainerLowest,
          middleHeight: 0,
        ),
      ),
    );
  }
}
