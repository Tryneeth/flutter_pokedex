part of 'pokemon_response.dart';

@Freezed(toJson: false)
class StatResponse with _$StatResponse {
  factory StatResponse({
    @JsonKey(name: 'base_stat') required int baseStat,
    required int effort,
    @JsonKey(name: 'stat') required ItemResponse item,
  }) = _StatResponse;

  factory StatResponse.fromJson(Map<String, dynamic> json) =>
      _$StatResponseFromJson(json);
}
