import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/accordion/terms_of_use_accordion.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/terms_of_use/application/bloc/terms_of_use_bloc.dart';

class TermsOfUseDrawer extends StatefulWidget {
  const TermsOfUseDrawer({
    super.key,
    required this.parentScaffoldKey,
  });

  final GlobalKey<ScaffoldState> parentScaffoldKey;

  @override
  State<TermsOfUseDrawer> createState() => _TermsOfUseDrawerState();
}

class _TermsOfUseDrawerState extends State<TermsOfUseDrawer> {
  late TermsOfUseBloc _termsOfUseBloc;

  @override
  void initState() {
    super.initState();
    _termsOfUseBloc = locator<TermsOfUseBloc>();
    _termsOfUseBloc.add(TermsOfUseEvent.getTermsOfUse());
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: colorPalette.surfaceContainerLowest,
      child: BlocProvider.value(
        value: _termsOfUseBloc,
        child: Column(
          children: [
            _Header(
              parentScaffoldKey: widget.parentScaffoldKey,
            ),
            Expanded(
              child: _Content(),
            )
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.parentScaffoldKey,
  });

  final GlobalKey<ScaffoldState> parentScaffoldKey;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    final localizations = locator<MaLocalizations>().I;

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              localizations.termsOfUse,
              style: textTheme.titleSmall?.copyWith(
                color: colorPalette.appBarBg,
              ),
            ),
            GestureDetector(
              onTap: parentScaffoldKey.currentState?.closeEndDrawer,
              child: Icon(
                Icons.clear,
                color: colorPalette.appBarBg,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return TermsOfUseAccordion(
      termsOfUseBloc: context.read<TermsOfUseBloc>(),
    );
  }
}
