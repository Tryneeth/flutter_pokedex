// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:flutter_pokedex/src/core/design_system/theme/bloc/theme_bloc.dart'
    as _i16;
import 'package:flutter_pokedex/src/core/di/di_module.dart' as _i21;
import 'package:flutter_pokedex/src/core/navigation/navigators/pokedex_navigator.dart'
    as _i12;
import 'package:flutter_pokedex/src/core/navigation/router/router.dart' as _i5;
import 'package:flutter_pokedex/src/data/providers/captured_hive.dart' as _i3;
import 'package:flutter_pokedex/src/data/providers/pokemon_api.dart' as _i13;
import 'package:flutter_pokedex/src/domain/repositories/captured_repository.dart'
    as _i4;
import 'package:flutter_pokedex/src/domain/repositories/pokemon_repository.dart'
    as _i14;
import 'package:flutter_pokedex/src/domain/usecases/get_all_captured_pokemons_usecase.dart'
    as _i7;
import 'package:flutter_pokedex/src/domain/usecases/get_all_pokemons_usecase.dart'
    as _i17;
import 'package:flutter_pokedex/src/domain/usecases/get_captured_pokemon_usecase.dart'
    as _i8;
import 'package:flutter_pokedex/src/domain/usecases/get_pokemon_details_usecase.dart'
    as _i18;
import 'package:flutter_pokedex/src/domain/usecases/save_captured_pokemon_usecase.dart'
    as _i15;
import 'package:flutter_pokedex/src/presentation/pokedex/bloc/pokedex_bloc.dart'
    as _i19;
import 'package:flutter_pokedex/src/presentation/pokedex/navigator/pokedex_navigator.dart'
    as _i11;
import 'package:flutter_pokedex/src/presentation/pokemon_details/bloc/pokemon_details_bloc.dart'
    as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i10;

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
    final hiveIntervaceProvider = _$HiveIntervaceProvider();
    final loggerProvider = _$LoggerProvider();
    gh.singleton<_i3.CapturedHive>(
        _i3.CapturedHive(gh<String>(instanceName: 'pokemonHiveId')));
    gh.factory<_i4.CapturedRepository>(
        () => _i4.CapturedRepository(gh<_i3.CapturedHive>()));
    gh.lazySingleton<_i5.ClientRouter>(() => _i5.ClientRouter());
    gh.singleton<_i6.Dio>(dioProvider.dio());
    gh.factory<_i7.GetAllCapturedPokemonsUsecase>(
        () => _i7.GetAllCapturedPokemonsUsecase(gh<_i4.CapturedRepository>()));
    gh.factory<_i8.GetCapturedPokemonUsecase>(
        () => _i8.GetCapturedPokemonUsecase(gh<_i4.CapturedRepository>()));
    gh.singleton<_i9.HiveInterface>(hiveIntervaceProvider.hive());
    gh.singleton<_i10.Logger>(loggerProvider.logger());
    gh.factory<_i11.PokedexNavigator>(
        () => _i12.ClientPokedexNavigator(gh<_i5.ClientRouter>()));
    gh.lazySingleton<_i13.PokemonApi>(() => _i13.PokemonApi(
          gh<_i6.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrlV2'),
        ));
    gh.factory<_i14.PokemonRepository>(
        () => _i14.PokemonRepository(gh<_i13.PokemonApi>()));
    gh.factory<_i15.SaveCapturedPokemonUsecase>(
        () => _i15.SaveCapturedPokemonUsecase(gh<_i4.CapturedRepository>()));
    gh.factory<_i16.ThemeBloc>(() => _i16.ThemeBloc());
    gh.factory<_i17.GetAllPokemonsUsecase>(
        () => _i17.GetAllPokemonsUsecase(gh<_i14.PokemonRepository>()));
    gh.factory<_i18.GetPokemonDetailsUsecase>(
        () => _i18.GetPokemonDetailsUsecase(gh<_i14.PokemonRepository>()));
    gh.factory<_i19.PokedexBloc>(() => _i19.PokedexBloc(
          gh<_i17.GetAllPokemonsUsecase>(),
          gh<_i11.PokedexNavigator>(),
        ));
    gh.factoryParam<_i20.PokemonDetailsBloc, String, dynamic>((
      pokemonName,
      _,
    ) =>
        _i20.PokemonDetailsBloc(
          gh<_i18.GetPokemonDetailsUsecase>(),
          gh<_i15.SaveCapturedPokemonUsecase>(),
          gh<_i8.GetCapturedPokemonUsecase>(),
          pokemonName,
        ));
    return this;
  }
}

class _$DioProvider extends _i21.DioProvider {}

class _$HiveIntervaceProvider extends _i21.HiveIntervaceProvider {}

class _$LoggerProvider extends _i21.LoggerProvider {}
