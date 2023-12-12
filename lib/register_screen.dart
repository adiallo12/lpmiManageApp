import 'package:flutter/material.dart';
import 'package:lpmi/introduction_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String _selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 10.0),
            SizedBox(
              width: 300.0, // Ajustez la largeur comme souhaité
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nom',
                  border: OutlineInputBorder(),
                  contentPadding:  EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 300.0, // Ajustez la largeur comme souhaité
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Prénom',
                  border: OutlineInputBorder(),
                  contentPadding:  EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 300.0, // Ajustez la largeur comme souhaité
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Adresse e-mail',
                  border: OutlineInputBorder(),
                  contentPadding:  EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 300.0, // Ajustez la largeur comme souhaité
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Mot de passe',
                  border: OutlineInputBorder(),
                  contentPadding:  EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 300.0, // Ajustez la largeur comme souhaité
              child: TextFormField(
                decoration: const  InputDecoration(
                  labelText: 'Confirmation Mot de passe',
                  border: OutlineInputBorder(),
                  contentPadding:  EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'Homme',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                const Text('Homme'),
                const SizedBox(width: 16.0),
                Radio(
                  value: 'Femme',
                  groupValue: _selectedGender,
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
                const Text('Femme'),
              ],
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Ajoutez ici le code pour traiter l'inscription
                // Vous pouvez utiliser les données saisies dans les champs
              },
              child: const Text('S\'inscrire'),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const IntroductionScreen()),
                );
              },
              child: const Text('Vous avez déjà un compte ? Connectez-vous'),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
