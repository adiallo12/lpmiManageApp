import 'package:flutter/material.dart';
import 'package:lpmi/home_screen.dart';
import 'package:lpmi/model/imagenasa.dart';
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
            const Image(
              image: AssetImage("assets/images/logoUB.png"),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Licence LPMI  2023-2024',
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text('Page de connexion'),
            ),
           Image.network(
              'https://apod.nasa.gov/apod/image/2108/NGC6914_Hubble_960.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
