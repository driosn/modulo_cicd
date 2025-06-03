import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_circular_progress_indicator.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_fixed_spacing.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/auth/log_in_help/application/bloc/log_in_help_bloc.dart';

class LogInHelpBottomSheet extends StatefulWidget {
  const LogInHelpBottomSheet({super.key});

  @override
  State<LogInHelpBottomSheet> createState() => _LogInHelpBottomSheetState();
}

class _LogInHelpBottomSheetState extends State<LogInHelpBottomSheet> {
  late final LogInHelpBloc _logInHelpBloc;

  @override
  void initState() {
    super.initState();
    _logInHelpBloc = locator<LogInHelpBloc>();
    _logInHelpBloc.add(LogInHelpEvent.getQuestions());
  }

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    final scalerConfig = locator<ScalerConfig>();

    return Container(
      padding: EdgeInsets.only(
        top: MAFixedSpacing.l,
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.92,
      decoration: BoxDecoration(
        color: colorPalette.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MAFixedSpacing.xxl,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  locator<MaLocalizations>().I.logInHelp,
                  style: textTheme.titleLarge,
                ),
                GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: Icon(
                    Icons.close,
                    color: colorPalette.outline,
                  ),
                ),
              ],
            ),
          ),
          MASpacing.m(),
          Expanded(
            child: BlocBuilder<LogInHelpBloc, LogInHelpState>(
              bloc: _logInHelpBloc,
              builder: (context, state) {
                return state.when(
                  initial: SizedBox.new,
                  loading: () => Center(
                    child: MACircularProgressIndicator(),
                  ),
                  success: (questions) {
                    return SingleChildScrollView(
                      child: Column(
                        children: questions
                            .map(
                              (question) => ExpansionTile(
                                shape: Border(
                                    top: BorderSide.none,
                                    bottom: BorderSide(
                                      color: colorPalette.layoutScrimSurface,
                                    )),
                                tilePadding: EdgeInsets.symmetric(
                                  horizontal: MAFixedSpacing.xxl,
                                  vertical: scalerConfig.spacingS,
                                ),
                                childrenPadding: EdgeInsets.only(
                                  left: MAFixedSpacing.xxl,
                                  right: MAFixedSpacing.xxl,
                                  top: scalerConfig.spacingXS,
                                  bottom: scalerConfig.spacingXXL,
                                ),
                                title: Text(
                                  question.question,
                                  style: textTheme.bodyMedium,
                                ),
                                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                  ),
                                  Text(
                                    question.answer,
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    );
                  },
                  failure: (error) => Center(
                    child: Text(
                      error,
                      style: textTheme.bodyMedium,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
