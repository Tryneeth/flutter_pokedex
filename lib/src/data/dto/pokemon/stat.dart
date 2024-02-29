part of 'pokemon_response.dart';

@Freezed(toJson: false)
class Stat with _$Stat {
  factory Stat({
    @JsonKey(name: 'base_stat') int? baseStat,
    int? effort,
    @JsonKey(name: 'stat') required Item item,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}
