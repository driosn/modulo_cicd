import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/faq/domain/entities/faq_answer_item.dart';
import 'package:resident_app/features/faq/domain/entities/faq_question.dart';

class FaqQuestionViewParams {
  const FaqQuestionViewParams({
    required this.question,
  });

  final FaqQuestion question;
}

class FaqQuestionView extends StatelessWidget {
  const FaqQuestionView({
    super.key,
    required this.question,
  });

  final FaqQuestion question;

  @override
  Widget build(BuildContext context) {
    final palette = locator<ColorPalette>();

    return Scaffold(
      appBar: const MAAppBar(
        maAppBarType: MAAppBarType.blue,
        title: Text('FAQ Answer'),
      ),
      backgroundColor: palette.surfaceContainerLowest,
      body: Column(
        children: [
          MADivider(
            height: 5,
            color: palette.appBarAccent,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...question.answer.map(
                      (ans) {
                        return _buildAnswerItem(
                          context,
                          ans,
                        );
                      },
                    ),
                    MASpacing.xxl(),
                    MASpacing.s(),
                    MAElevatedButton(
                      onPressed: () {
                        context.pop();
                        context.pop();
                      },
                      child: const Text(
                        'RETURN TO FAQ',
                      ),
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

  Widget _buildAnswerItem(
    BuildContext context,
    FaqAnswerItem ans,
  ) {
    if (ans.type == 'title') {
      return _buildTitle(
        context,
        ans.value,
      );
    }

    if (ans.type == 'subtitle') {
      return _buildSubtitle(
        context,
        ans.value,
      );
    }

    if (ans.type == 'text') {
      return _buildText(
        context,
        ans.value,
      );
    }

    if (ans.type == 'spacing-sm') {
      return MASpacing.l();
    }

    if (ans.type == 'orderedList') {
      return _buildOrderedList(
        context,
        ans.values,
      );
    }

    if (ans.type == 'unorderedList') {
      return _buildUnorderedList(
        context,
        ans.values,
      );
    }

    if (ans.type == 'spacing-md') {
      return Column(
        children: [
          MASpacing.l(),
          MASpacing.l(),
        ],
      );
    }

    return Text(ans.value);
  }

  Widget _buildTitle(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }

  Widget _buildSubtitle(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }

  Widget _buildText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }

  Widget _buildOrderedList(
    BuildContext context,
    List<FaqAnswerItem> values,
  ) {
    return Column(
        children: List.generate(
      values.length,
      (index) {
        if (values[index].type == 'orderedList') {
          return Row(
            children: [
              Text(
                '${index + 1}. ',
                style: const TextStyle(
                  color: Colors.transparent,
                ),
              ),
              Flexible(
                child: _buildOrderedList(
                  context,
                  values[index].values,
                ),
              ),
            ],
          );
        }

        if (values[index].type == 'unorderedList') {
          return Row(
            children: [
              Text(
                '${index + 1}. ',
                style: const TextStyle(
                  color: Colors.transparent,
                ),
              ),
              Flexible(
                child: _buildUnorderedList(
                  context,
                  values[index].values,
                ),
              ),
            ],
          );
        }

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${index + 1}. '),
            Flexible(
              child: _buildAnswerItem(
                context,
                values[index],
              ),
            )
          ],
        );
      },
    ));
  }

  Widget _buildUnorderedList(
    BuildContext context,
    List<FaqAnswerItem> values,
  ) {
    return Column(
        children: List.generate(
      values.length,
      (index) {
        if (values[index].type == 'orderedList') {
          return Row(
            children: [
              const Text(
                ' • ',
                style: TextStyle(
                  color: Colors.transparent,
                ),
              ),
              Flexible(
                child: _buildOrderedList(
                  context,
                  values[index].values,
                ),
              ),
            ],
          );
        }

        if (values[index].type == 'unorderedList') {
          return Row(
            children: [
              const Text(
                ' • ',
                style: TextStyle(
                  color: Colors.transparent,
                ),
              ),
              Flexible(
                child: _buildUnorderedList(
                  context,
                  values[index].values,
                ),
              ),
            ],
          );
        }

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(' • '),
            Flexible(
              child: _buildAnswerItem(
                context,
                values[index],
              ),
            )
          ],
        );
      },
    ));
  }
}
