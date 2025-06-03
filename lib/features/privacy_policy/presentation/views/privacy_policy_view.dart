import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/drawers/ma_drawer.dart';
import 'package:resident_app/core/presentation/widgets/legal_documents/legal_documents_builder.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/privacy_policy/application/bloc/privacy_policy_bloc.dart';

class PrivacyPolicyView extends StatefulWidget {
  const PrivacyPolicyView({super.key});

  @override
  State<PrivacyPolicyView> createState() => _PrivacyPolicyViewState();
}

class _PrivacyPolicyViewState extends State<PrivacyPolicyView> {
  late final PrivacyPolicyBloc privacyPolicyBloc;

  @override
  void initState() {
    privacyPolicyBloc = locator<PrivacyPolicyBloc>();
    privacyPolicyBloc.add(const PrivacyPolicyEvent.getPrivacyPolicy());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;

    return Scaffold(
      drawer: MADrawer(
        items: MADrawer.defaultItems,
      ),
      appBar: MAAppBar(
        maAppBarType: MAAppBarType.blue,
        title: Text(
          localizations.drawerMyAccountPrivacy,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: colorPalette.appBarTextIcon,
              ),
        ),
      ),
      backgroundColor: colorPalette.surfaceContainerLowest,
      body: Column(
        children: [
          MADivider(
            height: 5,
            color: colorPalette.appBarAccent,
          ),
          Expanded(
            child: BlocBuilder<PrivacyPolicyBloc, PrivacyPolicyState>(
              bloc: privacyPolicyBloc,
              builder: (context, state) {
                if (state.status == PrivacyPolicyStatus.loading) {
                  return const Center(
                    child: MACircularProgressIndicator(),
                  );
                }

                if (state.status == PrivacyPolicyStatus.loaded) {
                  final document = state.privacyPolicy;

                  return LegalDocumentsAccordionBuilder(
                    document: document,
                  );
                }

                if (state.status == PrivacyPolicyStatus.failure) {
                  return const Center(
                    child: MACircularProgressIndicator(),
                  );
                }

                return const SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }
}
