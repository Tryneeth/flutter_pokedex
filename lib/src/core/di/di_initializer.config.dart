// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_pokedex/src/core/design_system/theme/bloc/theme_bloc.dart'
    as _i6;
import 'package:flutter_pokedex/src/core/di/di_module.dart' as _i10;
import 'package:flutter_pokedex/src/data/providers/pokemon_api.dart' as _i4;
import 'package:flutter_pokedex/src/domain/repositories/pokemon_repository.dart'
    as _i5;
import 'package:flutter_pokedex/src/domain/usecases/get_all_pokemons_usecase.dart'
    as _i7;
import 'package:flutter_pokedex/src/domain/usecases/get_pokemon_details_usecase.dart'
    as _i8;
import 'package:flutter_pokedex/src/presentation/pokedex/bloc/pokedex_bloc.dart'
    as _i9;
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
    final dioProvider = _$DioProvider();
    gh.singleton<_i3.Dio>(dioProvider.dio());
    gh.lazySingleton<_i4.PokemonApi>(() => _i4.PokemonApi(
          gh<_i3.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrlV2'),
        ));
    gh.factory<_i5.PokemonRepository>(
        () => _i5.PokemonRepository(gh<_i4.PokemonApi>()));
    gh.factory<_i6.ThemeBloc>(() => _i6.ThemeBloc());
    gh.factory<_i7.GetAllPokemonsUsecase>(
        () => _i7.GetAllPokemonsUsecase(gh<_i5.PokemonRepository>()));
    gh.factory<_i8.GetPokemonDetailsUsecase>(
        () => _i8.GetPokemonDetailsUsecase(gh<_i5.PokemonRepository>()));
    gh.factory<_i9.PokedexBloc>(
        () => _i9.PokedexBloc(gh<_i7.GetAllPokemonsUsecase>()));
    return this;
  }
}

class _$DioProvider extends _i10.DioProvider {}
