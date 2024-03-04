import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat_response.dart';
part 'type_response.dart';
part 'item_response.dart';
part 'official_artwork.dart';
part 'artwork_response.dart';
part 'sprite_response.dart';

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
    required int order,
    required List<StatResponse> stats,
    required List<TypeResponse> types,
    required SpritesResponse sprites,
  }) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);
}
