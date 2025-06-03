part of 'ma_theme_bloc.dart';

enum MAThemeStatus {
  initial,
  loaded,
}

@freezed
class MAThemeState with _$MAThemeState {
  factory MAThemeState({
    required ThemeData theme,
  }) = _MAThemeState;
}
