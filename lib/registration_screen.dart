import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 200),
            const SizedBox(
              height: 24,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Nom'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Prénom'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'E-mail'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Mot de passe'),
            ),
            const SizedBox(
              height: 100,
            ),
            const Row(
              children: [
                Text("Genre : "),
                Radio(
                  value: 0,
                  groupValue: 0,
                  onChanged: null,
                ),
                Text('Masculin'),
                Radio(
                  value: 0,
                  groupValue: 0,
                  onChanged: null,
                ),
                Text('Feminin'),
              ],
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                ),
                child: const Text("S'inscrire")),
            TextButton(
              onPressed: () {},
              child: Text('Déja un compte ? Se connecter'),
            ),
          ],
        ),
      ),
    );
  }
}
