// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_pokemon.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonAdapter extends TypeAdapter<HivePokemon> {
  @override
  final int typeId = 0;

  @override
  HivePokemon read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HivePokemon(
      id: fields[0] as int,
      name: fields[1] as String,
      types: (fields[2] as List).cast<PokemonType>(),
      thumbnail: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HivePokemon obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.types)
      ..writeByte(3)
      ..write(obj.thumbnail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HivePokemon _$HivePokemonFromJson(Map<String, dynamic> json) => HivePokemon(
      id: json['id'] as int,
      name: json['name'] as String,
      types: (json['types'] as List<dynamic>)
          .map((e) => $enumDecode(_$PokemonTypeEnumMap, e))
          .toList(),
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$HivePokemonToJson(HivePokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'types': instance.types.map((e) => _$PokemonTypeEnumMap[e]!).toList(),
      'thumbnail': instance.thumbnail,
    };

const _$PokemonTypeEnumMap = {
  PokemonType.normal: 'normal',
  PokemonType.fire: 'fire',
  PokemonType.water: 'water',
  PokemonType.electric: 'electric',
  PokemonType.grass: 'grass',
  PokemonType.ice: 'ice',
  PokemonType.fighting: 'fighting',
  PokemonType.poison: 'poison',
  PokemonType.ground: 'ground',
  PokemonType.flying: 'flying',
  PokemonType.psychic: 'psychic',
  PokemonType.bug: 'bug',
  PokemonType.rock: 'rock',
  PokemonType.ghost: 'ghost',
  PokemonType.dragon: 'dragon',
  PokemonType.dark: 'dark',
  PokemonType.steel: 'steel',
  PokemonType.fairy: 'fairy',
  PokemonType.unknown: 'unknown',
  PokemonType.shadow: 'shadow',
};
