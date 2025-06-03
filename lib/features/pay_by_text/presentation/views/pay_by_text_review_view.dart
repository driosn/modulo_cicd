import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/buttons.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_address_card.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/bank_account_card.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/expense_card.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/mobile_phone_card.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/pay_by_text_cancel_dialog.dart';
import 'package:resident_app/features/pay_by_text/routes.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class PayByTextReviewView extends StatefulWidget {
  const PayByTextReviewView({super.key});

  @override
  State<PayByTextReviewView> createState() => _PayByTextReviewViewState();
}

class _PayByTextReviewViewState extends State<PayByTextReviewView> {
  //
  // Localizations
  //
  late AppLocalizations _localizations;

  late PayByTextBloc _payByTextBloc;
  late UserBloc _userBloc;
  late SiteBloc _siteBloc;

  @override
  void initState() {
    _userBloc = locator<UserBloc>();
    _siteBloc = locator<SiteBloc>();
    _payByTextBloc = locator<PayByTextBloc>();
    _localizations = locator<MaLocalizations>().I;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    String accountNumber = _payByTextBloc.state.accountNumber.value;
    final colorPalette = locator<ColorPalette>();
    return PopScope(
      canPop: false,
      //TODO: Remove deprecated method
      onPopInvoked: (didPop) {
        context.goNamed(PayByTextRoutes.debitAutorization.name!);
      },
      child: Scaffold(
        backgroundColor: colorPalette.surfaceContainerLowest,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65.0),
          child: MAAppBar(
            iconTheme: IconThemeData(
              color: colorPalette.appBarTextIcon,
            ),
            bottom: const MABottomAppBar(),
            title: Text(
              _localizations.setupPayByText,
              style: textTheme.titleSmall!.copyWith(
                color: colorPalette.appBarTextIcon,
              ),
            ),
            maAppBarType: MAAppBarType.blue,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: colorPalette.surfaceContainerLowest,
          ),
          child: BlocBuilder<PayByTextBloc, PayByTextState>(
            bloc: _payByTextBloc,
            builder: (context, state) {
              return ListView(
                children: [
                  RelationalPadding(
                    child: Column(
                      children: [
                        const SizedBox(height: 24),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            _localizations.setupPayByText,
                            textAlign: TextAlign.left,
                            style: textTheme.titleLarge,
                          ),
                        ),
                        const RelationalSpace(),
                        const SizedBox(height: 28),
                        Text(
                          _localizations.letsRiviewYourPayByText,
                          textAlign: TextAlign.left,
                          style: textTheme.bodyMedium,
                        ),
                        const RelationalSpace(),
                        const SizedBox(height: 16),
                        SiteAddressCard(
                          site: _userBloc.state.user.primarySite,
                        ),
                        const RelationalSpace(),
                        ExpenseCard(
                          expenseToBePaid: "Rent",
                        ),
                        const RelationalSpace(),
                        BankAccountCard(
                            payByTextBloc: _payByTextBloc,
                            accountNumber: accountNumber),
                        const RelationalSpace(),
                        MobilePhoneCard(
                          mobilePhone: state.mobilePhone,
                        ),
                        const RelationalSpace(),
                      ],
                    ),
                  ),
                  RelationalPadding(
                    child: Column(
                      children: [
                        MAElevatedButton.secondary(
                          text: _localizations.cancelSetup.toUpperCase(),
                          onPressed: () {
                            const PayByTextCancelDialog().showDialog(context);
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        MAElevatedButton.primary(
                          text: _localizations.startPayByText.toUpperCase(),
                          onPressed: () {
                            _payByTextBloc.add(
                              const PayByTextEvent.setSetupIsCompleted(true),
                            );
                            context.goNamed(PayByTextRoutes
                                .payByTextScheduledConfirmation.name!);
                          },
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
