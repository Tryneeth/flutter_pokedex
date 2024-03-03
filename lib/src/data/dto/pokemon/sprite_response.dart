part of 'pokemon_response.dart';

@Freezed(toJson: false)
abstract class SpritesResponse with _$SpritesResponse {
  factory SpritesResponse({
    @JsonKey(name: 'other')
    required ArtworkResponse artwork,
  }) = _SpritesResponse;
  factory SpritesResponse.fromJson(Map<String, dynamic> json) =>
      _$SpritesResponseFromJson(json);
}
