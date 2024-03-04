import 'package:bloc/bloc.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon.dart';
import 'package:flutter_pokedex/src/domain/usecases/get_captured_pokemon_usecase.dart';
import 'package:flutter_pokedex/src/domain/usecases/get_pokemon_details_usecase.dart';
import 'package:flutter_pokedex/src/domain/usecases/save_captured_pokemon_usecase.dart';
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
    this._saveCapturedPokemonUsecase,
    this._getCapturedPokemonUsecase,
    @factoryParam String pokemonName,
  )   : _pokemonName = pokemonName,
        super(const PokemonDetailsState.initial()) {
    on<PokemonDetailsEvent>(
      (event, emit) => event.map(
        load: (_) => _onLoad(emit),
        capture: (event) => _onCapture(emit, event),
      ),
    );

    add(const PokemonDetailsEvent.load());
  }

  final GetPokemonDetailsUsecase _getPokemonDetailsUsecase;
  final SaveCapturedPokemonUsecase _saveCapturedPokemonUsecase;
  final GetCapturedPokemonUsecase _getCapturedPokemonUsecase;
  final String _pokemonName;

  Future<void> _onLoad(
    Emitter<PokemonDetailsState> emit,
  ) async {
    emit(const PokemonDetailsState.loading());

    final (response, captured) = await (
      _getPokemonDetailsUsecase(_pokemonName),
      _getCapturedPokemonUsecase(_pokemonName).then(
        (value) => value.fold((left) => false, (right) => right != null),
      )
    ).wait;

    response.fold(
      (left) => emit(PokemonDetailsState.error(left)),
      (right) => emit(
        PokemonDetailsState.content(
          pokemon: right,
          isCaptured: captured,
        ),
      ),
    );
  }

  Future<void> _onCapture(
    Emitter<PokemonDetailsState> emit,
    _CapturePokemonDetailsEvent event,
  ) async {
    final contentState = state.mapOrNull(
      content: (value) => value,
    );
    if (contentState == null) {
      return;
    }

    emit(contentState.copyWith(capturing: true));
    final response = await _saveCapturedPokemonUsecase(contentState.pokemon);

    response.fold(
      (left) => emit(PokemonDetailsState.error(left)),
      (right) =>
          emit(contentState.copyWith(capturing: false, isCaptured: true)),
    );
  }
}
