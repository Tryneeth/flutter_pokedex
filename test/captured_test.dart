import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pokedex/src/core/di/di_initializer.dart';
import 'package:flutter_pokedex/src/data/providers/captured_hive.dart';
import 'package:flutter_pokedex/src/presentation/captured/captured_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'pokemon_details_test.mocks.dart';
import 'utils/dummy_app.dart';

void main() {
  final mockedCaptureHive = MockCapturedHive();

  setUpAll(() {
    var path = Directory.current.path;
    Hive.init('$path/test/hive_testing_path');
    appDIInitializer();
  });

  setUp(() {
    if (getIt.isRegistered<CapturedHive>()) {
      getIt.unregister<CapturedHive>();
      getIt.registerSingleton<CapturedHive>(mockedCaptureHive);
    }
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
