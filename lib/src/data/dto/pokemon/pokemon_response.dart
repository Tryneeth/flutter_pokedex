import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_response.dart';
part 'type_response.dart';
part 'item_response.dart';
part 'official_artwork.dart';
part 'artwork_response.dart';

part 'pokemon_response.freezed.dart';
part 'pokemon_response.g.dart';

@Freezed(toJson: false)
class PokemonResponse with _$PokemonResponse {
  const factory PokemonResponse({
    required int height,
    required int id,
    required String name,
    required int weight,
    @JsonKey(name: 'base_experience') required int baseXP,
    int? order,
    List<StatResponse>? stats,
    List<TypeResponse>? types,
    required ArtworkResponse artwork,
  }) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);
}
