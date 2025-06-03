part of 'ma_colorpalette_bloc.dart';

enum MAColorpaletteStatus {
  initial,
  loaded,
}

@freezed
class MAColorpaletteState with _$MAColorpaletteState {
  factory MAColorpaletteState({
    required ColorPalette palette,
  }) = _MAColorpaletteState;
}
