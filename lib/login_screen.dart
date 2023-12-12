import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Connexion'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logoUB.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 40.0),
            SizedBox(
                width: 100, // Largeur souhaitée du champ de texte
                child:Center (
                child: TextFormField(
                    decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    ),
                ),
                ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                prefixIcon: Icon(Icons.lock),
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
              child: Text(
                "Vous n'avez pas de compte ? Inscrivez-vous ici.",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

