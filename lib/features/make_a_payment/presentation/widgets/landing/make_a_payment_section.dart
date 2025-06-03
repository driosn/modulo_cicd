import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_html_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_with_hero_icon_and_option_list_dialog_body.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/presentation/views/setup_payment_view.dart';
import 'package:resident_app/features/make_a_payment/application/bloc/make_a_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/application/bloc/make_a_payment_navigation_bloc.dart';
import 'package:resident_app/features/make_a_payment/domain/entities/payment_option.dart';
import 'package:resident_app/features/make_a_payment/presentation/routes.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class MakeAPaymentSection extends StatefulWidget {
  const MakeAPaymentSection({
    super.key,
    required this.makeAPaymentBloc,
  });

  final MakeAPaymentBloc makeAPaymentBloc;

  @override
  State<MakeAPaymentSection> createState() => _MakeAPaymentSectionState();
}

class _MakeAPaymentSectionState extends State<MakeAPaymentSection> {
  late PaymentOption selectedPaymentOption;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final userBloc = locator<UserBloc>();
    final user = userBloc.state.user;
    final makeAPaymentNavigationBloc = locator<MakeAPaymentNavigationBloc>();

    return MAElevatedButton(
      onPressed: () {
        context.showMADialog(
            maDialogBody: MABasicDialogHtmlBody(
                title: localizations.youAreEnrolledInEft,
                text: localizations.makeAPaymentEftDescription),
            actions: [
              MADialogAction(
                label: localizations.makeAPayment.toUpperCase(),
                onPressed: () => context.pushNamed(
                  MakeAPaymentRoutes.makeAPaymentSetupPayment.name!,
                  extra: SetupPaymentParams(
                    paymentOption: selectedPaymentOption,
                    referenceTitle: userBloc.state.user.primarySite.siteName,
                    residentId:
                        userBloc.state.user.primarySite.resident.residentId,
                    residentUserId: user.residentUserId,
                    makeAPaymentBloc: widget.makeAPaymentBloc,
                  ),
                ),
                style: MADialogActionStyle.elevated,
              ),
              MADialogAction(
                label: localizations.cancelButton,
                onPressed: () => context.pop(),
                style: MADialogActionStyle.text,
              ),
            ]);
        final allPossiblePaymentTypes = <PaymentOption>[];

        if (widget.makeAPaymentBloc.state.totalRentPayment != null) {
          allPossiblePaymentTypes.add(
            widget.makeAPaymentBloc.state.totalRentPayment!,
          );

          selectedPaymentOption = allPossiblePaymentTypes.first;
        }

        if (widget.makeAPaymentBloc.state.hasLoans) {
          allPossiblePaymentTypes
              .addAll(widget.makeAPaymentBloc.state.loanPayments);

          context.showMADialog(
            maDialogBody: MAWithHeroIconAndOptionListDialogBody<PaymentOption>(
              title: localizations.selectExpense,
              items: allPossiblePaymentTypes
                  .map(
                    (payment) => MADialogOptionListItem(
                      value: payment,
                      label: payment.label,
                    ),
                  )
                  .toList(),
              isLineBetweenItems: false,
              onChanged: (value) {
                selectedPaymentOption = value;
              },
            ),
            actions: [
              MADialogAction(
                label: localizations.makePayment,
                onPressed: () {
                  context.pop();
                  if (hasEftEnrolled()) {
                    navigateEftEnrolled(
                      context,
                      SetupPaymentParams(
                        paymentOption: selectedPaymentOption,
                        referenceTitle:
                            userBloc.state.user.primarySite.siteName,
                        residentId:
                            userBloc.state.user.primarySite.resident.residentId,
                        residentUserId: user.residentUserId,
                        makeAPaymentBloc: widget.makeAPaymentBloc,
                      ),
                    );
                    return;
                  }

                  makeAPaymentNavigationBloc.add(
                    MakeAPaymentNavigationEvent.setNavigatedFromSummary(
                      isNavigatedFromSummary: false,
                    ),
                  );
                  context.pushNamed(
                    MakeAPaymentRoutes.makeAPaymentSetupPayment.name!,
                    extra: SetupPaymentParams(
                      paymentOption: selectedPaymentOption,
                      referenceTitle: userBloc.state.user.primarySite.siteName,
                      residentId:
                          userBloc.state.user.primarySite.resident.residentId,
                      residentUserId: user.residentUserId,
                      makeAPaymentBloc: widget.makeAPaymentBloc,
                    ),
                  );
                },
                style: MADialogActionStyle.elevated,
              ),
              MADialogAction(
                label: localizations.cancelButton,
                onPressed: () => context.pop(),
                style: MADialogActionStyle.text,
              ),
            ],
          );
          return;
        }

        makeAPaymentNavigationBloc.add(
          MakeAPaymentNavigationEvent.setNavigatedFromSummary(
            isNavigatedFromSummary: false,
          ),
        );
      },
      child: Text(
        localizations.makeAPayment.toUpperCase(),
      ),
    );
  }

  bool hasEftEnrolled() => locator<UserBloc>()
      .state
      .user
      .primarySite
      .residentBalance
      .isEftConfigured;

  void navigateEftEnrolled(
          BuildContext context, SetupPaymentParams setupPaymentParams) =>
      context.pushNamed(
        MakeAPaymentRoutes.makeAPaymentEFTEnrolled.name!,
        extra: setupPaymentParams,
      );
}
