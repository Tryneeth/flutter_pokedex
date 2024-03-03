import 'package:bloc/bloc.dart';
import 'package:flutter_pokedex/src/domain/usecases/get_all_pokemons_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pokedex_event.dart';
part 'pokedex_state.dart';
part 'pokedex_bloc.freezed.dart';

@injectable
class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  PokedexBloc(this._getAllPokemonsUsecase)
      : super(const PokedexState.initial()) {
    on<PokedexEvent>((event, emit) => event.map(load: (_) => _onLoad(emit)));

    add(const PokedexEvent.load());
  }

  final GetAllPokemonsUsecase _getAllPokemonsUsecase;

  Future<void> _onLoad(Emitter<PokedexState> emit) async {
    emit(const PokedexState.loading());

    final response = await _getAllPokemonsUsecase();

    response.fold(
      (left) => emit(PokedexState.error(left)),
      (right) => emit(
        PokedexState.content(names: right),
      ),
    );
  }
}
