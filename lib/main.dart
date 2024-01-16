import 'package:flutter/material.dart';
import 'package:lpmi/introduction_screen.dart';
import 'package:provider/provider.dart';
import 'package:lpmi/theme_provider.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  await Firebase.initializeApp(
    options: const FirebaseOptions(  
      apiKey: "AIzaSyAx1i5zhXcimR1a2cuHpVtrAXXvGHNzz38",
      authDomain: "lpmi-manage-62617.firebaseapp.com",
      databaseURL: "https://lpmi-manage-62617-default-rtdb.europe-west1.firebasedatabase.app",
      projectId: "lpmi-manage-62617",
      storageBucket: "lpmi-manage-62617.appspot.com",
      messagingSenderId: "712451979484",
      appId: "1:712451979484:web:3c7a51b743c90f3e9d9c19"
      ),
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LPMI Manage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
          primary: Colors.deepPurple,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          primary: Colors.deepPurple,
        ),
      ),
      themeMode: Provider.of<ThemeProvider>(context).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      home: const IntroductionScreen(),
    );
  }
}
