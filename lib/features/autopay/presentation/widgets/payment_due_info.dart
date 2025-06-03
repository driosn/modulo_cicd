import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/shared/helpers/number_formatter_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class PaymentDueInfo extends StatelessWidget {
  PaymentDueInfo({
    super.key,
    required this.title,
    required this.amount,
    required this.dueDate,
    this.message,
  });

  final String title;
  final double amount;
  final DateTime dueDate;
  final String? message;

  final _colorPalette = locator<ColorPalette>();
  final _localizations = locator<MaLocalizations>().I;
  final _currencyFormat = locator<NumberFormatterHelper>().currencyFormat;

  Widget _amountInfo(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.labelMedium?.copyWith(
            color: _colorPalette.textBase,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '\$${_currencyFormat.format(amount)}',
          style: theme.textTheme.titleLarge?.copyWith(
            color: _colorPalette.textBase,
          ),
        )
      ],
    );
  }

  Widget _dueDate(BuildContext context) {
    final theme = Theme.of(context);

    Language selectedLanguage =
        context.read<UserPreferencesBloc>().state.selectedLanguage;
    final DateFormat dateFormat = selectedLanguage == Language.english
        ? DateFormat.yMMMd('en_US')
        : DateFormat.yMMMd('es_US');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            MAScaler(
              child: Icon(
                Icons.calendar_month_outlined,
                color: _colorPalette.iconBaseTextIcon,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Flexible(
              child: Text(
                _localizations.dueDate.toUpperCase(),
                style: theme.textTheme.labelMedium?.copyWith(
                  color: _colorPalette.textBase,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          dateFormat.format(dueDate),
          style: theme.textTheme.bodyMedium?.copyWith(
            color: _colorPalette.textBase,
          ),
        )
      ],
    );
  }

  Widget _extraMessage(
    BuildContext context,
    String message,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          message,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.transparent,
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          message,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: _colorPalette.textBase,
              ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: _amountInfo(context),
        ),
        Flexible(
          child: message != null
              ? _extraMessage(context, message!)
              : _dueDate(context),
        ),
      ],
    );
  }
}
