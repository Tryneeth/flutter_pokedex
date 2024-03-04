import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/design_system/atoms/dimensions.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.bottomBar,
  });

  final Widget bottomBar;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: MediaQuery.paddingOf(context).bottom > 0
            ? dimen.all.xs - dimen.bottom.xs
            : dimen.all.xs,
        child: bottomBar,
      ),
    );
  }
}
