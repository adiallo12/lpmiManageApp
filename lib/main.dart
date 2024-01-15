import 'package:flutter/material.dart';
import 'package:lpmi/registration/dashboard_screen.dart';
//import 'package:lpmi/introduction_screen.dart';

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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 25, 52, 187)),
        useMaterial3: true,
      ),
      home: DashboardScreen(),
      //home: IntroductionScreen(),
    );
  }
}
