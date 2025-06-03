import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/tiles/ma_radio_list_tile.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay_settings/autopay_settings_bloc.dart';
import 'package:resident_app/features/autopay/presentation/enums/withdrawal_amount_option.dart';
import 'package:resident_app/features/autopay/presentation/widgets/autopay_cancel_dialog.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class WithdrawalOptions extends StatefulWidget {
  const WithdrawalOptions({super.key, this.updateAction = false});
  final bool updateAction;

  @override
  State<WithdrawalOptions> createState() => WithdrawalOptionsState();
}

class WithdrawalOptionsState extends State<WithdrawalOptions> {
  late final AppLocalizations localizations;
  late final UserBloc userBloc;
  late final SiteBloc siteBloc;
  late final AutoPayBloc autoPayBloc;
  late final AutoPaySettingsBloc autoPaySettingsBloc;
  late final ScalerConfig scalerConfig;

  bool canNavigate = false;

  @override
  void initState() {
    localizations = locator<MaLocalizations>().I;
    userBloc = locator<UserBloc>();
    siteBloc = locator<SiteBloc>();
    autoPayBloc = locator<AutoPayBloc>();
    autoPaySettingsBloc = locator<AutoPaySettingsBloc>();
    scalerConfig = locator<ScalerConfig>();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    autoPayBloc.add(
      AutoPayEvent.setWithdrawalAmount(userBloc
          .state.user.primarySite.residentBalance.totalBalance
          .toString()),
    );
    autoPayBloc.add(AutoPayEvent.setWithdrawalAmountOption(
      WithdrawalAmountOption.fullAmount,
    ));

    final theme = Theme.of(context);

    return BlocBuilder<AutoPayBloc, AutoPayState>(
      bloc: autoPayBloc,
      builder: (context, state) {
        return RelationalPadding(
          child: Column(
            children: [
              MASpacing.xxs(),
              MASpacing.l(),
              Text(
                localizations.withdrawalMountQuestionLabel,
                style: theme.textTheme.bodyMedium,
              ),
              MASpacing.xl(),
              MASpacing.s(),
              MARadioListTile<WithdrawalAmountOption>(
                value: WithdrawalAmountOption.fullAmount,
                groupValue: state.withdrawalAmountOption,
                title: Text(
                  localizations.withdrawalFullAmountOption,
                  style: theme.textTheme.bodyMedium,
                ),
                onChanged: (value) {
                  if (value != null) {
                    autoPayBloc.add(
                      AutoPayEvent.setWithdrawalAmount(userBloc
                          .state.user.primarySite.residentBalance.totalBalance
                          .toString()),
                    );
                    autoPayBloc.add(
                      AutoPayEvent.setWithdrawalAmountOption(
                        value,
                      ),
                    );
                  }
                },
              ),
              MARadioListTile<WithdrawalAmountOption>(
                value: WithdrawalAmountOption.fullAmountWithNoExceed,
                groupValue: state.withdrawalAmountOption,
                crossAxisAlignment: CrossAxisAlignment.start,
                title: Column(
                  children: [
                    Text(
                      localizations.withdrawalFullAmountWithConditionOption,
                      style: theme.textTheme.bodyMedium,
                    ),
                    if (state.withdrawalAmountOption ==
                        WithdrawalAmountOption.fullAmountWithNoExceed)
                      Container(
                        margin: EdgeInsets.only(
                          top: scalerConfig.spacingXS,
                        ),
                        child: MATextFormField.dollar(
                          hintText: "\$0",
                          onChanged: (value) {
                            autoPayBloc.add(
                              AutoPayEvent.setWithdrawalAmount(value),
                            );
                          },
                          label: localizations.withdrawalDoNotExceedLabel,
                          hasError: state.withdrawalAmountErrorMessage != null,
                          errorText: state.withdrawalAmountErrorMessage,
                        ),
                      ),
                  ],
                ),
                onChanged: (value) {
                  autoPayBloc.add(
                    AutoPayEvent.setWithdrawalAmount(""),
                  );
                  if (value != null) {
                    autoPayBloc.add(
                      AutoPayEvent.setWithdrawalAmountOption(
                        value,
                      ),
                    );
                  }
                },
              ),
              MARadioListTile<WithdrawalAmountOption>(
                value: WithdrawalAmountOption.fixedAmount,
                groupValue: state.withdrawalAmountOption,
                crossAxisAlignment: state.withdrawalAmountOption ==
                        WithdrawalAmountOption.fixedAmount
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      localizations.withdrawalFixedAmountOption,
                      style: theme.textTheme.bodyMedium,
                    ),
                    if (state.withdrawalAmountOption ==
                        WithdrawalAmountOption.fixedAmount)
                      Text(
                        '\n${localizations.withdrawalFixedAmountFirstPart}\n\n${localizations.withdrawalFixedAmountSecondPart}\n',
                        style: theme.textTheme.bodyMedium,
                      ),
                    if (state.withdrawalAmountOption ==
                        WithdrawalAmountOption.fixedAmount)
                      Container(
                        margin: EdgeInsets.only(
                          top: scalerConfig.spacingXS,
                        ),
                        child: MATextFormField.dollar(
                          onChanged: (value) {
                            autoPayBloc.add(
                              AutoPayEvent.setWithdrawalAmount(value),
                            );
                          },
                          label: localizations.withdrawalExactlyLabel,
                          hasError: state.withdrawalAmountErrorMessage != null,
                          errorText: state.withdrawalAmountErrorMessage,
                        ),
                      ),
                  ],
                ),
                onChanged: (value) {
                  autoPayBloc.add(
                    AutoPayEvent.setWithdrawalAmount(""),
                  );
                  if (value != null) {
                    autoPayBloc.add(
                      AutoPayEvent.setWithdrawalAmountOption(
                        value,
                      ),
                    );
                  }
                },
              ),
              MASpacing.l(),
              MAElevatedButton.secondary(
                text: localizations.cancelSetup,
                onPressed: () {
                  if (widget.updateAction) {
                    context.goNamed(AutopayRoutes.autopayLandingView.name!);
                  } else {
                    const AutopayCancelDialog().showDialog(context);
                  }
                },
              ),
              MASpacing.s(),
              MASpacing.xxs(),
              MAElevatedButton.primary(
                onPressed: () async {
                  autoPayBloc
                      .add(const AutoPayEvent.validateWithdrawalAmountForm());
                  await Future.delayed(
                    Duration(milliseconds: 500),
                  );
                  canNavigate = (locator<AutoPayBloc>()
                          .state
                          .withdrawalAmountErrorMessage ==
                      null);
                  if (context.mounted) {
                    if (widget.updateAction && (canNavigate)) {
                      autoPaySettingsBloc.add(
                        AutoPaySettingsEvent.update(
                          residentId:
                              siteBloc.state.selectedSite.resident.residentId,
                          autopayId: state.autopayId!,
                          paymentDate: state.paymentDate,
                          withdrawalAmount: state.withdrawalAmount,
                          withdrawalAmountOption: state.withdrawalAmountOption,
                          referenceId: state.referenceId,
                          residentUserId: state.residentUserId,
                        ),
                      );
                      context.goNamed(AutopayRoutes.autopayLandingView.name!);
                    } else {
                      if (canNavigate) {
                        context.goNamed(AutopayRoutes.paymentDate.name!);
                      }
                    }
                  }
                },
                text: widget.updateAction
                    ? localizations.saveButton
                    : localizations.nextButton,
              ),
              MASpacing.xxl(),
              MASpacing.xs(),
            ],
          ),
        );
      },
    );
  }
}
