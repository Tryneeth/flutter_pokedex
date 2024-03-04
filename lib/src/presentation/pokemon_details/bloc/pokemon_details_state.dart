part of 'pokemon_details_bloc.dart';

@freezed
class PokemonDetailsState with _$PokemonDetailsState {
  const factory PokemonDetailsState.initial() = _InitialPokemonDetailsState;

  const factory PokemonDetailsState.loading() = _LoadingPokemonDetailsState;

  const factory PokemonDetailsState.content({
    required Pokemon pokemon,
  }) = _ContentPokemonDetailsState;

  const factory PokemonDetailsState.error(Exception error) =
      _ErrorPokemonDetailsState;
}
