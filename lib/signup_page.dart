import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String gender = "Homme";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Center(
          child: ConstrainedBox(
            constraints:
                const BoxConstraints(maxHeight: 600), // Maximum height of 600px
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Inscription",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 8, 51, 85))),
                const Spacer(flex: 1),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nom',
                  ),
                ),
                const Spacer(flex: 1),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Prénom',
                  ),
                ),
                const Spacer(flex: 1),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                const Spacer(flex: 1),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mot de passe',
                  ),
                ),
                const Spacer(flex: 1),
                Row(
                  children: [
                    const Text("Genre : "),
                    Radio(
                        value: 'Homme',
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        }),
                    const Text("Homme"),
                    Radio(
                        value: 'Femme',
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        }),
                    const Text("Femme"),
                  ],
                ),
                ButtonBar(
                  children: [
                    ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 12),
                      ),
                      child: const Text("S'inscrire",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Vous avez déjà un compte ?"),
                      TextButton(
                        onPressed: null,
                        child: Text("Se connecter"),
                      )
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
