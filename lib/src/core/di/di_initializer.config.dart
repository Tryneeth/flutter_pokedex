// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_pokedex/src/core/design_system/theme/bloc/theme_bloc.dart'
    as _i9;
import 'package:flutter_pokedex/src/core/di/di_module.dart' as _i14;
import 'package:flutter_pokedex/src/core/navigation/navigators/pokedex_navigator.dart'
    as _i6;
import 'package:flutter_pokedex/src/core/navigation/router/router.dart' as _i3;
import 'package:flutter_pokedex/src/data/providers/pokemon_api.dart' as _i7;
import 'package:flutter_pokedex/src/domain/repositories/pokemon_repository.dart'
    as _i8;
import 'package:flutter_pokedex/src/domain/usecases/get_all_pokemons_usecase.dart'
    as _i10;
import 'package:flutter_pokedex/src/domain/usecases/get_pokemon_details_usecase.dart'
    as _i11;
import 'package:flutter_pokedex/src/presentation/pokedex/bloc/pokedex_bloc.dart'
    as _i12;
import 'package:flutter_pokedex/src/presentation/pokedex/navigator/pokedex_navigator.dart'
    as _i5;
import 'package:flutter_pokedex/src/presentation/pokemon_details/bloc/pokemon_details_bloc.dart'
    as _i13;
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
    gh.lazySingleton<_i3.ClientRouter>(() => _i3.ClientRouter());
    gh.singleton<_i4.Dio>(dioProvider.dio());
    gh.factory<_i5.PokedexNavigator>(
        () => _i6.ClientPokedexNavigator(gh<_i3.ClientRouter>()));
    gh.lazySingleton<_i7.PokemonApi>(() => _i7.PokemonApi(
          gh<_i4.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrlV2'),
        ));
    gh.factory<_i8.PokemonRepository>(
        () => _i8.PokemonRepository(gh<_i7.PokemonApi>()));
    gh.factory<_i9.ThemeBloc>(() => _i9.ThemeBloc());
    gh.factory<_i10.GetAllPokemonsUsecase>(
        () => _i10.GetAllPokemonsUsecase(gh<_i8.PokemonRepository>()));
    gh.factory<_i11.GetPokemonDetailsUsecase>(
        () => _i11.GetPokemonDetailsUsecase(gh<_i8.PokemonRepository>()));
    gh.factory<_i12.PokedexBloc>(() => _i12.PokedexBloc(
          gh<_i10.GetAllPokemonsUsecase>(),
          gh<_i5.PokedexNavigator>(),
        ));
    gh.factoryParam<_i13.PokemonDetailsBloc, String, dynamic>((
      pokemonName,
      _,
    ) =>
        _i13.PokemonDetailsBloc(
          gh<_i11.GetPokemonDetailsUsecase>(),
          pokemonName,
        ));
    return this;
  }
}

class _$DioProvider extends _i14.DioProvider {}
