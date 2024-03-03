import 'package:either_dart/either.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon.dart';
import 'package:flutter_pokedex/src/domain/repositories/pokemon_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPokemonDetailsUsecase {
  GetPokemonDetailsUsecase(this._repository);

  final PokemonRepository _repository;

  Future<Either<Exception, Pokemon>> call(String nameOrId) =>
      _repository.getPokemonByNameOrId(nameOrId);
}
