import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/company_content/application/bloc/company_content_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class FullAgreementBottomSheet extends StatefulWidget {
  const FullAgreementBottomSheet({super.key});

  @override
  State<FullAgreementBottomSheet> createState() =>
      _FullAgreementBottomSheetState();
}

class _FullAgreementBottomSheetState extends State<FullAgreementBottomSheet> {
  final colorPalette = locator<ColorPalette>();
  final localizations = locator<MaLocalizations>().I;
  final companyContentBloc = locator<CompanyContentBloc>();
  final userBloc = locator<UserBloc>();

  @override
  void initState() {
    final companyId = userBloc.state.user.companyId;

    companyContentBloc.add(
      CompanyContentEvent.getOneTimePaymentAuthorizationText(
        companyId,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.86,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        color: colorPalette.surfaceContainerLowest,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 3,
            color: Colors.black.withOpacity(0.3),
          ),
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 8,
            spreadRadius: 3,
            color: Colors.black.withOpacity(0.15),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ),
            ],
          ),
          const RelationalSpace(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      localizations.paymentAgreement,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    BlocBuilder<CompanyContentBloc, CompanyContentState>(
                      bloc: companyContentBloc,
                      builder: (context, state) {
                        return state.when(
                          initial: () => SizedBox(),
                          loading: () => SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: double.infinity,
                            child: Center(
                              child: MACircularProgressIndicator(),
                            ),
                          ),
                          success: (
                            String oneTimePaymentAuthorizationText,
                            String autoPayAuthorizationText,
                          ) =>
                              Text(oneTimePaymentAuthorizationText),
                          error: () => Text(localizations.oneTimePaymentAuthorizationDescription),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 48,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
