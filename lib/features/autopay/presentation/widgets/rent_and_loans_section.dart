import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/payment_suspended_info_card.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay_settings/autopay_settings_bloc.dart';
import 'package:resident_app/features/autopay/data/models/autopay_option_types.dart';
import 'package:resident_app/features/autopay/domain/entities/autopay_settings.dart';
import 'package:resident_app/features/autopay/presentation/widgets/autopay_charge_card.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';
import 'package:resident_app/features/user/domain/entities/user.dart'
    show Loan, PrimarySite;

class RentAndLoansSection extends StatelessWidget {
  const RentAndLoansSection({super.key, required this.selectedSite});

  final PrimarySite selectedSite;
  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = locator<UserBloc>();
    final AutoPaySettingsBloc autopaySettingsBloc =
        locator<AutoPaySettingsBloc>();
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();

    if (selectedSite.resident.isOnStopPay) {
      return Column(
        children: [
          MASpacing.s(),
          MASpacing.xxs(),
          Divider(
            color: colorPalette.primary300,
          ),
          MASpacing.l(),
          PaymentSuspendedInfoCard()
        ],
      );
    }

    return BlocBuilder<AutoPaySettingsBloc, AutoPaySettingsState>(
      bloc: autopaySettingsBloc,
      builder: (context, state) {
        return Column(
          children: [
            ///
            ///Rent
            ///
            state.isRentEnabled
                ? AutopayChargeCard(
                    residentUserId: userBloc.state.user.residentUserId,
                    residentId: selectedSite.resident.residentId,
                    referenceId: rentReferenceId,
                    autopayDescription: localizations.rent,
                    autopayAmount: state.rent.autoPayOption.autoPayOptionType ==
                            AutoPayOptionTypes.fullAmount
                        ? "0"
                        : "\$${state.rent.payAmount.toStringAsFixed(2)}",
                    isEnable: state.rent.isActive,
                    autoPayOptionType:
                        state.rent.autoPayOption.autoPayOptionType,
                    payDay: state.rent.payDay,
                    autopayId: state.rent.id,
                  )
                : AutopayChargeCard.disabled(
                    residentUserId: userBloc.state.user.residentUserId,
                    residentId: userBloc.state.user.residentUserId,
                    referenceId: rentReferenceId,
                    autopayId: "0",
                  ),

            ///
            ///Loans
            ///
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: selectedSite.residentBalance.loans.length,
              itemBuilder: (BuildContext context, int index) {
                final Loan loan = selectedSite.residentBalance.loans[index];

                if (!state.hasLoans(loan.loanId.toString())) {
                  return AutopayChargeCard.disabled(
                    residentUserId: userBloc.state.user.residentUserId,
                    residentId: userBloc.state.user.residentUserId,
                    referenceId: loan.loanId.toString(),
                    autopayDescription: loan.loanApplicationTypeDescription,
                  );
                }

                final AutoPaySettings loanInfo =
                    state.autopaySettingsList.firstWhere(
                  (settings) => loan.loanId.toString() == settings.referenceId,
                );

                return AutopayChargeCard(
                  isEnable: loanInfo.isActive,
                  autoPayOptionType: loanInfo.autoPayOption.autoPayOptionType,
                  payDay: loanInfo.payDay,
                  autopayDescription: loan.loanApplicationTypeDescription,
                  autopayId: loanInfo.id,
                  referenceId: loan.loanId.toString(),
                  residentId: userBloc.state.user.residentUserId,
                  residentUserId: userBloc.state.user.residentUserId,
                  autopayAmount: loanInfo.payAmount.toString(),
                );
              },
            )
          ],
        );
      },
    );
  }
}
