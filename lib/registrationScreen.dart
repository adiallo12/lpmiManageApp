import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String _gender = 'Masculin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nom',
              ),
            ),
            SizedBox(height: 30),

            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Prénom',
              ),
            ),
            SizedBox(height: 30),

            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mot de passe',
              ),
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(value: 'masculin', groupValue: _gender , onChanged: (value) {
                  setState(() {
                    _gender = value.toString();
                  });
                }),
                Text('Masculin'),
                Radio(value: 'feminin', groupValue: _gender , onChanged: (value) {
                  setState(() {
                    _gender = value.toString();
                  });
                }),
                Text('Féminin')
              ],
            ),

            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text("S'inscrire"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
              ),
            ),

            SizedBox(height: 30),

            TextButton(
              onPressed: () {},
              child: const Text("Déjà un compte ? Se connecter"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
              ),
            ),

          ],
        ),
      ),
      ),
    );
  }
}
