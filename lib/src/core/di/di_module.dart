import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pokedex/src/domain/models/hive_adapters/hive_pokemon.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon_type.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class DioProvider {
  @singleton
  Dio dio() {
    Dio dio = Dio();
    return dio
      ..interceptors.addAll([
        DioCacheInterceptor(
          options: CacheOptions(
            store: MemCacheStore(),
          ),
        ),
        if (kDebugMode)
          PrettyDioLogger(
            responseBody: true,
            requestBody: true,
          ),
      ]);
  }
}

@module
abstract class LoggerProvider {
  @singleton
  Logger logger() {
    Logger logger = Logger();
    return logger;
  }
}

@module
abstract class HiveIntervaceProvider {
  @singleton
  HiveInterface hive() => Hive
    ..registerAdapter<HivePokemon>(
      PokemonAdapter(),
    )
    ..registerAdapter<PokemonType>(
      PokemonTypeAdapter(),
    );
}
