import 'package:flutter_pokedex/src/domain/models/pokemon_type.dart';
import 'package:flutter_pokedex/src/domain/models/stat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
abstract class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int height,
    required int id,
    required String name,
    required int weight,
    required int baseXP,
    int? order,
    List<Stat>? stats,
    List<PokemonType>? types,
  }) = _Pokemon;
}
