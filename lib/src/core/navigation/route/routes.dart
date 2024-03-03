import 'package:auto_route/auto_route.dart';
import 'package:flutter_pokedex/src/core/navigation/router/router.dart';
import 'package:flutter_pokedex/src/presentation/pokedex/pokedex_page.dart';
import 'package:flutter_pokedex/src/presentation/pokemon_details/pokemon_details_page.dart';

part 'wrappers.dart';

final pokedexRoutes = [
  _pokedex,
  _pokemonDetails,
];

final _pokedex = AutoRoute(
  path: '/',
  page: PokedexRoute.page,
);

final _pokemonDetails = AutoRoute(
  path: '/details',
  page: PokemonDetailsRoute.page,
);
