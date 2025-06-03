// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/domain/document.dart' as LD;
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_accordion.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/legal_documents/data/alphabet_extension.dart';
import 'package:url_launcher/url_launcher.dart';

class LegalDocumentsAccordionBuilder extends StatelessWidget {
  const LegalDocumentsAccordionBuilder({
    super.key,
    required this.document,
  });

  final LD.Document document;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: MAAccordion(
        title: document.title,
        subtitle: document.subtitle,
        tiles: document.sections
            .map(
              (section) => MAAccordionTile(
                title: section.title,
                children: [
                  _LegalDocumentElementsBuilder(
                    elements: section.elements,
                  )
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

class _LegalDocumentElementsBuilder extends StatelessWidget {
  const _LegalDocumentElementsBuilder({
    required this.elements,
  });

  final List<LD.Element> elements;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          children: elements.map<InlineSpan>((element) {
        switch (element.type) {
          case 'text':
            return _buildText(
              context,
              content: element.content,
              isLink: element.link,
              fullUrl: element.fullUrl,
              isBold: element.bold,
              isBox: element.box,
            );
          case 'list':
            return _buildList(
              context,
              children: element.children,
              isAlphabetical: false,
              isNumerical: false,
            );
          case 'numerical-list':
            return _buildList(
              context,
              children: element.children,
              isAlphabetical: false,
              isNumerical: true,
            );
          case 'alphabetical-list':
            return _buildList(
              context,
              children: element.children,
              isAlphabetical: true,
              isNumerical: false,
            );
          case 'breakline':
            return const TextSpan(text: '\n\n');
          case 'breakline-sm':
            return const TextSpan(text: '\n');
          default:
            return WidgetSpan(child: SizedBox());
        }
      }).toList()),
    );
  }

  Future<void> launchUrl(BuildContext context, Uri uri) async {
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $uri')),
      );
    }
  }

  bool _isValidEmail(String email) {
    const pattern = emailPattern;
    final regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  InlineSpan _buildText(
    BuildContext context, {
    required String content,
    required bool isLink,
    required String fullUrl,
    required bool isBold,
    required bool isBox,
  }) {
    final colorPalette = locator<ColorPalette>();

    ///
    /// This renders a custom bold text (Disallows links and normal text)
    ///
    TextSpan processTextWithBold(
      String content,
      BuildContext context,
      ColorPalette colorPalette,
    ) {
      final regex = RegExp(r'\[BOLD\](.*?)\[/BOLD\]');
      final matches = regex.allMatches(content);

      List<TextSpan> spans = [];
      int lastIndex = 0;

      for (final match in matches) {
        // Add text before the bold section
        if (match.start > lastIndex) {
          spans.add(TextSpan(
            text: content.substring(lastIndex, match.start),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.normal,
                  color: colorPalette.textBase,
                ),
          ));
        }

        // Add the bold text
        spans.add(TextSpan(
          text: match.group(1),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorPalette.textBase,
              ),
        ));

        lastIndex = match.end;
      }

      // Add remaining text after the last bold section
      if (lastIndex < content.length) {
        spans.add(TextSpan(
          text: content.substring(lastIndex),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.normal,
                color: colorPalette.textBase,
              ),
        ));
      }

      // Add remaining text after the last bold section
      if (lastIndex < content.length) {
        spans.add(TextSpan(
          text: content.substring(lastIndex),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.normal,
                color: colorPalette.textBase,
              ),
        ));
      }

      return TextSpan(children: spans);
    }

    if (content.contains('BOLD')) {
      return processTextWithBold(
        content,
        context,
        colorPalette,
      );
    }

    /// =================================================================

    if (isLink) {
      TextSpan buildLinkSpan(BuildContext context, ColorPalette colorPalette) {
        return TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () async {
              // Extract email address from element content
              final email = content.trim();

              if (_isValidEmail(email)) {
                final Uri emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: email,
                );
                await launchUrl(context, emailLaunchUri);
              } else {
                launchUrl(context, Uri.parse(fullUrl));
              }
            },
          text: content,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                color: colorPalette.textLink,
                decoration: TextDecoration.underline,
              ),
        );
      }

      return buildLinkSpan(context, colorPalette);
    }

    if (isBox) {
      return WidgetSpan(
        child: Container(
          padding: const EdgeInsets.all(16),
          color: colorPalette.surfaceContainerLow,
          child: Text(
            content,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                  color: colorPalette.textBase,
                ),
          ),
        ),
      );
    }

    return TextSpan(
      text: content,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: colorPalette.textBase,
          ),
    );
  }

  InlineSpan _buildList(
    BuildContext context, {
    required List<LD.Element> children,
    bool isAlphabetical = false,
    bool isNumerical = false,
  }) {
    final isUnorderedBullet = isAlphabetical == false && isNumerical == false;
    int index = 0;
    String prefixSymbol = '•';

    return TextSpan(
      children: children.map((entry) {
        final child = entry;
        if (child.type == 'text') {
          if (!isUnorderedBullet && child.showPrefixSymbol) {
            if (isAlphabetical) {
              final letter = index.toAlphabetLetter();
              prefixSymbol = '$letter. ';

              index++;
            }

            if (isNumerical) {
              index++;
              prefixSymbol = '$index. ';
            }
          }

          return WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  child.showPrefixSymbol
                      ? Text(prefixSymbol)
                      : Text(
                          prefixSymbol,
                          style: TextStyle(
                            color: Colors.transparent,
                          ),
                        ),
                  const SizedBox(
                    width: 12,
                  ),
                  Flexible(
                    child: RichText(
                      text: _buildText(
                        context,
                        content: entry.content,
                        fullUrl: entry.fullUrl,
                        isBold: entry.bold,
                        isBox: entry.box,
                        isLink: entry.link,
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
}
