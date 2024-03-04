import 'package:either_dart/either.dart';
import 'package:flutter_pokedex/src/domain/repositories/captured_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveCapturedPokemonUsecase {
  RemoveCapturedPokemonUsecase(this._repository);

  final CapturedRepository _repository;

  Future<Either<Exception, void>> call(String pokemonName) =>
      _repository.removeCapturedPokemon(pokemonName);
}
