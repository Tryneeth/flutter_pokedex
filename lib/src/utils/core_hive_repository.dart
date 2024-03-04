import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_wait/hive_wait.dart';

class CoreHiveProvider<E> extends HiveRepository<E> {
  CoreHiveProvider(
    super.name, {
    super.lazy,
  });

  @override
  Future<BoxBase<E>> init([HiveInterface? hive]) async {
    await getIt.allReady();
    hive = getIt<HiveInterface>();
    return await super.init(hive);
  }
}
