import 'package:bloc/bloc.dart';
import 'package:flutter_pokedex/src/domain/models/hive_adapters/hive_pokemon.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon_type.dart';
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
        sortAndFilter: (event) => _onSortAndFilter(event, emit),
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
      (right) {
        final sorted = right..sort((a, b) => a.id.compareTo(b.id));
        emit(CapturedState.content(capturedList: right, filteredList: sorted));
      },
    );
  }

  Future<void> _onPokemonDetails(
    _PokemonDetailsCapturedEvent event,
    Emitter<CapturedState> emit,
  ) async {
    await _navigator.pushPokemonDetails(event.pokemonName);
    add(const CapturedEvent.load());
  }

  void _onSortAndFilter(
    _SortAndFilterCapturedEvent event,
    Emitter<CapturedState> emit,
  ) {
    final contentState = state.mapOrNull(
      content: (value) => value,
    );
    if (contentState == null) {
      return;
    }

    emit(const CapturedState.loading());

    final list = [...contentState.capturedList];

    final sorted = switch (event.sort) {
      Sort.byId => list
        ..sort(
          (a, b) => a.id.compareTo(b.id),
        ),
      Sort.byName => list
        ..sort(
          (a, b) => a.name.compareTo(b.name),
        ),
    };

    late final List<HivePokemon> result;
    if (event.filter.isNotEmpty) {
      result = sorted
          .where(
            (element) => event.filter.contains(
              element.types.first,
            ),
          )
          .toList();
    } else {
      result = sorted;
    }

    emit(
      contentState.copyWith(
        filteredList: result,
        sort: event.sort,
        filter: event.filter,
      ),
    );
  }
}
