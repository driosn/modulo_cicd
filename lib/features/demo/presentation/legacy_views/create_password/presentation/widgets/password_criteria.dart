import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/create_password/presentation/enums/criteria_state.dart';

class PasswordCriteria extends StatelessWidget {
  const PasswordCriteria({
    super.key,
    required this.state,
    required this.criteria,
  });

  final String criteria;
  final CriteriaState state;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final isTablet = MediaQuery.of(context).size.width > 500;
    final colorPalette = locator<ColorPalette>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (state != CriteriaState.clean)
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    state == CriteriaState.ok ? Icons.check : Icons.close,
                    size: 20,
                    color: state == CriteriaState.ok
                        ? colorPalette.iconSuccess
                        : colorPalette.warningWarning,
                  ),
                ),
              Flexible(
                child: Text(
                  criteria,
                  textAlign: TextAlign.center,
                  style: state == CriteriaState.error
                      ? !isTablet
                          ? textTheme.bodySmall!.copyWith(
                              color: colorPalette.warningWarning,
                            )
                          : textTheme.bodyMedium!.copyWith(
                              color: colorPalette.warningWarning,
                            )
                      : !isTablet
                          ? textTheme.bodySmall
                          : textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
