import 'package:flutter/material.dart';
import 'package:lpmi/introduction_screen.dart';
import 'package:lpmi/registration.dart';

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
      initialRoute: '/', // Définissez la route initiale de l'application
      routes: {
        '/': (context) =>
            const IntroductionScreen(), // Route pour l'écran d'introduction
        '/register': (context) =>
            RegisterScreen(), // Route pour l'écran d'inscription
      },
    );
  }
}
