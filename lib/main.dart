import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/design_system/theme/theme.dart';
import 'package:flutter_pokedex/src/core/enums/pokemon_type.dart';

void main() {
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex Code Challenge',
      theme: PokedexAppTheme.getThemeByType(PokemonType.water),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Pokédex Code Challenge'),
      ),
      body: const Center(child: Text('Lee el README para comenzar')),
    );
  }
}
