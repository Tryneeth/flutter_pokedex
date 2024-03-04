import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_pokedex/src/presentation/pokemon_details/pokemon_details_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'utils/mocks.dart';

void main() {
  const baseUrl = 'https://pokeapi.co/api/v2';

  final dio = Dio(BaseOptions(baseUrl: baseUrl));
  late final DioAdapter dioAdapter;
  dioAdapter = DioAdapter(dio: dio);

  setUpAll(() => appDIInitializer());

  setUp(() {
    dio.httpClientAdapter = dioAdapter;

    dioAdapter.onGet(
      '/pokemon/bulbasaur',
      (request) => request.reply(200, jsonDecode(bulbasaurJson)),
    );

    if (getIt.isRegistered<Dio>()) {
      getIt.unregister<Dio>();
      getIt.registerSingleton(dio);
    }
  });

  testWidgets('Pokemon details are loaded', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: PokemonDetailsPage(
          pokemonName: 'bulbasaur',
        ),
      ),
    );
    await tester.pumpAndSettle(const Duration(minutes: 2));

    expect(find.text('BULBASAUR'), findsOne);
    expect(find.text('# 1'), findsOne);
    expect(find.text('grass'), findsOne);
    expect(find.text('poison'), findsOne);
    expect(find.text('Stats'), findsOne);
    expect(find.text('HEIGHT'), findsOne);
    expect(find.text('7'), findsOne);
    expect(find.text('WEIGHT'), findsOne);
    expect(find.text('69'), findsOne);
  });

  testWidgets('Error screen is shown', (WidgetTester tester) async {
    dioAdapter.onGet(
      '/pokemon/bulbasaur',
      (request) => request.reply(500, {}),
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: PokemonDetailsPage(
          pokemonName: 'bulbasaur',
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('bulbasaur'), findsNothing);
    expect(find.text('An error has occurred'), findsOne);
  });
}
