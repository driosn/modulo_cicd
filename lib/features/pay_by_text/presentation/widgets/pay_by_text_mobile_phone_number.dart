import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/pay_by_text/presentation/enums/mobile_number_enums.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/mobile_phone_option_content_card.dart';

class PayByTextMobilePhoneNumber extends StatelessWidget {
  PayByTextMobilePhoneNumber({
    super.key,
    required this.userMobilePhone,
  });

  final String userMobilePhone;

  final _localizations = locator<MaLocalizations>().I;

  final TextEditingController _enterMobileNumberController =
      TextEditingController.fromValue(
    const TextEditingValue(
      text: '(XXX) XXX-XXXX',
    ),
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final PayByTextBloc payByTextBloc = locator<PayByTextBloc>();
    return BlocBuilder<PayByTextBloc, PayByTextState>(
        bloc: payByTextBloc,
        builder: (context, state) {
          if (state.mobilePhoneType == MobilePhoneType.userMobilePhone) {
            _enterMobileNumberController.clear();
          } else if (state.mobilePhoneType ==
              MobilePhoneType.aDifferentMobilePhone) {
            _enterMobileNumberController.text = state.mobilePhone.value;
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              MobilePhoneOptionContentCard<MobilePhoneType>(
                value: MobilePhoneType.userMobilePhone,
                groupValue: state.mobilePhoneType,
                onSelected: (value) {
                  _enterMobileNumberController.clear();
                  payByTextBloc.add(
                    PayByTextEvent.setMobilePhoneType(
                      value,
                    ),
                  );
                  payByTextBloc.add(
                    PayByTextEvent.setMobilePhone(
                      userMobilePhone,
                    ),
                  );
                },
                content: Text(
                  userMobilePhone,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              const RelationalSpace(),
              MobilePhoneOptionContentCard<MobilePhoneType>(
                value: MobilePhoneType.aDifferentMobilePhone,
                groupValue: state.mobilePhoneType,
                onSelected: (value) {
                  payByTextBloc.add(
                    PayByTextEvent.setMobilePhoneType(value),
                  );
                  payByTextBloc.add(
                    const PayByTextEvent.setMobilePhone(""),
                  );
                },
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _localizations.aDifferentMobileNumber,
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      _localizations.thisNumberWillNoReplace,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    MATextFormField.phoneNumber(
                      label: _localizations.enterMobileNumber,
                      controller: _enterMobileNumberController,
                      enabled: state.mobilePhoneType ==
                          MobilePhoneType.aDifferentMobilePhone,
                      hasError: state.mobilePhoneErrorMessage != null,
                      errorText: state.mobilePhoneErrorMessage,
                      hintText: _localizations.phoneNumberHint,
                      onChanged: (value) {
                        payByTextBloc.add(
                          PayByTextEvent.setMobilePhone(value),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
