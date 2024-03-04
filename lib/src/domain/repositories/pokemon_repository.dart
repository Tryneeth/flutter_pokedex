import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pokedex/src/data/providers/pokemon_api.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon.dart';
import 'package:flutter_pokedex/src/utils/repository_helper_mixin.dart';
import 'package:injectable/injectable.dart';

@injectable
class PokemonRepository with RepositoryHelperMixin {
  PokemonRepository(this._api);

  final PokemonApi _api;

  Future<Either<Exception, List<String>>> getPokemonList({
    int? limit,
    int? offset,
  }) =>
      compute(
        fromAsync,
        () => _api
            .getPokemonList(limit: limit, offset: offset)
            .then((value) => value.results.map((e) => e.name).toList()),
      );

  Future<Either<Exception, Pokemon>> getPokemonByNameOrId(
    String nameOrId,
  ) =>
      compute(
        fromAsync,
        () => _api
            .getPokemonByNameOrId(nameOrId: nameOrId)
            .then((value) => Pokemon.fromApiResponse(value)),
      );
}
