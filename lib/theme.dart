import 'package:flutter/material.dart';

class AppThemeData {
  var darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Colors.deepPurple,
      secondary: Colors.blue,
      onPrimary: Colors.white,
    ),
  );

  var lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Colors.deepOrange,
      secondary: Colors.orange,
      onPrimary: Colors.white,
    ),
  );
}
