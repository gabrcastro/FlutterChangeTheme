import 'package:flutter/material.dart';
import 'package:flutter_change_theme/homepage.dart';
import 'theme.dart';
import 'theme_observer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ThemeData _theme;
  late final ThemeObserver _themeObserver;

  @override
  void initState() {
    super.initState();
    _theme = AppThemeData().lightTheme;
    _themeObserver = ThemeObserver(
      onThemeChanged: (theme) => setState(() => _theme = theme),
    );
    WidgetsBinding.instance.addObserver(_themeObserver);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(_themeObserver);
    super.dispose();
  }

  void _toggleTheme() {
    setState(() {
      _theme = _theme == AppThemeData().lightTheme
          ? AppThemeData().darkTheme
          : AppThemeData().lightTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _theme,
        home: MyHomePage(
          title: 'Flutter Theme',
          toggleTheme: _toggleTheme,
        ));
  }
}
