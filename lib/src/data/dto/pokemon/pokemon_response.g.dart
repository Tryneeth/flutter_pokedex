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
      order: json['order'] as int?,
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => Stat.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => Type.fromJson(e as Map<String, dynamic>))
          .toList(),
      artwork: Artwork.fromJson(json['artwork'] as Map<String, dynamic>),
    );

_$StatImpl _$$StatImplFromJson(Map<String, dynamic> json) => _$StatImpl(
      baseStat: json['base_stat'] as int?,
      effort: json['effort'] as int?,
      item: Item.fromJson(json['stat'] as Map<String, dynamic>),
    );

_$TypeImpl _$$TypeImplFromJson(Map<String, dynamic> json) => _$TypeImpl(
      slot: json['slot'] as int?,
      type: json['type'] == null
          ? null
          : Item.fromJson(json['type'] as Map<String, dynamic>),
    );

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

_$OfficialArtworkImpl _$$OfficialArtworkImplFromJson(
        Map<String, dynamic> json) =>
    _$OfficialArtworkImpl(
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
    );

_$ArtworkImpl _$$ArtworkImplFromJson(Map<String, dynamic> json) =>
    _$ArtworkImpl(
      officialArtwork: OfficialArtwork.fromJson(
          json['official-artwork'] as Map<String, dynamic>),
    );
