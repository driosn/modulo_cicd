import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/data/models/account_type.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/user_payment_account_tile.dart';
import 'package:resident_app/features/pay_by_text/routes.dart';
import 'package:resident_app/features/payment_account/enums/payment_account.dart';
import 'package:resident_app/features/payment_account/presentation/widgets/payment_account_info_card.dart';

class PayByTextPaymentAccountCardView extends StatefulWidget {
  const PayByTextPaymentAccountCardView({
    super.key,
  });

  @override
  State<StatefulWidget> createState() =>
      _PayByTextPaymentAccountCardViewState();
}

class _PayByTextPaymentAccountCardViewState
    extends State<PayByTextPaymentAccountCardView> {
  late AppLocalizations localizations;

  late PayByTextBloc _payByTextBloc;

  @override
  void initState() {
    _payByTextBloc = locator<PayByTextBloc>();
    localizations = locator<MaLocalizations>().I;
    //TODO These events are added temporally while it is defined how to retrieve the user payment account
    _payByTextBloc.add(const PayByTextEvent.setAccountType(
        AccountType(name: "Checking", value: "CV")));
    _payByTextBloc.add(const PayByTextEvent.setName("Jane Done"));
    _payByTextBloc.add(const PayByTextEvent.setRoutingNumber("123456789"));
    _payByTextBloc.add(const PayByTextEvent.setTransitNumber("12345"));
    _payByTextBloc.add(const PayByTextEvent.setInstitutionNumber("123"));
    _payByTextBloc.add(const PayByTextEvent.setAccountNumber("32144017654321"));
    _payByTextBloc
        .add(const PayByTextEvent.setConfirmAccountNumber("32144017654321"));
    super.initState();
  }

  final colorPalette = locator<ColorPalette>();
  final autopayBloc = locator<AutoPayBloc>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        context.goNamed(PayByTextRoutes.payByTextSetUp.name!);
      },
      child: Scaffold(
        backgroundColor: colorPalette.surfaceContainerLowest,
        appBar: MAAppBar(
          iconTheme: IconThemeData(
            color: colorPalette.appBarTextIcon,
          ),
          maAppBarType: MAAppBarType.blue,
          bottom: const MABottomAppBar(),
          title: Text(
            localizations.setupPayByText,
            style: textTheme.titleSmall!.copyWith(
              color: colorPalette.appBarTextIcon,
            ),
          ),
        ),
        body: VerticalRhythm(
          topChildren: [
            RelationalPadding(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const RelationalSpace(),
                  UserPaymentAccountTile(
                    billName: autopayBloc.state.paymentType,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  PaymentAccountInfoCard(
                    bankAccountType: BankAccountType.checking,
                    nameBankAccount: "Jane Doe",
                    numberBankAccount: "32144017654321",
                    editIcon: true,
                  ),
                ],
              ),
            )
          ],
          bottomChildren: [
            const SizedBox(
              height: 16,
            ),
            //TODO: Implement with the new payment account widget
            // RelationalPadding(
            //   child: BodySetUpNotCompleted(
            //     isNewPaymentAccount: false,
            //   ),
            // )
          ],
          middleColor: colorPalette.surfaceContainerLowest,
          middleHeight: 80,
        ),
      ),
    );
  }
}
