import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_pokedex/main.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'mocks.dart';

void main() {
  late final DioAdapter dioAdapter;

  setUpAll(() => appDIInitializer());

  setUp(() {
    const baseUrl = 'https://pokeapi.co/api/v2';
    final dio = Dio(BaseOptions(baseUrl: baseUrl));
    dioAdapter = DioAdapter(dio: dio);

    dio.httpClientAdapter = dioAdapter;

    dioAdapter.onGet(
      '/pokemon',
      (request) => request.reply(200, jsonDecode(pokemonList)),
    );

    if (getIt.isRegistered<Dio>()) {
      getIt.unregister<Dio>();
      getIt.registerSingleton(dio);
    }
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
