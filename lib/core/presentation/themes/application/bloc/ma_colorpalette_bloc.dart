import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/color_palette_light.dart';

part 'ma_colorpalette_bloc.freezed.dart';
part 'ma_colorpalette_event.dart';
part 'ma_colorpalette_state.dart';

class MAColorpaletteBloc
    extends Bloc<MAColorpaletteEvent, MAColorpaletteState> {
  MAColorpaletteBloc()
      : super(MAColorpaletteState(
          palette: ColorPaletteLight(),
        )) {
    on<_UpdateMAColorpaletteEvent>(_onUpdateMAColorpaletteEvent);
  }

  void _onUpdateMAColorpaletteEvent(
    _UpdateMAColorpaletteEvent event,
    Emitter<MAColorpaletteState> emit,
  ) {
    emit(
      state.copyWith(
        palette: event.palette,
      ),
    );
  }
}
