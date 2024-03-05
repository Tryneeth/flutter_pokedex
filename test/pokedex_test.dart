import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_pokedex/main.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'utils/mocks.dart';
import 'utils/utils.dart';

void main() {
  const baseUrl = 'https://pokeapi.co/api/v2';
  const subDir = 'pokedex';

  final dio = Dio(BaseOptions(baseUrl: baseUrl));
  late final DioAdapter dioAdapter;
  dioAdapter = DioAdapter(dio: dio);

  setUpAll(() async {
    Hive.init(hiveTestPath(subDir));
    appDIInitializer();
  });

  tearDownAll(() => deleteHiveTestingDirectory(subDir));

  setUp(() {
    dio.httpClientAdapter = dioAdapter;

    dioAdapter.onGet(
      '/pokemon',
      (request) => request.reply(200, jsonDecode(pokemonList)),
    );

    getIt.replaceSingleton<Dio>(dio);
  });

  testWidgets('Pokemon list is loaded', (WidgetTester tester) async {
    await tester.pumpWidget(const Pokedex());
    await tester.pumpAndSettle();

    expect(find.text('bulbasaur'), findsOne);
    expect(find.text('ivysaur'), findsOne);
  });

  testWidgets('Error screen is shown', (WidgetTester tester) async {
    dioAdapter.onGet(
      '/pokemon',
      (request) => request.reply(500, {}),
    );

    await tester.pumpWidget(const Pokedex());
    await tester.pumpAndSettle();

    expect(find.text('bulbasaur'), findsNothing);
    expect(find.text('An error has occurred'), findsOne);
  });
}
