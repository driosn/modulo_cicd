part of 'setup_payment_view.dart';

class _AuthorizeYourPayment extends StatelessWidget {
  _AuthorizeYourPayment({
    required this.authorizedPaymentNotifier,
  });

  final ValueNotifier<bool> authorizedPaymentNotifier;

  final _localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _localizations.authorizeYourPaymentTitle,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
              ),
              child: Text(
                '*',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: colorPalette.warningWarning,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              _localizations.required,
              style: theme.textTheme.titleSmall?.copyWith(
                height: 0,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => authorizedPaymentNotifier.value =
                  !authorizedPaymentNotifier.value,
              child: ValueListenableBuilder<bool>(
                valueListenable: authorizedPaymentNotifier,
                builder: (context, authorizedPayment, child) {
                  return Transform.scale(
                    scale: 1,
                    child: authorizedPayment
                        ? Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              color: colorPalette.primaryBase,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: colorPalette.surface,
                              ),
                            ),
                          )
                        : Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              color: colorPalette.surfaceContainerLowest,
                              border: Border.all(
                                color: locator<ColorPalette>()
                                    .inputFieldRadioUnselected,
                                width: 2,
                              ),
                            ),
                          ),
                  );
                },
              ),
            ),
            Flexible(
              child: Text(
                _localizations.authorizationDescription,
                style: theme.textTheme.bodyMedium,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: Theme(
            data: ThemeData(
              bottomSheetTheme: const BottomSheetThemeData(
                backgroundColor: Colors.red,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  barrierColor: colorPalette.secondary100.withOpacity(0.75),
                  isScrollControlled: true,
                  builder: (context) {
                    return const FullAgreementBottomSheet();
                  },
                );
              },
              child: Text(
                _localizations.fullTermsOfAgreement,
                textAlign: TextAlign.center,
                style: theme.textTheme.hyperlink.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  shadows: [
                    Shadow(
                      color: colorPalette.textLink,
                      offset: const Offset(0, -4),
                    )
                  ],
                  decorationColor: colorPalette.textLink,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
