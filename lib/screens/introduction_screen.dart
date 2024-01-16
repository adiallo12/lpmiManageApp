import 'package:flutter/material.dart';
import 'package:lpmi/components/side_menu.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction'),
      ),
      drawer: const SideMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the Introduction!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Action to be performed when the button is clicked
              },
              child: const Text(
                'Click Here',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}