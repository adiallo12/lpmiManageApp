import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Add this import statement
import 'package:lpmi/api.dart';
import 'package:lpmi/controllers/login_controller.dart';
import 'package:lpmi/controllers/register_controller.dart';
import 'package:lpmi/dashboard_screen.dart';
import 'package:lpmi/firebase_options.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeFirebase();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => LoginController()),
    ChangeNotifierProvider(create: (_) => RegisterController()),
  ], child: const MyApp()));
  fetchNasaImageUrl().then((res) => print(res));
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
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 25, 187, 176)),
        useMaterial3: true,
      ),
      home: DashboardScreen(),
      //home: IntroductionScreen(),
    );
  }
}

void initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
