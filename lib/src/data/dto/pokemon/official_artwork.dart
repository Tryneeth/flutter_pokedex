part of 'pokemon_response.dart';

@Freezed(toJson: false)
class OfficialArtworkResponse with _$OfficialArtworkResponse {
  factory OfficialArtworkResponse({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
  }) = _OfficialArtworkResponse;

  factory OfficialArtworkResponse.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkResponseFromJson(json);
}
