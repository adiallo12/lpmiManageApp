import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String _gender = 'Masculin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            width: 300, // Largeur fixe pour la colonne
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Nom'),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Prénom'),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Mot de passe'),
                  obscureText: true,
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Radio(
                      value: 'Masculin',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value.toString();
                        });
                      },
                    ),
                    Text('Masculin'),
                    Radio(
                      value: 'Feminin',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value.toString();
                        });
                      },
                    ),
                    Text('Feminin'),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('S\'inscrire'),
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () {},
                  child: Text('Déjà un compte ? Se connecter'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
