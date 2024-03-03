import 'dart:async';

abstract class PokedexNavigator {
  FutureOr<void> pushPokemonDetails(String pokemonName);
}
