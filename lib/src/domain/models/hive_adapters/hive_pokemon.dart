import 'package:flutter_pokedex/src/domain/models/pokemon.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon_type.dart';
import 'package:flutter_pokedex/src/utils/hive_type_decorators.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hive_pokemon.g.dart';

@JsonSerializable()
@hivePokemon
class HivePokemon extends HiveObject {
  HivePokemon({
    required this.id,
    required this.name,
    required this.types,
    required this.thumbnail,
  });

  factory HivePokemon.fromJson(Map<String, dynamic> json) =>
      _$HivePokemonFromJson(json);

  factory HivePokemon.fromModel(Pokemon model) => HivePokemon(
        id: model.id,
        name: model.name,
        types: model.types,
        thumbnail: model.thumbnail,
      );

  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final List<PokemonType> types;
  @HiveField(3)
  final String thumbnail;

  Map<String, dynamic> toJson() => _$HivePokemonToJson(this);
}
