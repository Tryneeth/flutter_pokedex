// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_pokedex/src/data/providers/pokemon_api.dart' as _i3;
import 'package:flutter_pokedex/src/domain/repositories/pokemon_repository.dart'
    as _i5;
import 'package:flutter_pokedex/src/domain/usecases/get_all_pokemons_usecase.dart'
    as _i6;
import 'package:flutter_pokedex/src/domain/usecases/get_pokemon_details_usecase.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.PokemonApi>(() => _i3.PokemonApi(
          gh<_i4.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrlV2'),
        ));
    gh.factory<_i5.PokemonRepository>(
        () => _i5.PokemonRepository(gh<_i3.PokemonApi>()));
    gh.factory<_i6.GetAllPokemonsUsecase>(
        () => _i6.GetAllPokemonsUsecase(gh<_i5.PokemonRepository>()));
    gh.factory<_i7.GetPokemonDetailsUsecase>(
        () => _i7.GetPokemonDetailsUsecase(gh<_i5.PokemonRepository>()));
    return this;
  }
}
