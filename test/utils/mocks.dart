import 'package:flutter_pokedex/src/data/providers/captured_hive.dart';
import 'package:flutter_pokedex/src/domain/models/hive_adapters/hive_pokemon.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon_type.dart';
import 'package:flutter_pokedex/src/presentation/navigator/pokedex_navigator.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<CapturedHive>(), MockSpec<PokedexNavigator>()])
final hiveBulbasaur = HivePokemon(
  id: 1,
  name: 'bulbasaur',
  types: [PokemonType.grass],
  thumbnail: 'thumbnail',
);

final hiveCapturedPokemonsEvenType = [
  HivePokemon(
    id: 1,
    name: 'grass_pokemon_1',
    types: [PokemonType.grass],
    thumbnail: 'thumbnail',
  ),
  HivePokemon(
    id: 2,
    name: 'water_pokemon_1',
    types: [PokemonType.water],
    thumbnail: 'thumbnail',
  ),
  HivePokemon(
    id: 3,
    name: 'fire_pokemon_1',
    types: [PokemonType.fire],
    thumbnail: 'thumbnail',
  ),
];

final hiveCapturedPokemonsFirePredominant = [
  HivePokemon(
    id: 1,
    name: 'grass_pokemon_1',
    types: [PokemonType.grass],
    thumbnail: 'thumbnail',
  ),
  HivePokemon(
    id: 2,
    name: 'water_pokemon_1',
    types: [PokemonType.water],
    thumbnail: 'thumbnail',
  ),
  HivePokemon(
    id: 3,
    name: 'fire_pokemon_1',
    types: [PokemonType.fire],
    thumbnail: 'thumbnail',
  ),
  HivePokemon(
    id: 3,
    name: 'fire_pokemon_2',
    types: [PokemonType.fire],
    thumbnail: 'thumbnail',
  ),
];

const pokemonList = '''
{
    "count": 1302,
    "next": "https://pokeapi.co/api/v2/pokemon?offset=2&limit=2",
    "previous": null,
    "results": [
        {
            "name": "bulbasaur",
            "url": "https://pokeapi.co/api/v2/pokemon/1/"
        },
        {
            "name": "ivysaur",
            "url": "https://pokeapi.co/api/v2/pokemon/2/"
        }
    ]
}
''';

const bulbasaurJson = '''
{
    "base_experience": 64,
    "height": 7,
    "id": 1,
    "is_default": true,
    "location_area_encounters": "https://pokeapi.co/api/v2/pokemon/1/encounters",
    "name": "bulbasaur",
    "order": 1,
    "sprites": {
        "other": {
            "official-artwork": {
                "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png",
                "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/1.png"
            }
        }
    },
    "stats": [
        {
            "base_stat": 45,
            "effort": 0,
            "stat": {
                "name": "hp",
                "url": "https://pokeapi.co/api/v2/stat/1/"
            }
        },
        {
            "base_stat": 49,
            "effort": 0,
            "stat": {
                "name": "attack",
                "url": "https://pokeapi.co/api/v2/stat/2/"
            }
        },
        {
            "base_stat": 49,
            "effort": 0,
            "stat": {
                "name": "defense",
                "url": "https://pokeapi.co/api/v2/stat/3/"
            }
        },
        {
            "base_stat": 65,
            "effort": 1,
            "stat": {
                "name": "special-attack",
                "url": "https://pokeapi.co/api/v2/stat/4/"
            }
        },
        {
            "base_stat": 65,
            "effort": 0,
            "stat": {
                "name": "special-defense",
                "url": "https://pokeapi.co/api/v2/stat/5/"
            }
        },
        {
            "base_stat": 45,
            "effort": 0,
            "stat": {
                "name": "speed",
                "url": "https://pokeapi.co/api/v2/stat/6/"
            }
        }
    ],
    "types": [
        {
            "slot": 1,
            "type": {
                "name": "grass",
                "url": "https://pokeapi.co/api/v2/type/12/"
            }
        },
        {
            "slot": 2,
            "type": {
                "name": "poison",
                "url": "https://pokeapi.co/api/v2/type/4/"
            }
        }
    ],
    "weight": 69
}
''';
