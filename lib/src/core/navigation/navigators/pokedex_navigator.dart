import 'dart:async';

import 'package:flutter_pokedex/src/core/navigation/router/router.dart';
import 'package:flutter_pokedex/src/presentation/pokedex/navigator/pokedex_navigator.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PokedexNavigator)
class ClientPokedexNavigator implements PokedexNavigator {
  const ClientPokedexNavigator(this._router);

  final ClientRouter _router;

  @override
  FutureOr<void> pushPokemonDetails(String pokemonName) =>
      _router.push(PokemonDetailsRoute(pokemonName: pokemonName));
}
