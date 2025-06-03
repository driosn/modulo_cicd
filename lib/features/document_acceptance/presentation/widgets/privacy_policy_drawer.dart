import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/accordion/privacy_policy_accordion.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/privacy_policy/application/bloc/privacy_policy_bloc.dart';

class PrivacyPolicyDrawer extends StatefulWidget {
  const PrivacyPolicyDrawer({
    super.key,
    required this.parentScaffoldKey,
  });

  final GlobalKey<ScaffoldState> parentScaffoldKey;

  @override
  State<PrivacyPolicyDrawer> createState() => _PrivacyPolicyDrawerState();
}

class _PrivacyPolicyDrawerState extends State<PrivacyPolicyDrawer> {
  late PrivacyPolicyBloc _privacyPolicyBloc;

  @override
  void initState() {
    super.initState();
    _privacyPolicyBloc = locator<PrivacyPolicyBloc>();
    _privacyPolicyBloc.add(PrivacyPolicyEvent.getPrivacyPolicy());
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: colorPalette.surfaceContainerLowest,
      child: BlocProvider.value(
        value: _privacyPolicyBloc,
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
              localizations.privacyPolicy,
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
    return PrivacyPolicyAccordion(
      privacyPolicyBloc: context.read<PrivacyPolicyBloc>(),
    );
  }
}
