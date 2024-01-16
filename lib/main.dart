import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lpmi/firebase/LoginController.dart';
import 'package:lpmi/firebase/RegistrationController.dart';
import 'package:lpmi/model/dashboard_screen.dart';
import 'package:lpmi/introduction_screen.dart';
import 'package:provider/provider.dart';
import 'package:lpmi/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LoginController()),
      ChangeNotifierProvider(create: (_) => RegistrationController()),
    ],
    child: const MyApp(),
  ));
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
      //home: DashboardScreen(),

      home: Stack(
        children: [
          DashboardScreen(),
          IntroductionScreen(),
        ],
      ),
    );
  }
}
