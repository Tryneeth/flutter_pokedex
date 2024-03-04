import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon.dart';
import 'package:flutter_pokedex/src/presentation/pokemon_details/bloc/pokemon_details_bloc.dart';

class PokemonDetailsPage extends StatelessWidget {
  const PokemonDetailsPage({
    super.key,
    required this.pokemonName,
  });

  final String pokemonName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PokemonDetailsBloc>(param1: pokemonName),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: const _Content(),
          bottomSheet: const _BottomActionBar(),
        ),
      ),
    );
  }
}

class _BottomActionBar extends StatelessWidget {
  const _BottomActionBar();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<PokemonDetailsBloc, PokemonDetailsState, bool>(
      selector: (state) {
        return state.maybeMap(content: (_) => true, orElse: () => false);
      },
      builder: (context, state) {
        return state
            ? BottomBar(
                bottomBar: Row(
                  children: [
                    Expanded(
                      child: FilledButton(
                        child: const Text('Capture'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink();
      },
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
        error: (st) => ErrorView(
          error: st.error,
          onRetry: () => context
              .read<PokemonDetailsBloc>()
              .add(const PokemonDetailsEvent.load()),
        ),
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
    return SizedBox.fromSize(
      size: MediaQuery.of(context).size,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Ink(color: pokemon.types.first.color),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Ink(
                decoration: BoxDecoration(
                  color: context.appTheme.scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: dimen.all.xs,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: xl * 2),
                  _Header(pokemon: pokemon),
                  const SizedBox(height: xs),
                  CachedNetworkImage(
                    imageUrl: pokemon.thumbnail,
                    cacheKey: pokemon.name,
                    width: 300,
                    height: 300,
                  ),
                  _Stats(pokemon: pokemon),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final hStyle = context.appTheme.primaryTextTheme.headlineLarge?.copyWith(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              pokemon.name.toUpperCase(),
              style: hStyle,
            ),
            _PokemonTypesChips(pokemon: pokemon),
          ],
        ),
        const Spacer(),
        Text(
          '# ${pokemon.order}',
          style: hStyle,
        ),
      ],
    );
  }
}

class _PokemonTypesChips extends StatelessWidget {
  const _PokemonTypesChips({
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: pokemon.types
          .map(
            (e) => Padding(
              padding: dimen.right.micro,
              child: RawChip(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                label: Text(e.name),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _Stats extends StatelessWidget {
  const _Stats({required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Stats',
          style: context.appTheme.primaryTextTheme.headlineSmall
              ?.copyWith(color: Colors.black),
        ),
        const Divider(),
        _StatRow(name: 'Height', amount: '${pokemon.height}'),
        _StatRow(name: 'Weight', amount: '${pokemon.weight}'),
        const Divider(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...pokemon.stats.map(
              (stat) => Padding(
                padding: dimen.bottom.micro,
                child: _StatRow(
                  name: stat.name.value,
                  amount: '${stat.amount}',
                ),
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}

class _StatRow extends StatelessWidget {
  const _StatRow({
    required this.name,
    required this.amount,
  });

  final String name;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name.toUpperCase()),
        const Spacer(),
        Text(
          amount,
          style: context.appTheme.primaryTextTheme.bodyLarge
              ?.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
