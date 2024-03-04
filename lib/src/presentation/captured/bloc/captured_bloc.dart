import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_pokedex/src/domain/models/hive_adapters/hive_pokemon.dart';
import 'package:flutter_pokedex/src/domain/usecases/get_captured_pokemons_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'captured_event.dart';
part 'captured_state.dart';
part 'captured_bloc.freezed.dart';

class CapturedBloc extends Bloc<CapturedEvent, CapturedState> {
  CapturedBloc(this._getCapturedPokemonsUsecase)
      : super(const CapturedState.initial()) {
    on<CapturedEvent>((event, emit) => event.map(load: (_) => _onLoad(emit)));

    add(const CapturedEvent.load());
  }

  final GetAllCapturedPokemonsUsecase _getCapturedPokemonsUsecase;

  Future<void> _onLoad(Emitter<CapturedState> emit) async {
    emit(const CapturedState.loading());

    final response = _getCapturedPokemonsUsecase();

    response.fold(
      (left) => emit(CapturedState.error(left)),
      (right) => emit(CapturedState.content(capturedList: right)),
    );
  }
}
