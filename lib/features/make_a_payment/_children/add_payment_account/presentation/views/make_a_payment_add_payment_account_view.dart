import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/bloc/new_payment_account_form_bloc.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/new_payment_account_form.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/ma_snackbar.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/make_a_payment/presentation/routes.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/payment_account/application/bloc/property_payment_settings_bloc.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class MakeAPaymentAddPaymentAccountView extends StatefulWidget {
  const MakeAPaymentAddPaymentAccountView({
    super.key,
  });

  @override
  State<MakeAPaymentAddPaymentAccountView> createState() =>
      _MakeAPaymentAddPaymentAccountViewState();
}

class _MakeAPaymentAddPaymentAccountViewState
    extends State<MakeAPaymentAddPaymentAccountView> {
  late NewPaymentAccountFormBloc _newPaymentAccountFormBloc;
  late PaymentAccountsBloc _paymentAccountsBloc;
  late UserBloc _userBloc;
  late SiteBloc _siteBloc;
  late AppLocalizations localizations;
  late bool isRBCPaymentAccount;

  @override
  void initState() {
    _newPaymentAccountFormBloc = locator<NewPaymentAccountFormBloc>();
    _paymentAccountsBloc = locator<PaymentAccountsBloc>();
    _userBloc = locator<UserBloc>();
    _siteBloc = locator<SiteBloc>();
    localizations = locator<MaLocalizations>().I;
    isRBCPaymentAccount =
        locator<PropertyPaymentSettingsBloc>().state.isRBCPaymentAccount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return BlocConsumer<PaymentAccountsBloc, PaymentAccountsState>(
      bloc: _paymentAccountsBloc,
      listener: (context, state) {
        state.createStatus.whenOrNull(
          success: () {
            context.pushNamed(
              MakeAPaymentRoutes.makeAPaymentAccountAdded.name!,
            );
            ScaffoldMessenger.of(context).showSnackBar(
              MASnackBar.success(
                message: localizations.newPaymentAccountSaved,
              ),
            );
          },
          failure: (error) {
            error.maybeWhen(
              badRequest: (error) {
                _newPaymentAccountFormBloc.add(
                  NewPaymentAccountFormEvent.setRoutingNumberError(
                    message: localizations.invalidNumber,
                  ),
                );
              },
              orElse: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  MASnackBar.failure(
                    message: error.message,
                  ),
                );
              },
            );
          },
        );
      },
      builder: (BuildContext context, PaymentAccountsState state) {
        return PopScope(
          canPop: false,
          child: Scaffold(
            backgroundColor: colorPalette.surfaceContainerLowest,
            appBar: MAAppBar(
              iconTheme: IconThemeData(
                color: colorPalette.appBarTextIcon,
              ),
              bottom: const MABottomAppBar(),
              maAppBarType: MAAppBarType.blue,
              title: Text(
                localizations.paymentAccountSetUp,
              ),
              leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            body: state.createStatus.maybeWhen(
              processing: () {
                return const Center(
                  child: MACircularProgressIndicator(),
                );
              },
              orElse: () {
                return NewPaymentAccountForm(
                  isCreate: true,
                  newPaymentAccountFormBloc: _newPaymentAccountFormBloc,
                  onCancelPressed: () {},
                  onAccountSaved: (account) {
                    _paymentAccountsBloc.add(
                      PaymentAccountsEvent.create(
                        paymentAccount: account,
                        residentId:
                            _siteBloc.state.selectedSite.resident.residentId,
                        residentUserId: _userBloc.state.user.residentUserId,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
