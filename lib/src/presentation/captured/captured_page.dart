import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/core/design_system/pages/portal_page.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_pokedex/src/domain/models/hive_adapters/hive_pokemon.dart';
import 'package:flutter_pokedex/src/presentation/captured/bloc/captured_bloc.dart';
import 'package:flutter_pokedex/src/presentation/captured/widgets/filter_widget.dart';

class CapturedPage extends StatelessWidget {
  const CapturedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<CapturedBloc>();
    return PortalPage(
      appBar: AppBar(
        title: const Text('Captured'),
        actions: [
          IconButton(
            onPressed: () => _showBottomSheet(context, bloc),
            icon: const Icon(Icons.filter_alt_outlined),
          ),
        ],
      ),
      body: BlocProvider.value(
        value: bloc,
        child: const _Content(),
      ),
    );
  }

  Future<void> _showBottomSheet(
    BuildContext context,
    CapturedBloc bloc,
  ) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => FilterWidget(
        bloc: bloc,
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CapturedBloc, CapturedState>(
      builder: (context, state) => state.maybeMap(
        content: (st) => st.filteredList.isEmpty
            ? const _NoneCaptured()
            : _PokemonGrid(capturedList: st.filteredList),
        error: (st) => ErrorView(
          error: st.error,
          onRetry: () =>
              context.read<CapturedBloc>().add(const CapturedEvent.load()),
        ),
        orElse: () => const LoadingView(),
      ),
    );
  }
}

class _PokemonGrid extends StatelessWidget {
  const _PokemonGrid({required this.capturedList});

  final List<HivePokemon> capturedList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: dimen.all.xs,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: xs,
        crossAxisSpacing: xs,
      ),
      itemCount: capturedList.length,
      itemBuilder: (context, index) {
        final pokemon = capturedList[index];
        return PokemonCard(
          id: pokemon.id,
          name: pokemon.name,
          color: pokemon.types.first.color,
          thumbnail: pokemon.thumbnail,
          onTap: () => context.read<CapturedBloc>().add(
                CapturedEvent.pokemonDetails(pokemon.name),
              ),
        );
      },
    );
  }
}

class _NoneCaptured extends StatelessWidget {
  const _NoneCaptured();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('You don\'t have any pokemon captured'),
    );
  }
}
