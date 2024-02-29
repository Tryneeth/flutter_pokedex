part of 'theme.dart';

const defaultColor = Color(0XFFCC0000);

extension PokemonTypeExtension on PokemonType {
  Color get color => switch (this) {
        PokemonType.normal => const Color(0xFFAAB09F),
        PokemonType.fire => const Color(0xFFEA7A3C),
        PokemonType.water => const Color(0xFF539AE2),
        PokemonType.electric => const Color(0xFFE5C531),
        PokemonType.grass => const Color(0xFF71C558),
        PokemonType.ice => const Color(0xFF70CBD4),
        PokemonType.fighting => const Color(0xFFCB5F48),
        PokemonType.poison => const Color(0xFFB468B7),
        PokemonType.ground => const Color(0xFFCC9F4F),
        PokemonType.flying => const Color(0xFF7DA6DE),
        PokemonType.psychic => const Color(0xFFE5709B),
        PokemonType.bug => const Color(0xFF94BC4A),
        PokemonType.rock => const Color(0xFFB2A061),
        PokemonType.ghost => const Color(0xFF846AB6),
        PokemonType.dragon => const Color(0xFF6A7BAF),
        PokemonType.dark => const Color(0xFF736C75),
        PokemonType.steel => const Color(0xFF89A1B0),
        PokemonType.fairy => const Color(0xFFE397D1),
        PokemonType.unknown => const Color(0xFF68A090),
        PokemonType.shadow => const Color(0xFF604E82),
      };
}
