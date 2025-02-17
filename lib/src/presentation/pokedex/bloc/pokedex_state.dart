part of 'pokedex_bloc.dart';

@freezed
class PokedexState with _$PokedexState {
  const factory PokedexState.initial() = _InitialPokedexState;

  const factory PokedexState.loading() = _LoadingPokedexState;

  const factory PokedexState.content({
    required List<String> names,
  }) = _ContentPokedexState;

  const factory PokedexState.search({
    required List<String> names,
    @Default([]) List<String> matchingNames,
    @Default('') String input,
  }) = _SearchPokedexState;

  const factory PokedexState.error(Exception error) = _ErrorPokedexState;
}
