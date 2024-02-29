part of 'pokemon_response.dart';

@Freezed(toJson: false)
abstract class Item with _$Item {
   factory Item({
    required String name,
    required String url, 
   }) = _Item;

   factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}