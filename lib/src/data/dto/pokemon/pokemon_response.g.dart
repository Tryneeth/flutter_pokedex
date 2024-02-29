// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonResponseImpl _$$PokemonResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonResponseImpl(
      height: json['height'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      weight: json['weight'] as int,
      baseXP: json['base_experience'] as int,
      order: json['order'] as int?,
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => StatResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => TypeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      artwork:
          ArtworkResponse.fromJson(json['artwork'] as Map<String, dynamic>),
    );

_$StatResponseImpl _$$StatResponseImplFromJson(Map<String, dynamic> json) =>
    _$StatResponseImpl(
      baseStat: json['base_stat'] as int,
      effort: json['effort'] as int,
      item: ItemResponse.fromJson(json['stat'] as Map<String, dynamic>),
    );

_$TypeResponseImpl _$$TypeResponseImplFromJson(Map<String, dynamic> json) =>
    _$TypeResponseImpl(
      slot: json['slot'] as int,
      type: ItemResponse.fromJson(json['type'] as Map<String, dynamic>),
    );

_$ItemResponseImpl _$$ItemResponseImplFromJson(Map<String, dynamic> json) =>
    _$ItemResponseImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

_$OfficialArtworkResponseImpl _$$OfficialArtworkResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OfficialArtworkResponseImpl(
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
    );

_$ArtworkResponseImpl _$$ArtworkResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtworkResponseImpl(
      officialArtwork: OfficialArtworkResponse.fromJson(
          json['official-artwork'] as Map<String, dynamic>),
    );
