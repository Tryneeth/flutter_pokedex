import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat.dart';
part 'type.dart';
part 'item.dart';
part 'official_artwork.dart';
part 'artwork.dart';

part 'pokemon_response.freezed.dart';
part 'pokemon_response.g.dart';

@Freezed(toJson: false)
class PokemonResponse with _$PokemonResponse {
  const factory PokemonResponse({
    required int height,
    required int id,
    required String name,
    required int weight,
    int? order,
    List<Stat>? stats,
    List<Type>? types,
    required Artwork artwork,
  }) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);
}
