import 'package:flutter_pokedex/src/domain/models/stat_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stat.freezed.dart';

@freezed
abstract class Stat with _$Stat {
   const factory Stat({
    required StatName name,
    required int amount,
   }) = _Stat;
}