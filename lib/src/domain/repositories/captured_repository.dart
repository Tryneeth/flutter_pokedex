import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter_pokedex/src/data/providers/captured_hive.dart';
import 'package:flutter_pokedex/src/domain/models/hive_adapters/hive_pokemon.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon.dart';
import 'package:flutter_pokedex/src/utils/repository_helper_mixin.dart';
import 'package:injectable/injectable.dart';

@injectable
class CapturedRepository with RepositoryHelperMixin {
  CapturedRepository(this._hive);

  final CapturedHive _hive;

  Future<Either<Exception, List<HivePokemon>>> getCapturedPokemons() async =>
      fromAsync(() => _hive.values.then((value) => value?.toList() ?? []));

  Future<Either<Exception, HivePokemon?>> getCapturedPokemonByName(
    String pokemonName,
  ) async =>
      fromAsync(() => _hive.get(pokemonName));

  Future<Either<Exception, void>> saveCapturedPokemon(Pokemon pokemon) {
    final hivePokemon = HivePokemon.fromModel(pokemon);
    return fromAsync(() => _hive.put(hivePokemon.name, hivePokemon));
  }

  Future<Either<Exception, void>> removeCapturedPokemon(String pokemonId) =>
      fromAsync(() => _hive.delete(pokemonId));
}
