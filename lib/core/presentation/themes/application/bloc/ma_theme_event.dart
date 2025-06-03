part of 'ma_theme_bloc.dart';

@freezed
class MAThemeEvent with _$MAThemeEvent {
  const factory MAThemeEvent.updateTheme(ThemeData theme) = _UpdateMAThemeEvent;
}
