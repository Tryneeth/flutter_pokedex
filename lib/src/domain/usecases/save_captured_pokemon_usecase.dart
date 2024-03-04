import 'package:either_dart/either.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon.dart';
import 'package:flutter_pokedex/src/domain/repositories/captured_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveCapturedPokemonUsecase {
  SaveCapturedPokemonUsecase(this._repository);

  final CapturedRepository _repository;

  Future<Either<Exception, void>> call(Pokemon pokemon) =>
      _repository.saveCapturedPokemon(pokemon);
}
