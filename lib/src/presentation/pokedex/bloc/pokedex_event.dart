part of 'pokedex_bloc.dart';

@freezed
class PokedexEvent with _$PokedexEvent {
  const factory PokedexEvent.load() = _LoadPokedexEvent;
}