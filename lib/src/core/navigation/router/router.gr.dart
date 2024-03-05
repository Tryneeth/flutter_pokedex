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
    CapturedRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const CapturedScreen(),
      );
    },
    PokedexRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const PokedexScreen(),
      );
    },
    PokemonDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PokemonDetailsRouteArgs>(
          orElse: () => PokemonDetailsRouteArgs(
              pokemonName: pathParams.getString('pokemonName')));
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
/// [CapturedScreen]
class CapturedRoute extends PageRouteInfo<void> {
  const CapturedRoute({List<PageRouteInfo>? children})
      : super(
          CapturedRoute.name,
          initialChildren: children,
        );

  static const String name = 'CapturedRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
          rawPathParams: {'pokemonName': pokemonName},
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
