import 'package:flutter/material.dart';
import 'package:lpmi/introduction_screen.dart';
import 'package:provider/provider.dart';
import 'package:lpmi/theme_provider.dart'; 
import 'package:intl/date_symbol_data_local.dart';

void main() async{
  await initializeDateFormatting();
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
