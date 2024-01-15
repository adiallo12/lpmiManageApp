import 'dart:ui';

import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/profil_page.dart';
import 'screens/login_screen.dart';
import 'screens/introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    void onDarkMod() {
      setState(() {
        print("baba");
        _isDarkMode = !_isDarkMode;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LPMI Manage',
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      initialRoute: '/home', // Route initiale
      routes: {
        '/introduction': (context) => IntroductionScreen(),
        '/home': (context) => HomePage(
              onDark: () => onDarkMod(),
            ),
        '/login': (context) => const LoginScreen(),
        '/profil': (context) => ProfilPage(),
        // Ajoutez d'autres routes nommées ici
      },
    );
  }
}
