part of 'setup_payment_view.dart';

class _PaymentDisplayFlags {
  const _PaymentDisplayFlags({
    required this.displayBankAccount,
    required this.displayCreditCard,
    required this.displayMobileWallet,
  });

  final bool displayBankAccount;
  final bool displayCreditCard;
  final bool displayMobileWallet;
}

class _PaymentMethod extends StatefulWidget {
  const _PaymentMethod({
    required this.makeAPaymentBloc,
    required this.paymentAccountsBloc,
    required this.setupPaymentBloc,
    required this.displayFlags,
  });

  final MakeAPaymentBloc makeAPaymentBloc;
  final PaymentAccountsBloc paymentAccountsBloc;
  final SetupPaymentBloc setupPaymentBloc;
  final _PaymentDisplayFlags displayFlags;

  @override
  State<_PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<_PaymentMethod> {
  final _localizations = locator<MaLocalizations>().I;
  late ValueNotifier<NewPaymentAccount?> _newAccountNotifier;
  late PaymentAccountsBloc _paymentAccountsBloc;
  final _numberFormatterHelper = locator<NumberFormatterHelper>();

  @override
  void initState() {
    _newAccountNotifier = ValueNotifier<NewPaymentAccount?>(null);

    _initBlocs();
    super.initState();
  }

  @override
  void dispose() {
    _newAccountNotifier.dispose();
    super.dispose();
  }

  void _initBlocs() {
    _paymentAccountsBloc = widget.paymentAccountsBloc;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SetupPaymentBloc, SetupPaymentState>(
      bloc: widget.setupPaymentBloc,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _localizations.paymentMethodPascalCase,
              style: theme.textTheme.titleLarge,
            ),
            MASpacing.l(),
            if (widget.displayFlags.displayBankAccount) ...[
              _bankAccountOption(state),
              MASpacing.s(),
            ],
            if (widget.displayFlags.displayCreditCard) ...[
              _creditCardOption(state),
              MASpacing.s(),
            ],
          ],
        );
      },
    );
  }

  Widget _bankAccountOption(SetupPaymentState state) {
    final scalerConfig = locator<ScalerConfig>();
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    return _paymentAccountsBloc.state.paymentAccounts.bankAccountEnding != ""
        ? OptionContentCard<MPPaymentMethodType>(
            value: MPPaymentMethodType.checkingAccount,
            groupValue: state.paymentMethodType,
            onSelected: (value) => widget.setupPaymentBloc.add(
              SetupPaymentEvent.setPaymentMethodType(value),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _paymentAccountsBloc.state.paymentAccounts.bankAccountOption.bankAccountType.isChecking ? _localizations.checkingAccount : _localizations.savingsAccount,
                  style: theme.textTheme.titleSmall,
                ),
                MASpacing.s(),
                Text(
                  _paymentAccountsBloc.state.paymentAccounts.maskedBankAccountNumber.maskedAccountNumber(),
                  style: theme.textTheme.bodyMedium,
                ),
                MASpacing.xxl(),
                Text(_localizations.yourTotalAmountWillBe),
                Text(
                  widget.setupPaymentBloc.state.paymentAmount.amount.toFormattedCurrency(),
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          )
        : InkWell(
            onTap: () async {
              final newAccount = await context.pushNamed<NewPaymentAccount>(
                MakeAPaymentRoutes.makeAPaymentAddPaymentAccount.name!,
              );

              _newAccountNotifier.value = newAccount;
            },
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: scalerConfig.spacingM,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: colorPalette.surfaceContainerLow,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: colorPalette.iconLinkTextIcon,
                  ),
                  MASpacing.m(
                    axis: Axis.horizontal,
                  ),
                  Flexible(
                    child: Text(
                      _localizations.addACheckingOrSavingsAccount,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: colorPalette.iconLinkTextIcon,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  Widget _creditCardOption(SetupPaymentState state) {
    final scalerConfig = locator<ScalerConfig>();
    final theme = Theme.of(context);

    final creditCardAmount = widget.setupPaymentBloc.state.paymentAmount.amount > 60.0
        ? widget.setupPaymentBloc.state.paymentAmount.amount + widget.setupPaymentBloc.state.paymentAmount.amount * 0.03
        : widget.setupPaymentBloc.state.paymentAmount.amount + 1.5;

    return OptionContentCard<MPPaymentMethodType>(
      value: MPPaymentMethodType.creditCard,
      groupValue: state.paymentMethodType,
      onSelected: (value) => widget.setupPaymentBloc.add(
        SetupPaymentEvent.setPaymentMethodType(value),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.displayFlags.displayMobileWallet ? _localizations.creditCardOrMobileWallet : _localizations.creditCard,
            style: theme.textTheme.bodyMedium,
          ),
          MASpacing.l(),
          Text(_localizations.yourTotalAmountWillBe),
          MASpacing.l(),
          Text(
            creditCardAmount.toFormattedCurrency(),
            style: theme.textTheme.titleMedium,
          ),
          MASpacing.xs(),
          MASpacing.xxl(),
          Wrap(
            runSpacing: scalerConfig.spacingM,
            children: [
              if (widget.displayFlags.displayCreditCard) ...[
                MAScaler(
                  child: SvgPicture.asset(
                    'assets/third_party/mastercard.svg',
                  ),
                ),
                MASpacing.l(
                  axis: Axis.horizontal,
                ),
                MAScaler(
                  child: SvgPicture.asset(
                    'assets/third_party/visa.svg',
                  ),
                ),
                MASpacing.l(
                  axis: Axis.horizontal,
                ),
                MAScaler(
                  child: SvgPicture.asset(
                    'assets/third_party/discover.svg',
                  ),
                )
              ],
              if (widget.displayFlags.displayMobileWallet) ...[
                MASpacing.s(
                  axis: Axis.horizontal,
                ),
                Container(
                  color: Colors.blue.shade100,
                  child: MAScaler(
                    child: SvgPicture.asset(
                      'assets/third_party/google-pay.svg',
                    ),
                  ),
                ),
              ]
            ],
          ),
          MASpacing.xxl(),
          Text(_localizations.totalPaymentAmountIncludes),
        ],
      ),
    );
  }
}
