import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';

class DummyApp extends StatelessWidget {
  const DummyApp({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ThemeBloc>(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Pokédex Code Challenge',
            theme: state.currentTheme,
            home: child,
          );
        },
      ),
    );
  }
}
