
part of 'routes.dart';

@RoutePage<void>()
class PokedexScreen extends PokedexPage {
  const PokedexScreen({super.key});
}

@RoutePage<void>()
class PokemonDetailsScreen extends PokemonDetailsPage {
  const PokemonDetailsScreen({super.key, required super.pokemonName});
}