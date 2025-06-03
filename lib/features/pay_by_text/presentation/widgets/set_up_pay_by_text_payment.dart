import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';

class SetUpPayByTextPayment extends StatelessWidget {
  SetUpPayByTextPayment({
    super.key,
    required this.payByTextBloc,
    required this.title,
    required this.description,
    required this.svgAssetPath,
    required this.colorFilter,
    required this.goRouteName,
    required this.appBarTitle,
    required this.buttonTitle,
  });

  final PayByTextBloc payByTextBloc;

  final String title;
  final String description;
  final String svgAssetPath;
  final String appBarTitle;
  final String buttonTitle;
  final ColorFilter? colorFilter;
  final String goRouteName;
  final AppLocalizations localizations = locator<MaLocalizations>().I;
  final PayByTextBloc _payByTextBloc = locator<PayByTextBloc>();

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      drawer: MADrawer(
        items: MADrawer.defaultItems,
      ),
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        maAppBarType: MAAppBarType.blue,
        bottom: const MABottomAppBar(),
        title: Text(
          appBarTitle,
          style: textTheme.titleSmall!.copyWith(
            color: colorPalette.appBarTextIcon,
          ),
        ),
      ),
      body: VerticalRhythm(
        topChildren: [
          Container(
            color: colorPalette.surfaceContainerLowest,
            child: RelationalPadding(
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      title,
                      style: textTheme.titleLarge,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const RelationalSpace(),
                  Text(
                    description,
                    textAlign: TextAlign.start,
                    style: textTheme.bodyMedium,
                  ),
                  const RelationalSpace(),
                  SvgPicture.asset(
                    svgAssetPath,
                    height: width / 3 * 2,
                  ),
                ],
              ),
            ),
          ),
        ],
        bottomChildren: [
          Container(
            color: colorPalette.surfaceContainerLowest,
            child: RelationalPadding(
              child: Column(
                children: [
                  BlocBuilder<PayByTextBloc, PayByTextState>(
                    bloc: _payByTextBloc,
                    builder: (context, state) {
                      return MAElevatedButton.primary(
                        text: buttonTitle,
                        onPressed: () {
                          _payByTextBloc
                              .add(const PayByTextEvent.configurePayByText());
                          context.goNamed(goRouteName);
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  const RelationalSpace(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
