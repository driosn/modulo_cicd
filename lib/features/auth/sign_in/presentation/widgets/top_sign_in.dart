import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/fields/ma_text_field.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';

class TopSignIn extends StatelessWidget {
  const TopSignIn({
    this.hasWhitelabelLogo = false,
    this.logo = "",
    super.key,
  });

  final bool hasWhitelabelLogo;
  final String logo;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    return Container(
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
            hasWhitelabelLogo
                ? SizedBox(
                    width: double.infinity,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: SvgPicture.network(
                        logo,
                        alignment: Alignment.topCenter,
                        placeholderBuilder: (BuildContext context) => Container(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.45,
                          ),
                          child: MACircularProgressIndicator(),
                        ),
                      ),
                    ),
                  ) //
                : BlocBuilder<WhitelabelBloc, WhitelabelState>(
                    bloc: locator<WhitelabelBloc>(),
                    builder: (context, state) {
                      return MATextField(
                        text: state.whitelabel.appName,
                        textStyle: textTheme.displaySmall?.copyWith(
                          color: colorPalette.textBrand,
                        ),
                      );
                    },
                  ),
            MASpacing.s(),
          ],
        ),
      ),
    );
  }
}
