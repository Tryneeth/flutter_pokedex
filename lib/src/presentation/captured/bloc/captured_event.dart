part of 'captured_bloc.dart';

@freezed
class CapturedEvent with _$CapturedEvent {
  const factory CapturedEvent.load() = _LoadCapturedEvent;
  const factory CapturedEvent.pokemonDetails(
    String pokemonName,
  ) = _PokemonDetailsCapturedEvent;
    const factory CapturedEvent.sortAndFilter({
      @Default(Sort.byId) Sort sort,
      @Default([]) List<PokemonType> filter,
    }) = _SortAndFilterCapturedEvent;
 
}

enum Sort { byId, byName }