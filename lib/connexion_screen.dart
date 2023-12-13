import 'package:flutter/material.dart';

class ConnexionScreen extends StatelessWidget {
  const ConnexionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logoUB.png", width: 150),
            const SizedBox(
              height: 24,
            ),
            const SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            const SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                ),// style
                child: const Text("Se connecter")),
            const SizedBox(
              height: 24,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Pas de compte s'inscrire"),
            ),
          ], // children
        ),
      ),
    );
  } // Widget
} // class
