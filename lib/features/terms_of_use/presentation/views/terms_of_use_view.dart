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
import 'package:resident_app/features/terms_of_use/application/bloc/terms_of_use_bloc.dart';

class TermsOfUseView extends StatefulWidget {
  const TermsOfUseView({super.key});

  @override
  State<TermsOfUseView> createState() => _TermsOfUseViewState();
}

class _TermsOfUseViewState extends State<TermsOfUseView> {
  late final TermsOfUseBloc termsOfUseBloc;

  @override
  void initState() {
    termsOfUseBloc = locator<TermsOfUseBloc>();
    termsOfUseBloc.add(const TermsOfUseEvent.getTermsOfUse());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;

    return Scaffold(
      drawer: MADrawer(items: MADrawer.defaultItems),
      appBar: MAAppBar(
        maAppBarType: MAAppBarType.blue,
        title: Text(
          localizations.drawerMyAccountTerms,
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
            child: BlocBuilder<TermsOfUseBloc, TermsOfUseState>(
              bloc: termsOfUseBloc,
              builder: (context, state) {
                if (state.status == TermsOfUseStatus.loading) {
                  return const Center(child: MACircularProgressIndicator());
                }

                if (state.status == TermsOfUseStatus.loaded) {
                  final document = state.termsOfUse;

                  return LegalDocumentsAccordionBuilder(
                    document: document,
                  );
                }

                if (state.status == TermsOfUseStatus.failure) {
                  return Center(
                    child: Text(
                      localizations.drawerMyAccountTerms,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
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
