import 'package:either_dart/either.dart';
import 'package:flutter_pokedex/src/data/providers/pokemon_api.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon.dart';
import 'package:injectable/injectable.dart';

@injectable
class PokemonRepository {
  PokemonRepository(this._api);

  final PokemonApi _api;

  Future<Either<Exception, List<String>>> getPokemonList() async {
    try {
      final response = await _api.getPokemonList();
      return Right(response.map((e) => e.name).toList());
    } on Exception catch (e) {
      return Left(e);
    } on Error catch (e) {
      return Left(Exception('${e.runtimeType}: ${e.stackTrace}'));
    }
  }

  Future<Either<Exception, Pokemon>> getPokemonByNameOrId(
    String nameOrId,
  ) async {
    try {
      final response = await _api.getPokemonByNameOrId(nameOrId: nameOrId);
      return Right(Pokemon.fromApiResponse(response));
    } on Exception catch (e) {
      return Left(e);
    } on Error catch (e) {
      return Left(Exception('${e.runtimeType}: ${e.stackTrace}'));
    }
  }
}
