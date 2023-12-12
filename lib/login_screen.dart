import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Connexion'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/logoUB.png", width: 100),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Action à effectuer lorsqu'on appuie sur le bouton de connexion
              },
              child: Text('Se connecter'),
            ),
            SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                // Action à effectuer pour rediriger vers la page d'inscription
              },
              child: Text("Vous n'avez pas de compte ? Inscrivez-vous ici."),
            ),
          ],
        ),
      ),
    );
  }
}
