import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum StatName {
  @JsonValue('hp')
  hp,
  @JsonValue('special_attack')
  attack,
  @JsonValue('defense')
  defense,
  @JsonValue('special-attack')
  specialAttack,
  @JsonValue('special-defense')
  specialDefense,
  @JsonValue('speed')
  speed,
}