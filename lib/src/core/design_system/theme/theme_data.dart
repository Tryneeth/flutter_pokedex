part of 'theme.dart';

extension BuildContextX on BuildContext {
  ThemeData get appTheme => Theme.of(this);
}

extension ThemeDataCommonExtension on ThemeData {
  ThemeData get common => copyWith(
        filledButtonTheme: _CommonAppThemeData.filledButtonThemeData,
        appBarTheme: appBarTheme.copyWith(
          backgroundColor: primaryColor,
        ),
      );
}

class _CommonAppThemeData {
  static final filledButtonThemeData = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      padding: dimen.x.md,
    ),
  );
}
