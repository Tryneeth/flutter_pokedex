import 'package:dio/dio.dart';
import 'package:flutter_pokedex/src/core/enums/di_parameter_name.dart';
import 'package:flutter_pokedex/src/data/dto/pokemon/pokemon_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'pokemon_api.g.dart';

@lazySingleton
@RestApi()
abstract class PokemonApi {
  @factoryMethod
  factory PokemonApi(
    Dio dio, {
    @Named(ApiDiParameterName.baseUrlV2) String baseUrl,
  }) = _PokemonApi;

  @GET('/pokemon')
  Future<List<Item>> getPokemonList({
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  @GET('/pokemon/{nameOrId}')
  Future<PokemonResponse> getPokemonByNameOrId({
    @Path('nameOrId') String nameOrId,
  });
}
