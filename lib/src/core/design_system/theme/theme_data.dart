part of 'theme.dart';

extension BuildContextX on BuildContext {
  ThemeData get appTheme => Theme.of(this);
}

extension ThemeDataCommonExtension on ThemeData {
  ThemeData get common => copyWith(
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            padding: dimen.x.md,
          ),
        ),
        appBarTheme: appBarTheme.copyWith(
          backgroundColor: primaryColor,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
      );
}
