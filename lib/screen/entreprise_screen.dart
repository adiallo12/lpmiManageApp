import 'package:flutter/material.dart';

class EntrepriseScreen extends StatelessWidget {
    const EntrepriseScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entreprise '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bienvenue sur ma page entreprise !',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ajoutez votre logique ici
              },
              child: const Text('coucou !'),
            ),
          ],
        ),
      ),
    );
  }
}