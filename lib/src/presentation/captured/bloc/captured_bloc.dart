import 'package:bloc/bloc.dart';
import 'package:flutter_pokedex/src/domain/models/hive_adapters/hive_pokemon.dart';
import 'package:flutter_pokedex/src/domain/usecases/get_all_captured_pokemons_usecase.dart';
import 'package:flutter_pokedex/src/presentation/navigator/pokedex_navigator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'captured_event.dart';
part 'captured_state.dart';
part 'captured_bloc.freezed.dart';

@injectable
class CapturedBloc extends Bloc<CapturedEvent, CapturedState> {
  CapturedBloc(
    this._getCapturedPokemonsUsecase,
    this._navigator,
  ) : super(const CapturedState.initial()) {
    on<CapturedEvent>(
      (event, emit) => event.map(
        load: (_) => _onLoad(emit),
        pokemonDetails: (event) => _onPokemonDetails(event, emit),
      ),
    );

    add(const CapturedEvent.load());
  }

  final GetAllCapturedPokemonsUsecase _getCapturedPokemonsUsecase;
  final PokedexNavigator _navigator;

  Future<void> _onLoad(Emitter<CapturedState> emit) async {
    emit(const CapturedState.loading());

    final response = await _getCapturedPokemonsUsecase();

    response.fold(
      (left) => emit(CapturedState.error(left)),
      (right) => emit(CapturedState.content(capturedList: right)),
    );
  }

  Future<void> _onPokemonDetails(
    _PokemonDetailsCapturedEvent event,
    Emitter<CapturedState> emit,
  ) async {
    await _navigator.pushPokemonDetails(event.pokemonName);
    add(const CapturedEvent.load());
  }
}
