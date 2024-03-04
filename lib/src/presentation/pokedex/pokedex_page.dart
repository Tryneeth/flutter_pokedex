import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/core/design_system/pages/portal_page.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_pokedex/src/presentation/pokedex/bloc/pokedex_bloc.dart';

class PokedexPage extends StatelessWidget {
  const PokedexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PokedexBloc>(
        param1: context.read<ThemeBloc>(),
      ),
      child: const _ScaffoldPage(),
    );
  }
}

class _ScaffoldPage extends StatelessWidget {
  const _ScaffoldPage();

  @override
  Widget build(BuildContext context) {
    return PortalPage(
      appBar: AppBar(
        title: const Text('Pokedex'),
        actions: [
          BlocBuilder<PokedexBloc, PokedexState>(
            builder: (context, state) =>
                context.read<PokedexBloc>().state.maybeMap(
                      search: (_) => _closeSearch(context),
                      orElse: () => _searchBtn(context),
                    ),
          ),
        ],
      ),
      body: const _Content(),
    );
  }

  Widget _searchBtn(BuildContext context) => IconButton(
        onPressed: () =>
            context.read<PokedexBloc>().add(const PokedexEvent.goToSearch()),
        icon: const Icon(
          Icons.search,
        ),
      );

  Widget _closeSearch(BuildContext context) => IconButton(
        onPressed: () =>
            context.read<PokedexBloc>().add(const PokedexEvent.load()),
        icon: const Icon(
          Icons.close,
        ),
      );
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokedexBloc, PokedexState>(
      builder: (context, state) => state.maybeMap(
        content: (st) => _PokemonList(names: st.names),
        search: (st) => _Search(st.input),
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

class _Search extends StatefulWidget {
  const _Search(this.input);
  final String input;

  @override
  State<_Search> createState() => _SearchState();
}

class _SearchState extends State<_Search> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: widget.input);
  }

  @override
  Widget build(BuildContext context) {
    return PortalPage(
      body: BlocBuilder<PokedexBloc, PokedexState>(
        builder: (context, state) => state.maybeMap(
          search: (st) => Stack(
            children: [
              ListView.builder(
                padding: dimen.top.xl,
                shrinkWrap: true,
                itemCount: st.matchingNames.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(st.matchingNames[index]),
                  onTap: () => context.read<PokedexBloc>().add(
                        PokedexEvent.pokemonDetails(st.matchingNames[index]),
                      ),
                ),
              ),
              TextField(
                controller: _controller,
                onChanged: (value) => searchInputListener(context),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                ),
              ),
            ],
          ),
          orElse: () => const LoadingView(),
        ),
      ),
    );
  }

  void searchInputListener(BuildContext context) {
    Future.delayed(const Duration(seconds: 1)).then(
      (_) => context
          .read<PokedexBloc>()
          .add(PokedexEvent.search(input: _controller.text)),
    );
  }
}
