// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$ClientRouter extends RootStackRouter {
  // ignore: unused_element
  _$ClientRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    PokedexRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const PokedexScreen(),
      );
    },
    PokemonDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PokemonDetailsRouteArgs>();
      return AutoRoutePage<void>(
        routeData: routeData,
        child: PokemonDetailsScreen(
          key: args.key,
          pokemonName: args.pokemonName,
        ),
      );
    },
  };
}

/// generated route for
/// [PokedexScreen]
class PokedexRoute extends PageRouteInfo<void> {
  const PokedexRoute({List<PageRouteInfo>? children})
      : super(
          PokedexRoute.name,
          initialChildren: children,
        );

  static const String name = 'PokedexRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PokemonDetailsScreen]
class PokemonDetailsRoute extends PageRouteInfo<PokemonDetailsRouteArgs> {
  PokemonDetailsRoute({
    Key? key,
    required String pokemonName,
    List<PageRouteInfo>? children,
  }) : super(
          PokemonDetailsRoute.name,
          args: PokemonDetailsRouteArgs(
            key: key,
            pokemonName: pokemonName,
          ),
          initialChildren: children,
        );

  static const String name = 'PokemonDetailsRoute';

  static const PageInfo<PokemonDetailsRouteArgs> page =
      PageInfo<PokemonDetailsRouteArgs>(name);
}

class PokemonDetailsRouteArgs {
  const PokemonDetailsRouteArgs({
    this.key,
    required this.pokemonName,
  });

  final Key? key;

  final String pokemonName;

  @override
  String toString() {
    return 'PokemonDetailsRouteArgs{key: $key, pokemonName: $pokemonName}';
  }
}
