part of "pokemon_response.dart";

@Freezed(toJson: false)
abstract class ArtworkResponse with _$ArtworkResponse {
  factory ArtworkResponse({
    @JsonKey(name: "official-artwork")
    required OfficialArtworkResponse officialArtwork,
  }) = _ArtworkResponse;

  factory ArtworkResponse.fromJson(Map<String, dynamic> json) =>
      _$ArtworkResponseFromJson(json);
}
