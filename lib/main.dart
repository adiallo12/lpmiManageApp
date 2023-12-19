import 'package:flutter/material.dart';
import 'package:lpmi/screens/home_screen.dart';

import 'package:lpmi/screens/entreprise_screen.dart';
import 'package:lpmi/screens/settings_screen.dart';
import 'package:lpmi/screens/students_screen.dart';
import 'package:lpmi/screens/offers_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LPMI Manage',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      routes: {
        '/entreprise': (context) => EntrepriseScreen(),
        '/students': (context) => StudentsScreen(),
        '/offers': (context) => OffersScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
