import 'package:flutter_pokedex/src/data/dto/pokemon/pokemon_response.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon_type.dart';
import 'package:flutter_pokedex/src/domain/models/stat.dart';
import 'package:flutter_pokedex/src/domain/models/stat_name.dart';
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
    required int order,
    required List<Stat> stats,
    required List<PokemonType> types,
    required String thumbnail,
  }) = _Pokemon;

  factory Pokemon.fromApiResponse(PokemonResponse raw) => Pokemon(
        height: raw.height,
        id: raw.id,
        name: raw.name,
        weight: raw.weight,
        baseXP: raw.baseXP,
        order: raw.order,
        stats: raw.stats
            .map(
              (e) => Stat(
                name: StatName.values.firstWhere((v) => v.value == e.item.name),
                amount: e.baseStat,
              ),
            )
            .toList(),
        types: raw.types
            .map(
              (e) => PokemonType.values.byName(e.type.name),
            )
            .toList(),
        thumbnail: raw.sprites.artwork.officialArtwork.frontDefault,
      );
}
