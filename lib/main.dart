import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/theme/bloc/theme_bloc.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_pokedex/src/presentation/pokedex/pokedex_page.dart';

void main() {
  appDIInitializer();
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
            home: const PokedexPage(),
          );
        },
      ),
    );
  }
}
