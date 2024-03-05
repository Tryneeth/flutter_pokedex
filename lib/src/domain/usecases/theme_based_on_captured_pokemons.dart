import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/domain/models/hive_adapters/hive_pokemon.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon_type.dart';
import 'package:injectable/injectable.dart';

@injectable
class ThemeBasedOnCapturedPokemons {
  ThemeData call(List<HivePokemon> pokemons) {
    if (pokemons.isEmpty) {
      return PokedexAppTheme.defaultTheme();
    }

    Map<PokemonType, int> typeCount = {};

    for (var pokemon in pokemons) {
      typeCount[pokemon.types.first] =
          (typeCount[pokemon.types.first] ?? 0) + 1;
    }

    PokemonType? maxType;
    int maxOccurrence = 0;
    bool tight = false;

    typeCount.forEach((type, occurrence) {
      if (occurrence > maxOccurrence) {
        maxOccurrence = occurrence;
        maxType = type;
        tight = false;
      } else if (occurrence == maxOccurrence) {
        tight = true;
      }
    });

    if (tight || maxType == null) {
      return PokedexAppTheme.defaultTheme();
    } else {
      return PokedexAppTheme.getThemeByType(maxType!);
    }
  }
}
