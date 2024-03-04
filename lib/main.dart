import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/src/core/design_system/theme/bloc/theme_bloc.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_pokedex/src/core/navigation/navigation.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  appDIInitializer();
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<ClientRouter>();
    return BlocProvider(
      create: (context) => getIt<ThemeBloc>(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Pokédex Code Challenge',
            theme: state.currentTheme,
            routerConfig: router.config(),
          );
        },
      ),
    );
  }
}
