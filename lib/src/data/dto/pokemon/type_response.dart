part of 'pokemon_response.dart';

@Freezed(toJson: false)
class TypeResponse with _$TypeResponse {
  factory TypeResponse({
    int? slot,
    ItemResponse? type,
  }) = _TypeResponse;

  factory TypeResponse.fromJson(Map<String, dynamic> json) =>
      _$TypeResponseFromJson(json);
}
