import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/design_system/atoms/dimensions.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon_type.dart';

part 'theme_data.dart';
part 'app_colors.dart';

class PokedexAppTheme {
  static ThemeData getThemeByType(PokemonType type) {
    return ThemeData.from(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: type.color,
      ),
    ).common;
  }

  static ThemeData defaultTheme() => ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: defaultColor,
        ),
      ).common;
}
