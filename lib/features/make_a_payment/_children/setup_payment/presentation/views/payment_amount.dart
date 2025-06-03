part of 'setup_payment_view.dart';

class _PaymentAmount extends StatefulWidget {
  const _PaymentAmount({
    required this.paymentOption,
    this.currentRentPaymentOption,
    required this.siteBloc,
    required this.setupPaymentBloc,
  });

  final PaymentOption paymentOption;
  final PaymentOption? currentRentPaymentOption;
  final SiteBloc siteBloc;
  final SetupPaymentBloc setupPaymentBloc;

  @override
  State<_PaymentAmount> createState() => _PaymentAmountState();
}

class _PaymentAmountState extends State<_PaymentAmount> {
  final _localizations = locator<MaLocalizations>().I;
  final _numberFormatterHelper = locator<NumberFormatterHelper>();
  final colorPalette = locator<ColorPalette>();
  final loanNameHelper = locator<LoanNameHelper>();

  final TextEditingController _enterAmountController = TextEditingController.fromValue(
    const TextEditingValue(
      text: '\$0',
    ),
  );

  @override
  void initState() {
    _setInitialAmount();
    super.initState();
  }

  void _setInitialAmount() {
    if (widget.currentRentPaymentOption != null) {
      widget.setupPaymentBloc.add(
        SetupPaymentEvent.setAmount(
          locator<NumberFormatterHelper>().currencyFormat.format(
                widget.currentRentPaymentOption!.amount,
              ),
        ),
      );
    } else {
      widget.setupPaymentBloc.add(
        SetupPaymentEvent.setAmount(
          locator<NumberFormatterHelper>().currencyFormat.format(
                widget.paymentOption.amount,
              ),
        ),
      );
    }
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
              _localizations.paymentAmount,
              style: theme.textTheme.titleLarge,
            ),
            MASpacing.l(),
            widget.paymentOption.payToType.when(
              rent: () => Column(
                children: [
                  if (widget.currentRentPaymentOption != null) ...[
                    OptionContentCard<PaymentAmountType>(
                      value: PaymentAmountType.currentRent,
                      groupValue: state.paymentAmountType,
                      onSelected: (value) {
                        widget.setupPaymentBloc.add(
                          SetupPaymentEvent.setPaymentAmountType(value),
                        );
                        widget.setupPaymentBloc.add(
                          SetupPaymentEvent.setAmount(
                            _numberFormatterHelper.currencyFormat.format(
                              widget.currentRentPaymentOption!.amount,
                            ),
                          ),
                        );
                        _enterAmountController.clear();
                      },
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            _localizations.currentDuePascal,
                            style: theme.textTheme.bodyMedium,
                          ),
                          MASpacing.xxs(),
                          MASpacing.xs(),
                          BlocBuilder<SiteBloc, SiteState>(
                            bloc: widget.siteBloc,
                            builder: (context, state) {
                              return Text(
                                '\$${_numberFormatterHelper.currencyFormat.format(
                                  widget.currentRentPaymentOption!.amount,
                                )}',
                                style: theme.textTheme.titleLarge,
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    const RelationalSpace(),
                  ],
                  OptionContentCard<PaymentAmountType>(
                    value: PaymentAmountType.totalRent,
                    groupValue: state.paymentAmountType,
                    onSelected: (value) {
                      widget.setupPaymentBloc.add(
                        SetupPaymentEvent.setPaymentAmountType(value),
                      );
                      widget.setupPaymentBloc.add(
                        SetupPaymentEvent.setAmount(
                          _numberFormatterHelper.currencyFormat.format(
                            widget.paymentOption.amount,
                          ),
                        ),
                      );
                      _enterAmountController.clear();
                    },
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _localizations.totalDue,
                          style: theme.textTheme.bodyMedium,
                        ),
                        MASpacing.xxs(),
                        MASpacing.xs(),
                        BlocBuilder<SiteBloc, SiteState>(
                          bloc: widget.siteBloc,
                          builder: (context, state) {
                            return Text(
                              '\$${_numberFormatterHelper.currencyFormat.format(
                                widget.paymentOption.amount,
                              )}',
                              style: theme.textTheme.titleLarge,
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  const RelationalSpace(),
                  OptionContentCard<PaymentAmountType>(
                    value: PaymentAmountType.aDifferentAmount,
                    groupValue: state.paymentAmountType,
                    onSelected: (value) {
                      widget.setupPaymentBloc.add(
                        SetupPaymentEvent.setPaymentAmountType(value),
                      );
                      widget.setupPaymentBloc.add(
                        SetupPaymentEvent.setAmount(
                          _enterAmountController.text,
                        ),
                      );
                      _enterAmountController.clear();
                    },
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _localizations.aDifferentAmountOption,
                          style: theme.textTheme.bodyMedium,
                        ),
                        MASpacing.xxs(),
                        MASpacing.xs(),
                        MATextFormField.dollar(
                          label: _localizations.enterAmountLabel,
                          controller: _enterAmountController,
                          enabled: state.paymentAmountType == PaymentAmountType.aDifferentAmount,
                          hasError: state.paymentAmountErrorMessage != null,
                          errorText: state.paymentAmountErrorMessage,
                          onChanged: (value) => widget.setupPaymentBloc.add(
                            SetupPaymentEvent.setAmount(value),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MASpacing.l(),
                ],
              ),
              loan: () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OptionContentCard<PaymentAmountType>(
                    value: PaymentAmountType.totalRent,
                    groupValue: state.paymentAmountType,
                    onSelected: (value) {
                      widget.setupPaymentBloc.add(
                        SetupPaymentEvent.setPaymentAmountType(value),
                      );
                      widget.setupPaymentBloc.add(
                        SetupPaymentEvent.setAmount(
                          _numberFormatterHelper.currencyFormat.format(
                            widget.paymentOption.amount,
                          ),
                        ),
                      );
                      _enterAmountController.clear();
                    },
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          loanNameHelper.getDueLabelByType(
                            widget.paymentOption.loan!.loanApplicationType,
                          ),
                          style: theme.textTheme.bodyMedium,
                        ),
                        MASpacing.xxs(),
                        MASpacing.xs(),
                        BlocBuilder<SiteBloc, SiteState>(
                          bloc: widget.siteBloc,
                          builder: (context, state) {
                            return Text(
                              '\$${_numberFormatterHelper.currencyFormat.format(
                                widget.paymentOption.amount,
                              )}',
                              style: theme.textTheme.titleLarge,
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  const RelationalSpace(),
                  OptionContentCard<PaymentAmountType>(
                    value: PaymentAmountType.aDifferentAmount,
                    groupValue: state.paymentAmountType,
                    onSelected: (value) {
                      widget.setupPaymentBloc.add(
                        SetupPaymentEvent.setPaymentAmountType(value),
                      );
                      widget.setupPaymentBloc.add(
                        SetupPaymentEvent.setAmount(
                          _enterAmountController.text,
                        ),
                      );
                      _enterAmountController.clear();
                    },
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _localizations.aDifferentAmountOption,
                          style: theme.textTheme.bodyMedium,
                        ),
                        MASpacing.xxs(),
                        MASpacing.xs(),
                        MATextFormField.dollar(
                          label: _localizations.enterAmountLabel,
                          controller: _enterAmountController,
                          enabled: state.paymentAmountType == PaymentAmountType.aDifferentAmount,
                          hasError: state.paymentAmountErrorMessage != null,
                          errorText: state.paymentAmountErrorMessage,
                          onChanged: (value) => widget.setupPaymentBloc.add(
                            SetupPaymentEvent.setAmount(value),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MASpacing.l(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
