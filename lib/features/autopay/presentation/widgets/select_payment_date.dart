import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_selector_input_field.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/extensions/month_extensions.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date.dart';
import 'package:resident_app/features/autopay/presentation/widgets/select_payment_date_full_balance.dart';
import 'package:resident_app/features/user/user_feature.dart';

class SelectPaymentDate extends StatefulWidget {
  const SelectPaymentDate({
    super.key,
    required this.title,
    required this.isLessOrEqualThree,
  });

  final bool isLessOrEqualThree;
  final String title;

  @override
  State<SelectPaymentDate> createState() => _SelectPaymentDateState();
}

class _SelectPaymentDateState extends State<SelectPaymentDate> {
  late AutoPayBloc autoPayBloc;
  late UserBloc _userBloc;

  @override
  void initState() {
    autoPayBloc = locator<AutoPayBloc>();
    _userBloc = locator<UserBloc>();
    final localizations = locator<MaLocalizations>().I;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final textTheme = Theme.of(context).textTheme;
    final List<OptionInfo> options = [
      OptionInfo(
        name: localizations.selectedPaymentDate(localizations.first),
        value: 1,
      ),
      OptionInfo(
        name: localizations.selectedPaymentDate(localizations.second),
        value: 2,
      ),
      OptionInfo(
        name: localizations.selectedPaymentDate(localizations.third),
        value: 3,
      ),
    ];
    return Column(
      children: [
        MASpacing.xxl(),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.title,
            textAlign: TextAlign.left,
            style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        MASpacing.xl(),
        MASpacing.l(),
        Text(
          localizations.communityAcceptsPayments,
          textAlign: TextAlign.left,
          style: textTheme.bodyMedium,
        ),
        MASpacing.xl(),
        MASpacing.l(),
        widget.isLessOrEqualThree
            ? SelectPaymentDateFullBalance(
                options: options,
                autoPayBloc: autoPayBloc,
              )
            : BlocBuilder<UserBloc, UserState>(
                bloc: _userBloc,
                builder: (context, state) {
                  return MASelectorInputField<int>(
                    labelText:
                        localizations.selectPaymentDate.removeCapitalize(),
                    hintText: localizations.dayOfMonth(
                      state.user.primarySite.propertySettings
                          .autoPaySetMultipleDays.first
                          .toOrdinal(),
                    ),
                    initialValue: 2,
                    menuItems: state.user.primarySite.propertySettings
                        .autoPaySetMultipleDays
                        .map(
                          (item) => MASelectorInputItem<int>(
                            value: item,
                            label: localizations.dayOfMonth((item).toOrdinal()),
                          ),
                        )
                        .toList(),
                    onSelectedItem: (int value) {
                      autoPayBloc.add(AutoPayEvent.setPaymentDate(OptionInfo(
                          name: localizations.selectedPaymentDate(
                              localizations.dayOfMonth((value).toOrdinal())),
                          value: value)));
                    },
                  );
                },
              ),
      ],
    );
  }
}
