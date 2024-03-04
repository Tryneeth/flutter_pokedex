import 'package:either_dart/either.dart';
import 'package:flutter_pokedex/src/domain/models/hive_adapters/hive_pokemon.dart';
import 'package:flutter_pokedex/src/domain/repositories/captured_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCapturedPokemonUsecase {
  GetCapturedPokemonUsecase(this._repository);

  final CapturedRepository _repository;

  Future<Either<Exception, HivePokemon?>> call(String pokemonName) =>
      _repository.getCapturedPokemonByName(pokemonName);
}
