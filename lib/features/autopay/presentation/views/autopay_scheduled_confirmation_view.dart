import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/constants/illustrations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/fields/ma_text_field.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/helpers/payment_date_helper.dart';
import 'package:resident_app/core/shared/helpers/svg_color_mapped.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/register_site/presentation/widgets/ma_bottom_safe_spacing.dart';
import 'package:resident_app/features/user/user_feature.dart';

class AutoPayScheduledConfirmationView extends StatefulWidget {
  const AutoPayScheduledConfirmationView({super.key});

  @override
  State<StatefulWidget> createState() =>
      _AutoPayScheduledConfirmationViewState();
}

class _AutoPayScheduledConfirmationViewState
    extends State<AutoPayScheduledConfirmationView> {
  final AutoPayBloc autoPayBloc = locator<AutoPayBloc>();
  final UserBloc userBloc = locator<UserBloc>();

  late PaymentDateHelper paymentDate;

  final colorPalette = locator<ColorPalette>();
  final localizations = locator<MaLocalizations>().I;

  @override
  void initState() {
    paymentDate = PaymentDateHelper(autoPayBloc.state.paymentDate.value);
    autoPayBloc.add(const AutoPayEvent.setName(""));
    autoPayBloc.add(const AutoPayEvent.setRoutingNumber(""));
    autoPayBloc.add(const AutoPayEvent.setAccountNumber(""));
    autoPayBloc.add(const AutoPayEvent.setConfirmAccountNumber(""));
    autoPayBloc.add(const AutoPayEvent.setAllFieldsAreValidate());

    _getUser();
    super.initState();
  }

  void _getUser() {
    userBloc.add(UserEvent.getUser());
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      drawer: MADrawer(),
      appBar: MAAppBar(
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        bottom: const MABottomAppBar(),
        maAppBarType: MAAppBarType.blue,
        title: Text(
          localizations.setupAutoPay,
        ),
      ),
      body: VerticalRhythm(
        topChildren: [
          Container(
            color: colorPalette.surfaceContainerLowest,
            child: RelationalPadding(
              child: Column(
                children: [
                  MASpacing.xxl(),
                  Align(
                    alignment: Alignment.center,
                    child: MATextField(
                      text: localizations.autoPayStarted,
                      textStyle: textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MASpacing.xxl(),
                  Align(
                    alignment: Alignment.center,
                    child: MATextField(
                      text:
                          //TODO: fix day to start autopay, currently harcoded to 1
                          "${localizations.begins} ${localizations.nMonth(paymentDate.paymentMonth)} ${autoPayBloc.state.paymentDate.value}, ${paymentDate.paymentYear}",
                      textStyle: textTheme.titleLarge?.copyWith(
                        fontSize: 20.0,
                        color: colorPalette.textBrand,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MASpacing.xl(),
                  MASpacing.xl(),
                  SvgPicture(
                    SvgAssetLoader(
                      Illustrations.whiteLabelTaskComplete,
                      colorMapper: SvgColorMapper(
                        fromColor: colorPlaceHolder,
                        toColor: colorPalette.buttonPrimaryBg,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
        bottomChildren: [
          Container(
            color: colorPalette.surfaceContainerLowest,
            child: RelationalPadding(
              child: Column(
                children: [
                  MAElevatedButton.primary(
                      text: localizations.done.toUpperCase(),
                      onPressed: () {
                        context.goNamed(AutopayRoutes.autopayLandingView.name!);
                      }),
                  MASpacing.bottomPadding(),
                  MABottomSafeSpacing(
                    context: context,
                  ),
                ],
              ),
            ),
          )
        ],
        middleColor: colorPalette.surfaceContainerLowest,
        middleHeight: 80,
      ),
    );
  }
}
