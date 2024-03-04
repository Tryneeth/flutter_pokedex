part of 'pokedex_bloc.dart';

@freezed
class PokedexEvent with _$PokedexEvent {
  const factory PokedexEvent.load() = _LoadPokedexEvent;
  const factory PokedexEvent.goToSearch() = _GoToSearchPokedexEvent;
  const factory PokedexEvent.search({required String input}) = _SearchPokedexEvent;
  const factory PokedexEvent.pokemonDetails(String pokemonName) =
      _PokemonDetailsPokedexEvent;
}
