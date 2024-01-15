import 'package:flutter/material.dart';
import 'package:lpmi/registrationScreen.dart';

import 'model/api.dart';
import 'login_screen.dart';

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
          children: [
            Image.asset("assets/images/logoUB.png", width: 150),
            const SizedBox(height: 50),
            const Text(
              "Bienvenue sur l'application LPMI Manage",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.orangeAccent),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegistrationScreen()),
              );},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  foregroundColor: Colors.orange
              ),
              child: const Text("S'inscrire",
                  style: TextStyle(
                fontSize: 15,
                decoration: TextDecoration.underline,
                decorationColor: Colors.orange,
                color: Colors.orange,
              )),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                    foregroundColor: Colors.orange,
                ),

                child: const Text("Se connecter",
                    style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.orange,
                  color: Colors.orange,
                )),),
          ],
        ),
      ),
    );
  }
}