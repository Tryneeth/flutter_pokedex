part of 'routes.dart';

@RoutePage<void>()
class PokedexScreen extends PokedexPage {
  const PokedexScreen({super.key});
}

@RoutePage<void>()
class CapturedScreen extends CapturedPage {
  const CapturedScreen({super.key});
}

@RoutePage<void>()
class PokemonDetailsScreen extends PokemonDetailsPage {
  const PokemonDetailsScreen({
    super.key,
    @PathParam('pokemonName') required super.pokemonName,
  });
}
