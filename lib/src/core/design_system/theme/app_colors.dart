part of 'theme.dart';

const defaultColor = Color(0XFFCC0000);

extension PokemonTypeExtension on PokemonType {
  Color get color => switch (this) {
        PokemonType.normal => const Color(0xFFA8A878),
        PokemonType.fire => const Color(0xFFF08030),
        PokemonType.water => const Color(0xFF6890F0),
        PokemonType.electric => const Color(0xFFF8D030),
        PokemonType.grass => const Color(0xFF78C850),
        PokemonType.ice => const Color(0xFF98D8D8),
        PokemonType.fighting => const Color(0xFFC03028),
        PokemonType.poison => const Color(0xFFA040A0),
        PokemonType.ground => const Color(0xFFE0C068),
        PokemonType.flying => const Color(0xFFA890F0),
        PokemonType.psychic => const Color(0xFFF85888),
        PokemonType.bug => const Color(0xFFA8B820),
        PokemonType.rock => const Color(0xFFB8A038),
        PokemonType.ghost => const Color(0xFF705898),
        PokemonType.dragon => const Color(0xFF7038F8),
        PokemonType.dark => const Color(0xFF705848),
        PokemonType.steel => const Color(0xFFB8B8D0),
        PokemonType.fairy => const Color(0xFFEE99AC),
        PokemonType.unknown => const Color(0xFF68A090),
        PokemonType.shadow => const Color(0xFF604E82),
      };
}
