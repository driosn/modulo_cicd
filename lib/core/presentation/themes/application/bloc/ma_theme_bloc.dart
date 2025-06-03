import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';

part 'ma_theme_bloc.freezed.dart';
part 'ma_theme_event.dart';
part 'ma_theme_state.dart';

class MAThemeBloc extends Bloc<MAThemeEvent, MAThemeState> {
  MAThemeBloc()
      : super(MAThemeState(
          // theme: maTheme,
          theme: getTheme(),
        )) {
    on<_UpdateMAThemeEvent>(_onUpdateMAThemeEvent);
  }

  void _onUpdateMAThemeEvent(
    _UpdateMAThemeEvent event,
    Emitter<MAThemeState> emit,
  ) {
    emit(
      state.copyWith(
        theme: event.theme,
      ),
    );
  }
}
