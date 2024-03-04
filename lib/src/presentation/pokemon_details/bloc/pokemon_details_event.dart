part of 'pokemon_details_bloc.dart';

@freezed
class PokemonDetailsEvent with _$PokemonDetailsEvent {
  const factory PokemonDetailsEvent.load() = _LoadPokemonDetailsEvent;
  const factory PokemonDetailsEvent.capture() = _CapturePokemonDetailsEvent;
}
