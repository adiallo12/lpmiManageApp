import'package:flutter/material.dart';
import'package:lpmi/components/dark_mode_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier {
  late DarkModeConfig _config;
  late SharedPreferences _prefs;

  ThemeNotifier() {
    _loadFromPrefs();
  }

  ThemeData get themeData => ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: _config.appBarBackground),
        scaffoldBackgroundColor: _config.bodyBackgroundColor,
        textTheme: TextTheme(bodyMedium: TextStyle(color: _config.bodyText)),
        brightness: _config.brightness,
        iconTheme: IconThemeData(
          color: _config.iconColor,
        )
      );

  void toggleTheme(bool isDarkMode) async {
    _config = isDarkMode ? DarkModeConfig.dark() : DarkModeConfig.light();
    _saveToPrefs(isDarkMode);
    notifyListeners();
  }

  void _loadFromPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    bool isDarkMode = _prefs.getBool('isDarkMode') ?? false;
    _config = isDarkMode ? DarkModeConfig.dark() : DarkModeConfig.light();
    notifyListeners();
  }

  void _saveToPrefs(bool isDarkMode) async {
    await _prefs.setBool('isDarkMode', isDarkMode);
  }
}