// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_pokedex/src/core/design_system/theme/bloc/theme_bloc.dart'
    as _i10;
import 'package:flutter_pokedex/src/core/di/di_module.dart' as _i15;
import 'package:flutter_pokedex/src/core/navigation/navigators/pokedex_navigator.dart'
    as _i7;
import 'package:flutter_pokedex/src/core/navigation/router/router.dart' as _i3;
import 'package:flutter_pokedex/src/data/providers/pokemon_api.dart' as _i8;
import 'package:flutter_pokedex/src/domain/repositories/pokemon_repository.dart'
    as _i9;
import 'package:flutter_pokedex/src/domain/usecases/get_all_pokemons_usecase.dart'
    as _i11;
import 'package:flutter_pokedex/src/domain/usecases/get_pokemon_details_usecase.dart'
    as _i12;
import 'package:flutter_pokedex/src/presentation/pokedex/bloc/pokedex_bloc.dart'
    as _i13;
import 'package:flutter_pokedex/src/presentation/pokedex/navigator/pokedex_navigator.dart'
    as _i6;
import 'package:flutter_pokedex/src/presentation/pokemon_details/bloc/pokemon_details_bloc.dart'
    as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

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
    final loggerProvider = _$LoggerProvider();
    gh.lazySingleton<_i3.ClientRouter>(() => _i3.ClientRouter());
    gh.singleton<_i4.Dio>(dioProvider.dio());
    gh.singleton<_i5.Logger>(loggerProvider.logger());
    gh.factory<_i6.PokedexNavigator>(
        () => _i7.ClientPokedexNavigator(gh<_i3.ClientRouter>()));
    gh.lazySingleton<_i8.PokemonApi>(() => _i8.PokemonApi(
          gh<_i4.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrlV2'),
        ));
    gh.factory<_i9.PokemonRepository>(
        () => _i9.PokemonRepository(gh<_i8.PokemonApi>()));
    gh.factory<_i10.ThemeBloc>(() => _i10.ThemeBloc());
    gh.factory<_i11.GetAllPokemonsUsecase>(
        () => _i11.GetAllPokemonsUsecase(gh<_i9.PokemonRepository>()));
    gh.factory<_i12.GetPokemonDetailsUsecase>(
        () => _i12.GetPokemonDetailsUsecase(gh<_i9.PokemonRepository>()));
    gh.factory<_i13.PokedexBloc>(() => _i13.PokedexBloc(
          gh<_i11.GetAllPokemonsUsecase>(),
          gh<_i6.PokedexNavigator>(),
        ));
    gh.factoryParam<_i14.PokemonDetailsBloc, String, dynamic>((
      pokemonName,
      _,
    ) =>
        _i14.PokemonDetailsBloc(
          gh<_i12.GetPokemonDetailsUsecase>(),
          pokemonName,
        ));
    return this;
  }
}

class _$DioProvider extends _i15.DioProvider {}

class _$LoggerProvider extends _i15.LoggerProvider {}
