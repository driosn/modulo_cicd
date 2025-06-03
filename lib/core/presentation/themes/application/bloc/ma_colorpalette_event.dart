part of 'ma_colorpalette_bloc.dart';

@freezed
class MAColorpaletteEvent with _$MAColorpaletteEvent {
  const factory MAColorpaletteEvent.updateColorpalette(ColorPalette palette) =
      _UpdateMAColorpaletteEvent;
}
