import 'package:flutter/material.dart';
import 'package:lpmi/screen/dashboard_screen.dart';
// import 'package:lpmi/signup_screen.dart';
// import 'package:lpmi/login_screen.dart';
// import 'package:lpmi/home_screen.dart';

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

      home:const DashboardScreen(),


      debugShowCheckedModeBanner: false,
    );
  }
}
