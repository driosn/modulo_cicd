import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_searchfield.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/faq/application/bloc/faq_bloc.dart';
import 'package:resident_app/features/faq/domain/entities/faq_question.dart';
import 'package:resident_app/features/faq/presentation/views/faq_section_view.dart';
import 'package:resident_app/features/faq/routes.dart';

class FaqView extends StatefulWidget {
  const FaqView({super.key});

  @override
  State<FaqView> createState() => _FaqViewState();
}

class _FaqViewState extends State<FaqView> {
  late FaqBloc _faqBloc;
  late ColorPalette _colorPalette;

  final _localizations = locator<MaLocalizations>().I;

  @override
  void initState() {
    _faqBloc = locator<FaqBloc>()
      ..add(
        const FaqEvent.getQuestions(),
      );
    _colorPalette = locator<ColorPalette>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAAppBar(
        title: Text(_localizations.faqCategories),
        maAppBarType: MAAppBarType.blue,
      ),
      backgroundColor: _colorPalette.surfaceContainerLowest,
      body: BlocBuilder<FaqBloc, FaqState>(
        bloc: _faqBloc,
        builder: (context, state) {
          return state.status.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
              child: MACircularProgressIndicator(),
            ),
            success: () => _FaqQuestions(
              questions: state.filteredQuestions,
              faqBloc: _faqBloc,
            ),
            // TODO: When design is ready implement failure view
            failure: (message) => const Text('Failure Message'),
          );
        },
      ),
    );
  }
}

class _FaqQuestions extends StatefulWidget {
  const _FaqQuestions({
    required this.questions,
    required this.faqBloc,
  });

  final List<FaqQuestion> questions;
  final FaqBloc faqBloc;

  @override
  State<_FaqQuestions> createState() => _FaqQuestionsState();
}

class _FaqQuestionsState extends State<_FaqQuestions> {
  late Map<String, List<FaqQuestion>> groupedQuestions;

  final _localizations = locator<MaLocalizations>().I;

  @override
  void initState() {
    _groupQuestions();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant _FaqQuestions oldWidget) {
    if (oldWidget.questions != widget.questions) {
      _groupQuestions();
    }

    super.didUpdateWidget(oldWidget);
  }

  void _groupQuestions() {
    groupedQuestions = {};
    for (int i = 0; i < widget.questions.length; i++) {
      final question = widget.questions[i];

      if (groupedQuestions[question.group] == null) {
        groupedQuestions[question.group] = [question];
      } else {
        groupedQuestions[question.group]!.add(question);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Column(
        children: [
          MADivider(
            height: 5,
            color: locator<ColorPalette>().appBarAccent,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _localizations.frequentlyAskedQuestions,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        MASpacing.l(),
                        MASearchField(
                          onChanged: (query) => widget.faqBloc.add(
                            FaqEvent.filterQuestions(query),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: groupedQuestions.entries
                        .map(
                          (group) => _FaqGroup(
                            groupTitle: group.key,
                            groupedQuestions: group.value,
                          ),
                        )
                        .toList(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _FaqGroup extends StatefulWidget {
  const _FaqGroup({
    required this.groupTitle,
    required this.groupedQuestions,
  });

  final String groupTitle;
  final List<FaqQuestion> groupedQuestions;

  @override
  State<_FaqGroup> createState() => _FaqGroupState();
}

class _FaqGroupState extends State<_FaqGroup> {
  late Map<String, List<FaqQuestion>> sectionedQuestions;

  @override
  void initState() {
    _sectionQuestions();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant _FaqGroup oldWidget) {
    if (oldWidget.groupedQuestions != widget.groupedQuestions) {
      _sectionQuestions();
    }
    super.didUpdateWidget(oldWidget);
  }

  void _sectionQuestions() {
    sectionedQuestions = {};
    for (int i = 0; i < widget.groupedQuestions.length; i++) {
      final question = widget.groupedQuestions[i];

      if (sectionedQuestions[question.section] == null) {
        sectionedQuestions[question.section] = [question];
      } else {
        sectionedQuestions[question.section]!.add(question);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final scalerConfig = locator<ScalerConfig>();
    final palette = locator<ColorPalette>();

    return Column(
      children: [
        Container(
          color: palette.surfaceBright,
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: scalerConfig.spacingM,
          ),
          child: Text(
            widget.groupTitle,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Column(
          children: sectionedQuestions.entries
              .map(
                (section) => InkWell(
                  onTap: () => context.pushNamed(
                    FaqRoutes.faqSection.name!,
                    extra: FaqSectionViewParams(
                      sectionTitle: section.key,
                      questions: section.value,
                    ),
                  ),
                  child: Ink(
                    color: palette.surfaceContainerLowest,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: scalerConfig.spacingM,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            section.key,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        MAScaler(
                          child: Icon(
                            Icons.chevron_right,
                            size: 28,
                            color: palette.textMuted,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
