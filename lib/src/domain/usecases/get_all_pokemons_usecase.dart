import 'package:either_dart/either.dart';
import 'package:flutter_pokedex/src/domain/repositories/pokemon_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllPokemonsUsecase {
  GetAllPokemonsUsecase(this._repository);

  final PokemonRepository _repository;

  Future<Either<Exception, List<String>>> call() =>
      _repository.getPokemonList();
}
