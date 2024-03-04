import 'package:flutter_pokedex/src/utils/hive_type_decorators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'pokemon_type.g.dart';

@hivePokemonType
@JsonEnum()
enum PokemonType {
  @HiveField(0)
  @JsonValue('normal')
  normal,
  @HiveField(1)
  @JsonValue('fire')
  fire,
  @HiveField(2)
  @JsonValue('water')
  water,
  @HiveField(3)
  @JsonValue('electric')
  electric,
  @HiveField(4)
  @JsonValue('grass')
  grass,
  @HiveField(5)
  @JsonValue('ice')
  ice,
  @HiveField(6)
  @JsonValue('fighting')
  fighting,
  @HiveField(7)
  @JsonValue('poison')
  poison,
  @HiveField(8)
  @JsonValue('ground')
  ground,
  @HiveField(9)
  @JsonValue('flying')
  flying,
  @HiveField(10)
  @JsonValue('psychic')
  psychic,
  @HiveField(11)
  @JsonValue('bug')
  bug,
  @HiveField(12)
  @JsonValue('rock')
  rock,
  @HiveField(13)
  @JsonValue('ghost')
  ghost,
  @HiveField(14)
  @JsonValue('dragon')
  dragon,
  @HiveField(15)
  @JsonValue('dark')
  dark,
  @HiveField(16)
  @JsonValue('steel')
  steel,
  @HiveField(17)
  @JsonValue('fairy')
  fairy,
  @HiveField(18)
  @JsonValue('unknown')
  unknown,
  @HiveField(19)
  @JsonValue('shadow')
  shadow,
}
