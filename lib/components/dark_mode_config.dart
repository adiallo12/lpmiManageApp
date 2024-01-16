import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class DarkModeConfig {
  final Color appBarBackground;
  final Color bodyBackgroundColor;
  final Color bodyText;
  final Brightness brightness;
  final Color iconColor;

  DarkModeConfig.light()
      : appBarBackground = Colors.blue,
        bodyBackgroundColor = Colors.white,
        bodyText = Colors.black,
        brightness = Brightness.light,
        iconColor = Colors.black; // Notez la virgule avant iconColor

  DarkModeConfig.dark()
      : appBarBackground = Colors.black,
        bodyBackgroundColor = Colors.grey.shade800,
        bodyText = Colors.white,
        brightness = Brightness.dark,
        iconColor = Colors.white; // Notez la virgule avant iconColor et le changement de couleur
}

