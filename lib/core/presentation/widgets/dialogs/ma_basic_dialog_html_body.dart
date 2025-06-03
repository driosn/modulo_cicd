import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';

import 'ma_dialog.dart';

///
/// NOTE: We should try and avoid using this component if at all possible.
/// We are also currently (10/26/2024) using a beta version of flutter_html which may not be stable.
/// We have very simple HTML use cases right now and don't intend it to become more complex.
///
/// Please avoid using this component if at all possible.
///
class MABasicDialogHtmlBody extends StatelessWidget implements MADialogBody {
  const MABasicDialogHtmlBody({
    super.key,
    this.title,
    required this.text,
  });

  final String? title;
  final String text;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (title != null) ...[
          Text(
            title!,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 16,
          ),
          const RelationalSpace(),
        ],
        Html(
          data: text,
          style: {
            "body":
              Style.fromTextStyle(
                Theme.of(context).textTheme.bodyMedium ?? TextStyle(
                  fontSize: 17.0, // Hardcoded values here. Not ideal.
                  fontFamily: 'Lato', // Hardcoded values here. Not ideal.
                ),
              ),
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const RelationalSpace(),
      ],
    );
  }
}
