enum StatName {
  hp('hp'),
  attack('attack'),
  defense('defense'),
  specialAttack('special-attack'),
  specialDefense('special-defense'),
  speed('speed'),
  unknown('unknown');

  const StatName(this.value);

  final String value;
}
