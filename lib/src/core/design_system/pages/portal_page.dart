import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/core/design_system/molecules/app_drawer.dart';

class PortalPage extends StatelessWidget {
  const PortalPage({
    super.key,
    required this.body,
    this.bottomBar,
    this.appBar,
    this.extendBodyBehindAppBar = false,
    this.showDrawer = true,
  });

  final Widget body;
  final Widget? bottomBar;
  final AppBar? appBar;
  final bool extendBodyBehindAppBar;
  final bool showDrawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      drawer: showDrawer ? const AppDrawer() : null,
      body: body,
      bottomSheet: BottomBar(bottomBar: bottomBar),
    );
  }
}
