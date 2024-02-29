part of 'pokemon_response.dart';

@Freezed(toJson: false)
abstract class ItemResponse with _$ItemResponse {
  factory ItemResponse({
    required String name,
    required String url,
  }) = _ItemResponse;

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);
}
