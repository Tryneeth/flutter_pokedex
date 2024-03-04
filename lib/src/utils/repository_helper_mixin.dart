import 'dart:io';

import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:logger/logger.dart';

mixin RepositoryHelperMixin {
  final _logger = getIt<Logger>();

  Future<Either<Exception, T>> fromAsync<T>(
    Future<T> Function() func,
  ) async {
    try {
      final result = await func();
      _logger.i(result);
      return Right(result);
    } on Exception catch (e) {
      _logger.e(e, error: e);
      return Left(e);
    } on Error catch (e) {
      _logger.f(e, error: e, stackTrace: e.stackTrace);
      return Left(Exception('${e.runtimeType}: ${e.stackTrace}'));
    }
  }

  Either<Exception, T> fromSync<T>(
    T Function() func,
  ) {
    try {
      final result = func();
      _logger.i(result);
      return Right(result);
    } on Exception catch (e) {
      _logger.e(e, error: e);
      return Left(e);
    } on Error catch (e) {
      _logger.f(e, error: e, stackTrace: e.stackTrace);
      return Left(Exception('${e.runtimeType}: ${e.stackTrace}'));
    }
  }

  Future<Either<Exception, T>> isolatedFromAsync<T>(
    Future<T> Function() func,
  ) async =>
      (!kIsWeb && Platform.environment.containsKey('FLUTTER_TEST'))
          ? await fromAsync(func)
          : await compute(fromAsync, func);
}
