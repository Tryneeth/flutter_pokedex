import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.name,
    required this.color,
    required this.id,
    required this.thumbnail,
    required this.onTap,
  });

  final String name;
  final Color color;
  final int id;
  final String thumbnail;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: micro),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: CachedNetworkImage(
                imageUrl: thumbnail,
                cacheKey: name,
                width: 100,
                height: 100,
              ),
            ),
            Positioned(
              top: sm,
              left: sm,
              child: Center(
                child: Text(
                  name,
                  style: context.appTheme.primaryTextTheme.headlineSmall,
                ),
              ),
            ),
            Positioned(
              bottom: sm,
              left: sm,
              child: Center(
                child: Text(
                  '#$id',
                  style: context.appTheme.primaryTextTheme.bodySmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
