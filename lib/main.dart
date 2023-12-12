import 'package:flutter/material.dart';
import 'package:lpmi/introduction_screen.dart';
import 'package:lpmi/loginScreen.dart';

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
        scaffoldBackgroundColor: Color.fromARGB(255, 84, 239, 17),
        useMaterial3: true,
        
      ),
      

      home: const Login(),

    );
  }
}
