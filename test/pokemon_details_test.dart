import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_pokedex/src/data/providers/captured_hive.dart';
import 'package:flutter_pokedex/src/presentation/pokemon_details/pokemon_details_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/annotations.dart';

import 'pokemon_details_test.mocks.dart';
import 'utils/dummy_app.dart';
import 'utils/mocks.dart';

@GenerateNiceMocks([MockSpec<CapturedHive>()])
void main() {
  const baseUrl = 'https://pokeapi.co/api/v2';

  final dio = Dio(BaseOptions(baseUrl: baseUrl));
  late final DioAdapter dioAdapter;
  dioAdapter = DioAdapter(dio: dio);

  final mockedCaptureHive = MockCapturedHive();

  setUpAll(() {
    var path = Directory.current.path;
    Hive.init('$path/test/hive_testing_path');
    appDIInitializer();
  });

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

    if (getIt.isRegistered<CapturedHive>()) {
      getIt.unregister<CapturedHive>();
      getIt.registerSingleton<CapturedHive>(mockedCaptureHive);
    }
  });

  testWidgets('Pokemon details are loaded', (WidgetTester tester) async {
    await tester.pumpWidget(
      const DummyApp(
        child: PokemonDetailsPage(
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

  testWidgets('Pokemon is captured', (WidgetTester tester) async {
    await tester.pumpWidget(
      const DummyApp(
        child: PokemonDetailsPage(
          pokemonName: 'bulbasaur',
        ),
      ),
    );

    await tester.pumpAndSettle();

    final captureBtn = find.text('Capture');
    final releaseBtn = find.text('Release');

    expect(find.text('BULBASAUR'), findsOne);
    expect(captureBtn, findsOne);
    expect(releaseBtn, findsNothing);

    await tester.tap(captureBtn);

    await tester.pumpAndSettle();

    expect(captureBtn, findsNothing);
    expect(releaseBtn, findsOne);
  });

  testWidgets('Pokemon is released', (WidgetTester tester) async {
    await tester.pumpWidget(
      const DummyApp(
        child: PokemonDetailsPage(
          pokemonName: 'bulbasaur',
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('BULBASAUR'), findsOne);

    final captureBtn = find.text('Capture');
    final releaseBtn = find.text('Release');

    expect(captureBtn, findsOne);
    expect(releaseBtn, findsNothing);

    await tester.tap(captureBtn);
    await tester.pumpAndSettle();
    await tester.tap(releaseBtn);
    await tester.pumpAndSettle();

    expect(captureBtn, findsOne);
    expect(releaseBtn, findsNothing);
  });

  testWidgets('Error screen is shown', (WidgetTester tester) async {
    dioAdapter.onGet(
      '/pokemon/bulbasaur',
      (request) => request.reply(500, {}),
    );

    await tester.pumpWidget(
      const DummyApp(
        child: PokemonDetailsPage(
          pokemonName: 'bulbasaur',
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('bulbasaur'), findsNothing);
    expect(find.text('An error has occurred'), findsOne);
  });
}
