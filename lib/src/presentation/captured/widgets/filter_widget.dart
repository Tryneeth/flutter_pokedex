import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon_type.dart';
import 'package:flutter_pokedex/src/presentation/captured/bloc/captured_bloc.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key,
    required this.bloc,
  });

  final CapturedBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<CapturedBloc, CapturedState>(
        builder: (context, state) {
          return Container(
            padding: dimen.all.xs,
            decoration: BoxDecoration(
              color: context.appTheme.scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: xs),
                _OrderBy(state),
                const SizedBox(height: xs),
                _FilterBy(state),
                const SizedBox(height: xs),
                PrimaryButton.responsive(
                  title: 'Accept',
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _OrderBy extends StatelessWidget {
  const _OrderBy(this.state);

  final CapturedState state;

  @override
  Widget build(BuildContext context) {
    final contentState = state.mapOrNull(content: (value) => value);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          title: Text('Sort'),
        ),
        ListTile(
          title: const Text('By ID'),
          leading: Radio<Sort>(
            value: Sort.byId,
            groupValue: contentState?.sort,
            onChanged: (value) {
              context.read<CapturedBloc>().add(
                    CapturedEvent.sortAndFilter(
                      sort: value!,
                      filter: contentState!.filter,
                    ),
                  );
            },
          ),
        ),
        ListTile(
          title: const Text('By Name'),
          leading: Radio<Sort>(
            value: Sort.byName,
            groupValue: contentState?.sort,
            onChanged: (value) {
              context.read<CapturedBloc>().add(
                    CapturedEvent.sortAndFilter(
                      sort: value!,
                      filter: contentState!.filter,
                    ),
                  );
            },
          ),
        ),
      ],
    );
  }
}

class _FilterBy extends StatelessWidget {
  const _FilterBy(this.state);

  final CapturedState state;

  @override
  Widget build(BuildContext context) {
    final contentState = state.mapOrNull(content: (value) => value);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          title: Text('Filter'),
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: 5,
          semanticChildCount: PokemonType.values.length,
          children: [
            ...PokemonType.values.map(
              (e) => CheckboxListTile(
                title: Text(e.name),
                value: contentState?.filter.contains(e),
                onChanged: (bool? value) {
                  if (value!) {
                    context.read<CapturedBloc>().add(
                          CapturedEvent.sortAndFilter(
                            sort: contentState!.sort,
                            filter: [...contentState.filter, e],
                          ),
                        );
                  } else {
                    context.read<CapturedBloc>().add(
                          CapturedEvent.sortAndFilter(
                            sort: contentState!.sort,
                            filter: contentState.filter
                                .where((element) => element != e)
                                .toList(),
                          ),
                        );
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
