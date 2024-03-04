import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/core/navigation/router/router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: context.appTheme.primaryColor,
            ),
            child: Center(
              child: Text(
                'Pokedex',
                style: context.appTheme.primaryTextTheme.displaySmall
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () => context.router.replaceAll(
              [const PokedexRoute()],
            ),
          ),
          ListTile(
            title: const Text('Captured'),
            onTap: () => context.router.replaceAll(
              [const CapturedRoute()],
            ),
          ),
        ],
      ),
    );
  }
}
