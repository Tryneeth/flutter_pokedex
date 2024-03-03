import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon.dart';
import 'package:flutter_pokedex/src/presentation/pokemon_details/bloc/pokemon_details_bloc.dart';

class PokemonDetailsPage extends StatelessWidget {
  const PokemonDetailsPage({super.key, required this.pokemonName});

  final String pokemonName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PokemonDetailsBloc>(param1: pokemonName),
      child: Scaffold(
        appBar: AppBar(
          title: Text(pokemonName),
        ),
        body: const _Content(),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsBloc, PokemonDetailsState>(
      builder: (context, state) => state.maybeMap(
        content: (st) => _PokemonDetailsScreen(st.pokemon),
        error: (st) => ErrorView(error: st.error, onRetry: () => context.read<PokemonDetailsBloc>().add(const PokemonDetailsEvent.load())),
        orElse: () => const LoadingView(),
      ),
    );
  }
}

class _PokemonDetailsScreen extends StatelessWidget {
  const _PokemonDetailsScreen(this.pokemon);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(pokemon.name)],
    );
  }
}
