import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resident_app/core/presentation/widgets/container_bottom_sheet.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/language_selection/application/bloc/language_preference_bloc.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';

class CheckInfoImage extends StatelessWidget {
  CheckInfoImage({
    super.key,
    required this.transformationController,
    required this.onImageDoubleTapDown,
    required this.onImageDoubleTap,
  });

  final TransformationController transformationController;
  final Function(TapDownDetails)? onImageDoubleTapDown;
  final Function()? onImageDoubleTap;
  final PaymentAccountsBloc _paymentAccountsBloc =
      locator<PaymentAccountsBloc>();
  final _localizations = locator<MaLocalizations>().I;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isDarkTheme = false;
    final isEnglish = locator<LanguagePreferenceBloc>().state.isEnglish;
    final isRBCPaymentAccount = _paymentAccountsBloc.state.isRBCPaymentAccount;
    return ContainerBottomSheet(
      widget: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          _localizations.routingAccountInfo,
          style: textTheme.titleLarge,
        ),
        GestureDetector(
          onDoubleTapDown: onImageDoubleTapDown,
          onDoubleTap: onImageDoubleTap,
          child: InteractiveViewer(
            transformationController: transformationController,
            minScale: 1.0,
            maxScale: 10.0,
            child: SvgPicture.asset(
              isRBCPaymentAccount
                  ? isEnglish
                      ? isDarkTheme
                          ? 'assets/check-image-rbc-dark-english.svg'
                          : 'assets/check-image-rbc-light-english.svg'
                      : isDarkTheme
                          ? 'assets/check-image-rbc-dark-spanish.svg'
                          : 'assets/check-image-rbc-light-spanish.svg'
                  : isEnglish
                      ? isDarkTheme
                          ? 'assets/check-image-dark-english.svg'
                          : 'assets/check-image-light-english.svg'
                      : isDarkTheme
                          ? 'assets/check-image-dark-spanish.svg'
                          : 'assets/check-image-light-spanish.svg',
            ),
          ),
        ),
      ]),
    );
  }
}
