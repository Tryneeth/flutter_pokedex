import 'package:bloc/bloc.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon.dart';
import 'package:flutter_pokedex/src/domain/usecases/get_pokemon_details_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pokemon_details_event.dart';
part 'pokemon_details_state.dart';
part 'pokemon_details_bloc.freezed.dart';

@injectable
class PokemonDetailsBloc
    extends Bloc<PokemonDetailsEvent, PokemonDetailsState> {
  PokemonDetailsBloc(
    this._getPokemonDetailsUsecase,
    @factoryParam String pokemonName,
  )   : _pokemonName = pokemonName,
        super(const PokemonDetailsState.initial()) {
    on<PokemonDetailsEvent>(
      (event, emit) => event.map(
        load: (_) => _onLoad(emit),
      ),
    );

    add(const PokemonDetailsEvent.load());
  }

  final GetPokemonDetailsUsecase _getPokemonDetailsUsecase;
  final String _pokemonName;

  Future<void> _onLoad(
    Emitter<PokemonDetailsState> emit,
  ) async {
    emit(const PokemonDetailsState.loading());

    final response = await _getPokemonDetailsUsecase(_pokemonName);

    response.fold(
      (left) => emit(PokemonDetailsState.error(left)),
      (right) => emit(
        PokemonDetailsState.content(pokemon: right),
      ),
    );
  }
}
