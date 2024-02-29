import 'package:flutter_pokedex/src/core/enums/di_parameter_name.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import './di_initializer.config.dart';

final getIt = GetIt.instance;

@injectableInit
void appDIInitializer() {
  getIt
    ..registerSingleton(
      'https://pokeapi.co/api/v2',
      instanceName: ApiDiParameterName.baseUrlV2,
    )
    ..init();
}
