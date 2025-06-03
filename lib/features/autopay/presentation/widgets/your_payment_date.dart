import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/extensions/month_extensions.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class YourPaymentDate extends StatefulWidget {
  const YourPaymentDate({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<StatefulWidget> createState() => _YourPaymentDateState();
}

class _YourPaymentDateState extends State<YourPaymentDate> {
  @override
  Widget build(BuildContext context) {
    final userBloc = locator<UserBloc>();
    final propertySettings = userBloc.state.user.primarySite.propertySettings;
    final day = propertySettings.autoPaySetMultipleDays.first;
    final localizations = locator<MaLocalizations>().I;
    final autoPayBloc = locator<AutoPayBloc>();
    autoPayBloc.add(AutoPayEvent.setPaymentDate(OptionInfo(name: localizations.selectedPaymentDate(localizations.dayOfMonth((day).toOrdinal())), value: day)));
    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return Column(
      children: [
        MASpacing.xxl(),
        MASpacing.xs(),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.title,
            textAlign: TextAlign.left,
            style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        MASpacing.xxl(),
        MASpacing.m(),
        Text(
          localizations.communityAcceptsPaymentsOn(localizations.dayOfMonth(userBloc.state.user.primarySite.propertySettings.autoPaySetMultipleDays.first.toOrdinal())),
          textAlign: TextAlign.left,
          style: textTheme.bodyMedium,
        ),
        MASpacing.xxl(),
        MASpacing.m(),
        SvgPicture.asset(
          'assets/day_$day.svg',
          fit: BoxFit.fill,
        ),
        MASpacing.xxl(),
        MASpacing.m(),
        Text(
          localizations.dayOfMonth(day.toOrdinal()),
          style: textTheme.labelMedium?.copyWith(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: colorPalette.textBrand,
          ),
        )
      ],
    );
  }
}
