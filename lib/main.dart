import 'package:flutter/material.dart';
import 'package:lpmi/authentification/login_controller.dart';
import 'package:lpmi/authentification/registrer_controller.dart';
import 'package:provider/provider.dart';
import 'package:lpmi/screens/introduction_screen.dart';
import 'package:lpmi/screens/setting_screen.dart';
import 'package:lpmi/components/theme_notifier.dart';
import 'package:lpmi/modeles/image_nasa.dart';
import 'package:lpmi/services/api.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDJjEIaA4mbhQ2G9guGycylInGR3RJHKG8",
      authDomain: "lpmi-managebm.firebaseapp.com",
      databaseURL: "https://lpmi-managebm-default-rtdb.europe-west1.firebasedatabase.app",
      projectId: "lpmi-managebm",
      storageBucket: "lpmi-managebm.appspot.com",
      messagingSenderId: "327946511096",
      appId: "1:327946511096:web:6e127610e5ee87f9ba510d",
      measurementId: "G-JC5P9QYN6Y"
    ),
  );
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeNotifier()),
      ChangeNotifierProvider(create: (_) => RegisterController()),
      ChangeNotifierProvider(create: (_) => LoginController()),
    ],
    child: const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      title: 'LPMI Manage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const IntroductionScreen(),
    );
  }
}