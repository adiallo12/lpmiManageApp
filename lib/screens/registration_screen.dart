import 'package:flutter/material.dart';

enum Genre { masculin, feminin }

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  Genre? _genre = Genre.masculin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Nom',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Prénom',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 330,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: ListTile(
                          title: const Text('Masculin'),
                          leading: Radio<Genre>(
                            value: Genre.masculin,
                            groupValue: _genre,
                            onChanged: (Genre? value) {
                              setState(() {
                                _genre = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text('Féminin'),
                          leading: Radio<Genre>(
                            value: Genre.feminin,
                            groupValue: _genre,
                            onChanged: (Genre? value) {
                              setState(() {
                                _genre = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text("S'inscrire"),
                  onPressed: () {

                  },
                ),
                const SizedBox(height: 10),
                TextButton(
                  child: const Text("Déjà un compte ? Se connecter"),
                  onPressed: () {
                    Navigator.pop(context); // Pour revenir à l'écran précédent
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}