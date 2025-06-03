import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_selector_input_field.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_switch_card.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/tiles/ma_radio_list_tile.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date.dart';
import 'package:resident_app/features/user/user_feature.dart';

class DueDateReminderTabView extends StatefulWidget {
  const DueDateReminderTabView({super.key});

  @override
  State<StatefulWidget> createState() => DueDateReminderTabViewState();
}

class DueDateReminderTabViewState extends State<DueDateReminderTabView>
    with AutomaticKeepAliveClientMixin {
  late bool _isReminders = false;
  late OptionInfo? _optionInfoChosen;
  late List<OptionInfo> _options;

  @override
  void initState() {
    final user = locator<UserBloc>().state.user;

    _options = [
      OptionInfo(
        name: 'Email\n\n${user.residentUserEmail}',
        value: 2,
      ),
      // TODO: Update with real phone
      const OptionInfo(
        name: 'Text message\n\n(003) 403-1234',
        value: 4,
      ),
    ];
    _optionInfoChosen = _options.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final textTheme = Theme.of(context).textTheme;
    final localizations = locator<MaLocalizations>().I;
    return SingleChildScrollView(
      child: Column(
        children: [
          MASpacing.xxl(),
          MASwitchCard(
            isOn: _isReminders,
            text: _isReminders
                ? localizations.remindersOn
                : localizations.remindersOff,
            onChanged: (bool value) {
              setState(() {
                _isReminders = value;
              });
            },
          ),
          MASpacing.l(),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              localizations.dueDateReminder,
              style: textTheme.bodyMedium?.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          MASpacing.xl(),
          MASpacing.xxs(),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              localizations.yourRemindersGo,
              style: textTheme.bodyMedium,
            ),
          ),
          MASpacing.xl(),
          MASpacing.xxs(),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _options.length,
            itemBuilder: (context, index) {
              final op = _options[index];
              bool isSelected = _optionInfoChosen == op;
              return MARadioListTile<bool>(
                crossAxisAlignment: CrossAxisAlignment.start,
                value: isSelected,
                groupValue: true,
                title: Text(
                  op.name,
                  style: textTheme.bodyMedium,
                ),
                onChanged: (value) {
                  if (!isSelected) {
                    setState(() {
                      _optionInfoChosen = op;
                    });
                  }
                },
              );
            },
          ),
          MASpacing.l(),
          MASpacing.xxs(),
          MASelectorInputField<String>(
            labelText: localizations.daysBeforeDueDate,
            hintText: localizations.daysBeforeDueDate,
            initialValue: "7 days",
            menuItems: [
              "1 day",
              "2 days",
              "3 days",
              "4 days",
              "5 days",
              "6 days",
              "7 days",
            ]
                .map(
                  (item) => MASelectorInputItem<String>(
                    value: item,
                    label: item,
                  ),
                )
                .toList(),
            onSelectedItem: (String value) {},
          ),
          MASpacing.l(),
          MASpacing.xxs(),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
