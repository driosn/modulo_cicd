import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_with_hero_icon_and_list_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_checkbox.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/pay_by_text/routes.dart';

class PayByTextDebitAuthorizationView extends StatefulWidget {
  const PayByTextDebitAuthorizationView({super.key});

  @override
  State<StatefulWidget> createState() =>
      _PayByTextDebitAuthorizationViewState();
}

class _PayByTextDebitAuthorizationViewState
    extends State<PayByTextDebitAuthorizationView> with WidgetsBindingObserver {
  late PayByTextBloc payByTextBloc;

  late AppLocalizations localizations;

  late bool youHaveAgreedTerms;

  @override
  void initState() {
    payByTextBloc = locator<PayByTextBloc>();
    localizations = locator<MaLocalizations>().I;
    youHaveAgreedTerms = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        context.goNamed(PayByTextRoutes.payByTextMobilePhoneNumber.name!);
        payByTextBloc.add(const PayByTextEvent.setAllFieldsAreValidate());
      },
      child: BlocProvider.value(
        value: payByTextBloc,
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
            body: Container(
              decoration: BoxDecoration(
                color: colorPalette.surfaceContainerLowest,
              ),
              child: ListView(
                children: [
                  RelationalPadding(
                      child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const RelationalSpace(),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          localizations.payByTextAuthorization,
                          textAlign: TextAlign.left,
                          style: textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const RelationalSpace(),
                      Text(
                        payByTextDebitAuthorization,
                        textAlign: TextAlign.left,
                        style: textTheme.bodyMedium,
                      ),
                      const RelationalSpace(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
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
                                  localizations.agreeTermsAuthorizePayByText,
                                  style: textTheme.bodyMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const RelationalSpace(),
                      const SizedBox(
                        height: 30,
                      ),
                      MAElevatedButton.secondary(
                          text: localizations.withdrawalCancelSetupButton
                              .toUpperCase(),
                          onPressed: () {
                            _cancelSetUp(textTheme);
                          }),
                      const SizedBox(
                        height: 10,
                      ),
                      MAElevatedButton.primary(
                          text: localizations.continueT.toUpperCase(),
                          onPressed: () {
                            youHaveAgreedTerms
                                ? context.goNamed(
                                    PayByTextRoutes.payByTextReview.name!)
                                : _youHaveNotAgreedTermsDialog();
                          }),
                      const RelationalSpace(),
                      const SizedBox(
                        height: 20,
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
        text: localizations.youHaveNotAgreedTermsPayByText,
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

  _cancelSetUp(TextTheme textTheme) {
    final colorPalette = locator<ColorPalette>();
    context.showMADialog(
      maDialogBody: MAWithHeroIconAndListDialogBody(
          title: localizations.authDeclined,
          text: localizations.provideReasonAuthDeclinedPayByText,
          items: [
            MADialogListItem(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: colorPalette.surfaceContainerLow,
                  shape: BoxShape.circle,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    textAlign: TextAlign.center,
                    "A",
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              label: "Reason 1",
              value: "Reason 1",
            ),
            MADialogListItem(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: colorPalette.surfaceContainerLow,
                  shape: BoxShape.circle,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    textAlign: TextAlign.center,
                    "B",
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              label: "Reason 2",
              value: "Reason 2",
            ),
          ]),
      actions: [
        MADialogAction(
          label: localizations.enter.toUpperCase(),
          onPressed: () => context.pop(),
          style: MADialogActionStyle.elevated,
        ),
        MADialogAction(
          label: localizations.skip.toUpperCase(),
          onPressed: () => context.pop(),
          style: MADialogActionStyle.text,
        )
      ],
    );
  }
}
