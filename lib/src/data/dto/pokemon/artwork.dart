part of "pokemon_response.dart";

@Freezed(toJson: false)
abstract class Artwork with _$Artwork {
  factory Artwork({
    @JsonKey(name: "official-artwork") required OfficialArtwork officialArtwork,
  }) = _Artwork;

  factory Artwork.fromJson(Map<String, dynamic> json) =>
      _$ArtworkFromJson(json);
}
