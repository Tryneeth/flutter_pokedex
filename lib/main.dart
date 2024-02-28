import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/theme/bloc/theme_bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/theme/theme.dart';
import 'package:flutter_pokedex/src/core/enums/pokemon_type.dart';

void main() {
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Pokédex Code Challenge',
            theme: state.currentTheme,
            home: const Home(),
          );
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const types = PokemonType.values;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokédex Code Challenge'),
      ),
      body: ListView.builder(
        itemCount: types.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(types[i].name),
          onTap: () {
            context.read<ThemeBloc>().add(
                  ThemeEvent.change(PokedexAppTheme.getThemeByType(types[i])),
                );
          },
        ),
      ),
    );
  }
}
