part of 'pokemon_response.dart';

@Freezed(toJson: false)
class OfficialArtworkResponse with _$OfficialArtworkResponse {
  factory OfficialArtworkResponse({
    @JsonKey(name: 'front_default') required String frontDefault,
    @JsonKey(name: 'front_shiny') required String frontShiny,
  }) = _OfficialArtworkResponse;

  factory OfficialArtworkResponse.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkResponseFromJson(json);
}
