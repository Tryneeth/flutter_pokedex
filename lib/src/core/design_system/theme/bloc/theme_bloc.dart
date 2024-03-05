import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/design_system/theme/theme.dart';
import 'package:flutter_pokedex/src/domain/usecases/get_all_captured_pokemons_usecase.dart';
import 'package:flutter_pokedex/src/domain/usecases/theme_based_on_captured_pokemons.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(
    this._getAllCapturedPokemonsUsecase,
    this._themeBasedOnCapturedPokemons,
  ) : super(
          ThemeState(currentTheme: PokedexAppTheme.defaultTheme()),
        ) {
    on<ThemeEvent>(
      (event, emit) => event.map(
        change: (event) => _onChange(emit, event),
        load: (event) => _onLoad(emit),
      ),
    );

    add(const ThemeEvent.load());
  }

  final GetAllCapturedPokemonsUsecase _getAllCapturedPokemonsUsecase;
  final ThemeBasedOnCapturedPokemons _themeBasedOnCapturedPokemons;

  _onChange(
    Emitter<ThemeState> emit,
    _ChangeThemeEvent event,
  ) {
    emit(state.copyWith(currentTheme: event.theme));
  }

  Future<void> _onLoad(Emitter<ThemeState> emit) async {
    final captured = await _getAllCapturedPokemonsUsecase();

    final themeData = captured.isRight
        ? _themeBasedOnCapturedPokemons(captured.right)
        : state.currentTheme;

    emit(state.copyWith(currentTheme: themeData));
  }
}
