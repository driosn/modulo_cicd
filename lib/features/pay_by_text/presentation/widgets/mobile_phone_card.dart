import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/formz_inputs/formz_inputs.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/review_card.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/review_label.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/review_text_button.dart';
import 'package:resident_app/features/pay_by_text/routes.dart';

class MobilePhoneCard extends StatelessWidget {
  MobilePhoneCard({
    super.key,
    required this.mobilePhone,
  });

  final _localizations = locator<MaLocalizations>().I;

  final PhoneInput mobilePhone;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();

    return ReviewCard(
      cardTitle: _localizations.mobilePhone,
      divider: false,
      svgIcon: 'assets/mobile-phone.svg',
      iconColor: colorPalette.iconBaseTextIcon,
      children: [
        ReviewLabel(mobilePhone.value),
        const SizedBox(
          height: 8,
        ),
        ReviewLabel(
          _localizations.dataChargesMayApply,
          italicStyle: true,
        ),
        const SizedBox(
          height: 8,
        ),
        ReviewTextButton(
          _localizations.changeTheMobilePhone,
          onPressed: () {
            context.goNamed(PayByTextRoutes.payByTextMobilePhoneNumber.name!);
          },
        ),
      ],
    );
  }
}
