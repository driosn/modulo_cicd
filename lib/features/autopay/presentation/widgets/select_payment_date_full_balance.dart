import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/widgets/tiles/ma_radio_list_tile.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date.dart';

class SelectPaymentDateFullBalance extends StatefulWidget {
  const SelectPaymentDateFullBalance({
    super.key,
    required this.options,
    required this.autoPayBloc,
  });

  final List<OptionInfo> options;
  final AutoPayBloc autoPayBloc;

  @override
  State<StatefulWidget> createState() => _SelectPaymentDateFullBalanceState();
}

class _SelectPaymentDateFullBalanceState
    extends State<SelectPaymentDateFullBalance> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocBuilder<AutoPayBloc, AutoPayState>(
        bloc: widget.autoPayBloc,
        builder: (context, state) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.options.length,
            itemBuilder: (context, index) {
              final paymentDate = widget.options[index];
              return MARadioListTile<OptionInfo>(
                value: widget.options[index],
                groupValue: state.paymentDate,
                title: Text(
                  paymentDate.name,
                  style: textTheme.bodyMedium,
                ),
                onChanged: (value) => setState(() {
                  widget.autoPayBloc.add(AutoPayEvent.setPaymentDate(value!));
                }),
              );
            },
          );
        });
  }
}
