import 'package:bloc/bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/domain/usecases/get_all_pokemons_usecase.dart';
import 'package:flutter_pokedex/src/presentation/navigator/pokedex_navigator.dart';
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
        goToSearch: (_) => _onGoToSearch(emit),
        search: (event) => _onSearch(emit, event),
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

  void _onGoToSearch(Emitter<PokedexState> emit) {
    final contentState = state.mapOrNull(
      content: (value) => value,
    );
    if (contentState == null) {
      return;
    }
    emit(
      PokedexState.search(
        names: contentState.names,
        matchingNames: contentState.names,
      ),
    );
  }

  void _onSearch(
    Emitter<PokedexState> emit,
    _SearchPokedexEvent event,
  ) {
    final searchState = state.mapOrNull(
      search: (value) => value,
    );
    if (searchState == null) {
      return;
    }

    emit(
      searchState.copyWith(
        input: event.input,
        matchingNames: event.input.isEmpty
            ? searchState.names
            : searchState.names
                .where(
                  (element) =>
                      element.toLowerCase().contains(event.input.toLowerCase()),
                )
                .toList(),
      ),
    );
  }
}
