import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_pokedex/src/data/providers/captured_hive.dart';
import 'package:flutter_pokedex/src/presentation/captured/captured_page.dart';
import 'package:flutter_pokedex/src/presentation/navigator/pokedex_navigator.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'utils/dummy_app.dart';
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

  testWidgets('Filters bottom sheet is shown', (WidgetTester tester) async {
    await tester.pumpWidget(
      const DummyApp(
        child: CapturedPage(),
      ),
    );

    await tester.pumpAndSettle();

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
}
