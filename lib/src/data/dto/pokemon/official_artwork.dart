part of 'pokemon_response.dart';

@Freezed(toJson: false)
class OfficialArtwork with _$OfficialArtwork {
  factory OfficialArtwork({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
  }) = _OfficialArtwork;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);
}
