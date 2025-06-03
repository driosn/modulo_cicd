import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_accordion.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/terms_of_use/application/bloc/terms_of_use_bloc.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TermsOfUseAccordion extends StatelessWidget {
  const TermsOfUseAccordion({
    super.key,
    required this.termsOfUseBloc,
  });

  final TermsOfUseBloc termsOfUseBloc;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();

    return BlocBuilder<TermsOfUseBloc, TermsOfUseState>(
      bloc: termsOfUseBloc,
      builder: (context, state) {
        if (state.status == TermsOfUseStatus.loading) {
          return const Center(
            child: MACircularProgressIndicator(),
          );
        }

        if (state.status == TermsOfUseStatus.loaded) {
          final document = state.termsOfUse;

          return SingleChildScrollView(
            child: MAAccordion(
              title: document.title,
              subtitle: document.subtitle,
              tiles: document.sections
                  .map((section) => MAAccordionTile(
                        title: section.title,
                        children: [
                          Text.rich(
                            TextSpan(
                                children: section.elements.map((e) {
                              if (e.type == 'text') {
                                if (e.link) {
                                  return TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        launchUrlString(e.fullUrl);
                                      },
                                    text: e.content,
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          fontWeight: e.bold ? FontWeight.bold : FontWeight.normal,
                                          color: colorPalette.textLink,
                                          decorationColor: colorPalette.textLink,
                                          decoration: TextDecoration.underline,
                                        ),
                                  );
                                }

                                return TextSpan(
                                  text: e.content,
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                        fontWeight: e.bold ? FontWeight.bold : FontWeight.normal,
                                        color: colorPalette.textBase,
                                      ),
                                );
                              }

                              if (e.type == 'list') {
                                return TextSpan(
                                  children: e.children.map((child) {
                                    if (child.type == 'text') {
                                      return WidgetSpan(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text('•'),
                                              const SizedBox(
                                                width: 12,
                                              ),
                                              Flexible(
                                                child: Text(
                                                  child.content,
                                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                                        fontWeight: e.bold ? FontWeight.bold : FontWeight.normal,
                                                        color: colorPalette.textBase,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }

                                    if (child.type == 'breakline') {
                                      return const TextSpan(
                                        text: '\n\n',
                                      );
                                    }

                                    if (child.type == 'breakline-sm') {
                                      return const TextSpan(
                                        text: '\n',
                                      );
                                    }

                                    return const WidgetSpan(
                                      child: SizedBox(),
                                    );
                                  }).toList(),
                                );
                              }

                              if (e.type == 'breakline') {
                                return const TextSpan(
                                  text: '\n\n',
                                );
                              }

                              if (e.type == 'breakline-sm') {
                                return const TextSpan(
                                  text: '\n',
                                );
                              }

                              return const WidgetSpan(
                                child: SizedBox(),
                              );
                            }).toList()),
                          )
                        ],
                      ))
                  .toList(),
            ),
          );
        }

        if (state.status == TermsOfUseStatus.failure) {
          return const Center(
            child: MACircularProgressIndicator(),
          );
        }

        return const SizedBox();
      },
    );
  }
}
