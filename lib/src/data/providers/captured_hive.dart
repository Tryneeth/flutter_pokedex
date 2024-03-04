import 'package:flutter_pokedex/src/core/enums/di_parameter_name.dart';
import 'package:flutter_pokedex/src/domain/models/hive_adapters/hive_pokemon.dart';
import 'package:flutter_pokedex/src/utils/core_hive_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class CapturedHive extends CoreHiveProvider<HivePokemon> {
  CapturedHive(@Named(ApiDiParameterName.pokemonHiveId) super.pokemonHiveId);
}
