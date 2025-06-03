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
import 'package:resident_app/features/legal_documents/application/bloc/legal_documents_bloc.dart';

class EndUserLicenseAgreementView extends StatefulWidget {
  const EndUserLicenseAgreementView({super.key});

  @override
  State<EndUserLicenseAgreementView> createState() => _EndUserLicenseAgreementViewState();
}

class _EndUserLicenseAgreementViewState extends State<EndUserLicenseAgreementView> {
  late final LegalDocumentsBloc legalDocumentsBloc;

  @override
  void initState() {
    legalDocumentsBloc = locator<LegalDocumentsBloc>();
    legalDocumentsBloc.add(const LegalDocumentsEvent.getLegalDocuments());

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
          localizations.eula,
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
            child: BlocBuilder<LegalDocumentsBloc, LegalDocumentsState>(
              bloc: legalDocumentsBloc,
              builder: (context, state) {
                if (state.status == LegalDocumentsStatus.loading) {
                  return const Center(
                    child: MACircularProgressIndicator(),
                  );
                }

                if (state.status == LegalDocumentsStatus.loaded) {
                  final document = state.legalDocuments;

                  return LegalDocumentsAccordionBuilder(
                    document: document,
                  );
                }

                if (state.status == LegalDocumentsStatus.failure) {
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
