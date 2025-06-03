import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_checkbox.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/helpers/navigation_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/presentation/widgets/autopay_cancel_dialog.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/company_content/application/bloc/company_content_bloc.dart';
import 'package:resident_app/features/register_site/presentation/widgets/ma_bottom_safe_spacing.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class DebitAuthorizationView extends StatefulWidget {
  const DebitAuthorizationView({super.key});

  @override
  State<StatefulWidget> createState() => _DebitAuthorizationViewState();
}

class _DebitAuthorizationViewState extends State<DebitAuthorizationView>
    with WidgetsBindingObserver {
  late final AutoPayBloc autoPayBloc;
  late final CompanyContentBloc companyContentBloc;
  late final UserBloc userBloc;

  late AppLocalizations localizations;

  late bool youHaveAgreedTerms;

  @override
  void initState() {
    autoPayBloc = locator<AutoPayBloc>();
    companyContentBloc = locator<CompanyContentBloc>();
    localizations = locator<MaLocalizations>().I;
    userBloc = locator<UserBloc>();
    youHaveAgreedTerms = false;

    companyContentBloc.add(
      CompanyContentEvent.getAutoPayAuthorizationText(
        userBloc.state.user.companyId,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final scalerConfig = locator<ScalerConfig>();
    TextTheme textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        context.goNamed(AutopayRoutes.paymentDate.name!);
        autoPayBloc.add(const AutoPayEvent.setAllFieldsAreValidate());
      },
      child: BlocProvider.value(
        value: autoPayBloc,
        child: Scaffold(
            backgroundColor: colorPalette.surfaceContainerLowest,
            appBar: MAAppBar(
              iconTheme: IconThemeData(
                color: colorPalette.appBarTextIcon,
              ),
              maAppBarType: MAAppBarType.blue,
              bottom: const MABottomAppBar(),
              title: Text(
                localizations.setupAutoPay,
                style: textTheme.titleSmall!.copyWith(
                  color: colorPalette.appBarTextIcon,
                ),
              ),
            ),
            body: Container(
              decoration: BoxDecoration(
                color: colorPalette.surfaceContainerLowest,
              ),
              child: ListView(
                children: [
                  RelationalPadding(
                      child: Column(
                    children: [
                      MASpacing.xxl(),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          localizations.debitAuthorization,
                          textAlign: TextAlign.left,
                          style: textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      MASpacing.l(),
                      MASpacing.xxs(),
                      BlocBuilder<CompanyContentBloc, CompanyContentState>(
                        bloc: companyContentBloc,
                        builder: (context, state) {
                          return state.when(
                            initial: () => SizedBox(),
                            loading: () => Center(
                              child: MACircularProgressIndicator(),
                            ),
                            success: (
                              String oneTimePaymentAuthorizationText,
                              String autoPayAuthorizationText,
                            ) =>
                                Text(autoPayAuthorizationText),
                            error: () => Text(
                                localizations.debitAuthorizationDescription),
                          );
                        },
                      ),
                      MASpacing.s(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: scalerConfig.spacingL,
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                            color: colorPalette.primary100,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MAScaler(
                              child: SizedBox(
                                height: 40,
                                width: 40,
                                child: MACheckbox(
                                  isOn: youHaveAgreedTerms,
                                  onChanged: (value) {
                                    setState(() {
                                      youHaveAgreedTerms = !youHaveAgreedTerms;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Flexible(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    youHaveAgreedTerms = !youHaveAgreedTerms;
                                  });
                                },
                                child: Text(
                                  localizations.agreeTermsAuthorize,
                                  style: textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      MASpacing.xl(),
                      MASpacing.l(),
                      MAElevatedButton.secondary(
                          text: localizations.withdrawalCancelSetupButton
                              .toUpperCase(),
                          onPressed: () {
                            AutopayCancelDialog().showDialog(context);
                          }),
                      MASpacing.l(),
                      MAElevatedButton.primary(
                          text: localizations.continueT.toUpperCase(),
                          onPressed: () {
                            youHaveAgreedTerms
                                ? navigateLastViewAutopay(
                                    context,
                                    AutopayRoutes.autopayReview.name!,
                                  )
                                : _youHaveNotAgreedTermsDialog();
                          }),
                      MASpacing.bottomPadding(),
                      MABottomSafeSpacing(
                        context: context,
                      )
                    ],
                  ))
                ],
              ),
            )),
      ),
    );
  }

  _youHaveNotAgreedTermsDialog() {
    context.showMADialog(
      maDialogBody: MABasicDialogBody(
        title: localizations.authRequired,
        text: localizations.youHaveNotAgreedTerms,
      ),
      actions: [
        MADialogAction(
          label: localizations.ok.toUpperCase(),
          onPressed: () => context.pop(),
          style: MADialogActionStyle.elevated,
        ),
      ],
    );
  }
}