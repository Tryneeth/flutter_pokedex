import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_pokedex/src/presentation/pokedex/bloc/pokedex_bloc.dart';

class PokedexPage extends StatelessWidget {
  const PokedexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: BlocProvider(
        create: (context) => getIt<PokedexBloc>(),
        child: const _Content(),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokedexBloc, PokedexState>(
      builder: (context, state) => state.maybeMap(
        content: (st) => _PokemonList(names: st.names),
        error: (st) => ErrorView(
          error: st.error,
          onRetry: () =>
              context.read<PokedexBloc>().add(const PokedexEvent.load()),
        ),
        orElse: () => const LoadingView(),
      ),
    );
  }
}

class _PokemonList extends StatelessWidget {
  const _PokemonList({required this.names});

  final List<String> names;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (context, i) => ListTile(
        title: Text(names[i]),
        onTap: () => context
            .read<PokedexBloc>()
            .add(PokedexEvent.pokemonDetails(names[i])),
      ),
    );
  }
}
