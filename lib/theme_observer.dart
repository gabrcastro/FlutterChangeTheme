import 'package:flutter/material.dart';
import 'theme.dart';

class ThemeObserver with WidgetsBindingObserver {
  final Function(ThemeData) onThemeChanged;

  ThemeObserver({required this.onThemeChanged});

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    final brightness = WidgetsBinding.instance.window.platformBrightness;
    onThemeChanged(
      brightness == Brightness.light
          ? AppThemeData().lightTheme
          : AppThemeData().darkTheme,
    );
  }
}
