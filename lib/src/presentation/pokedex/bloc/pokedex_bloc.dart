import 'package:bloc/bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/domain/usecases/get_all_pokemons_usecase.dart';
import 'package:flutter_pokedex/src/presentation/pokedex/navigator/pokedex_navigator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pokedex_event.dart';
part 'pokedex_state.dart';
part 'pokedex_bloc.freezed.dart';

@injectable
class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  PokedexBloc(
    this._getAllPokemonsUsecase,
    this._navigator,
    @factoryParam ThemeBloc themeBloc,
  )   : _themeBloc = themeBloc,
        super(const PokedexState.initial()) {
    on<PokedexEvent>(
      (event, emit) => event.map(
        load: (_) => _onLoad(emit),
        pokemonDetails: (event) => _onPokemonDetails(emit, event),
      ),
    );

    add(const PokedexEvent.load());
  }

  final GetAllPokemonsUsecase _getAllPokemonsUsecase;
  final PokedexNavigator _navigator;
  final ThemeBloc _themeBloc;

  Future<void> _onLoad(Emitter<PokedexState> emit) async {
    emit(const PokedexState.loading());

    final response = await _getAllPokemonsUsecase();

    response.fold(
      (left) => emit(PokedexState.error(left)),
      (right) {
        _themeBloc.add(const ThemeEvent.load());
        emit(PokedexState.content(names: right));
      },
    );
  }

  void _onPokemonDetails(
    Emitter<PokedexState> emit,
    _PokemonDetailsPokedexEvent event,
  ) =>
      _navigator.pushPokemonDetails(event.pokemonName);
}
