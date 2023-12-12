import 'package:flutter/material.dart';
import 'login.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(image: AssetImage("assets/images/logoUB.png"),),
            const Text(
              'Licence LPMI 2023-2024',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginScreen()),);
              },
              child: const Text('Go to page 1'),
            ),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('Go to page 2 '),
            ),
          ],
        ),
      ),
    );  }
}
