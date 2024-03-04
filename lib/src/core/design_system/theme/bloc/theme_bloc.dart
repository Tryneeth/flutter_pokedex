import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/design_system/theme/theme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(
          ThemeState(currentTheme: PokedexAppTheme.defaultTheme()),
        ) {
    on<ThemeEvent>(
      (event, emit) => event.map(
        change: (event) => _onChange(emit, event),
      ),
    );
  }

  _onChange(
    Emitter<ThemeState> emit,
    _ChangeThemeEvent event,
  ) {
    emit(state.copyWith(currentTheme: event.theme));
  }
}
