part of 'pokemon_response.dart';

@Freezed(toJson: false)
class Type with _$Type {
  factory Type({
    int? slot,
    Item? type,
  }) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}
