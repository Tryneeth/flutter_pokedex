import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/design_system/design_system.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_pokedex/src/data/providers/captured_hive.dart';
import 'package:flutter_pokedex/src/domain/models/pokemon_type.dart';
import 'package:flutter_pokedex/src/presentation/captured/captured_page.dart';
import 'package:flutter_pokedex/src/presentation/navigator/pokedex_navigator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/mockito.dart';

import 'utils/dummy_app.dart';
import 'utils/mocks.dart';
import 'utils/mocks.mocks.dart';
import 'utils/utils.dart';

void main() {
  const subDir = 'captured';
  final mockedCaptureHive = MockCapturedHive();
  final mockedNavigator = MockPokedexNavigator();

  setUpAll(() {
    Hive.init(hiveTestPath(subDir));
    appDIInitializer();
  });

  tearDownAll(() => deleteHiveTestingDirectory(subDir));

  setUp(() {
    getIt
      ..replaceSingleton<CapturedHive>(mockedCaptureHive)
      ..replaceSingleton<PokedexNavigator>(mockedNavigator);
  });

  Future<void> iAmOnCapturedPage(WidgetTester tester) async {
    await tester.pumpWidget(
      const DummyApp(
        child: CapturedPage(),
      ),
    );

    await tester.pumpAndSettle();
  }

  testWidgets('Filters bottom sheet is shown', (WidgetTester tester) async {
    await iAmOnCapturedPage(tester);

    expect(find.byIcon(Icons.filter_alt_outlined), findsOne);

    await tester.tap(find.byIcon(Icons.filter_alt_outlined));
    await tester.pumpAndSettle();

    expect(find.byType(BottomSheet), findsOne);

    expect(find.text('Sort'), findsOne);
    expect(find.text('By ID'), findsOne);
    expect(find.text('By Name'), findsOne);
    expect(find.text('Filter'), findsOne);
    expect(find.text('Accept'), findsOne);
  });

  testWidgets('Pokemon card is shown, color is right and details are reached',
      (WidgetTester tester) async {
    when(mockedCaptureHive.values).thenAnswer(
      (_) async => [hiveBulbasaur],
    );

    await iAmOnCapturedPage(tester);

    final ink = tester.widget(find.byType(Ink)) as Ink;
    expect((ink.decoration as BoxDecoration).color, PokemonType.grass.color);

    await tester.tap(find.byType(Ink));
    await tester.pumpAndSettle();

    verify(mockedNavigator.pushPokemonDetails('bulbasaur'));
  });

  testWidgets('Pokemon card is shown, color is right and details are reached',
      (WidgetTester tester) async {
    when(mockedCaptureHive.values).thenAnswer(
      (_) async => [hiveBulbasaur],
    );

    await iAmOnCapturedPage(tester);

    final ink = tester.widget(find.byType(Ink)) as Ink;
    expect((ink.decoration as BoxDecoration).color, PokemonType.grass.color);

    await tester.tap(find.byType(Ink));
    await tester.pumpAndSettle();

    verify(mockedNavigator.pushPokemonDetails('bulbasaur'));
  });

  testWidgets('Pokemon Cards are loaded', (WidgetTester tester) async {
    when(mockedCaptureHive.values).thenAnswer(
      (_) async => hiveCapturedPokemonsEvenType,
    );

    await iAmOnCapturedPage(tester);

    final cards = tester.widgetList<PokemonCard>(find.byType(PokemonCard));

    expect(cards.length, hiveCapturedPokemonsEvenType.length);
  });

  testWidgets('Pokemons are filtered by name', (WidgetTester tester) async {
    when(mockedCaptureHive.values).thenAnswer(
      (_) async => hiveCapturedPokemonsEvenType,
    );

    await iAmOnCapturedPage(tester);

    final cards = tester.widgetList<PokemonCard>(find.byType(PokemonCard));
    final names = cards.map((e) => e.name);
    final ids = cards.map((e) => e.id);

    final expectedNames = [
      'grass_pokemon_1',
      'water_pokemon_1',
      'fire_pokemon_1',
    ];

    final expectedIds = [1, 2, 3];

    expect(names, expectedNames);
    expect(ids, expectedIds);

    // Sort by Name
    await tester.tap(find.byIcon(Icons.filter_alt_outlined));
    await tester.pumpAndSettle();
    await tester.tap(find.text('By Name'));
    await tester.pumpAndSettle();

    var orderedCards = tester
        .widgetList<PokemonCard>(find.byType(PokemonCard))
        .map((e) => e.name);

    final orderedNames = [
      'fire_pokemon_1',
      'grass_pokemon_1',
      'water_pokemon_1',
    ];

    expect(orderedCards, orderedNames);

    // Sort by ID
    await tester.tap(find.text('By ID'));
    await tester.pumpAndSettle();

    final newNames = tester
        .widgetList<PokemonCard>(find.byType(PokemonCard))
        .map((e) => e.name);

    expect(newNames, expectedNames);
  });

  testWidgets('Pokemons are filtered by name', (WidgetTester tester) async {
    when(mockedCaptureHive.values).thenAnswer(
      (_) async => hiveCapturedPokemonsEvenType,
    );

    await iAmOnCapturedPage(tester);

    final names = tester
        .widgetList<PokemonCard>(find.byType(PokemonCard))
        .map((e) => e.name);

    final expectedNames = [
      'grass_pokemon_1',
      'water_pokemon_1',
      'fire_pokemon_1',
    ];

    expect(names, expectedNames);

    // Filter by Water Pokemon
    await tester.tap(find.byIcon(Icons.filter_alt_outlined));
    await tester.pumpAndSettle();

    await tester.tap(find.text('water'));
    await tester.pumpAndSettle();

    final filteredCards = tester
        .widgetList<PokemonCard>(find.byType(PokemonCard))
        .map((e) => e.name);

    final expectedFilteredNames = [
      'water_pokemon_1',
    ];

    expect(filteredCards.length, 1);
    expect(filteredCards, expectedFilteredNames);
  });
}
