import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/faq/domain/entities/faq_question.dart';
import 'package:resident_app/features/faq/presentation/views/faq_question_view.dart';
import 'package:resident_app/features/faq/routes.dart';

class FaqSectionViewParams {
  const FaqSectionViewParams({
    required this.sectionTitle,
    required this.questions,
  });

  final String sectionTitle;
  final List<FaqQuestion> questions;
}

class FaqSectionView extends StatelessWidget {
  const FaqSectionView({
    super.key,
    required this.sectionTitle,
    required this.questions,
  });

  final String sectionTitle;
  final List<FaqQuestion> questions;

  @override
  Widget build(BuildContext context) {
    final scalerConfig = locator<ScalerConfig>();
    final palette = locator<ColorPalette>();

    return Scaffold(
      appBar: MAAppBar(
        maAppBarType: MAAppBarType.blue,
        title: Text('$sectionTitle FAQ'),
      ),
      backgroundColor: palette.surfaceContainerLowest,
      body: SafeArea(
        top: false,
        bottom: true,
        child: Column(
          children: [
            MADivider(
              height: 5,
              color: palette.appBarAccent,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 24,
                        right: 24,
                        top: scalerConfig.spacingXXL,
                        bottom: scalerConfig.spacingS,
                      ),
                      child: Text(
                        '$sectionTitle FAQ',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    ...questions.map(
                      (question) {
                        return InkWell(
                          onTap: () => context.pushNamed(
                            FaqRoutes.faqQuestion.name!,
                            extra: FaqQuestionViewParams(
                              question: question,
                            ),
                          ),
                          child: Ink(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 26.5),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      question.question,
                                      style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: palette.textMuted,
                                    size: 32,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
