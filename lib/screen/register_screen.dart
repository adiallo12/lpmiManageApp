import 'package:flutter/material.dart';
import 'package:lpmi/screen/connexion_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String _gender = 'Masculin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),
        centerTitle: true,
      ),
      body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400), // Limiter la largeur du formulaire
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logoUB.png", width: 150),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Nom",
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Prénom",
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "E-mail",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Mot de passe",
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio<String>(
                      value: 'Masculin',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value!;
                        });
                      },
                    ),
                    const Text('Masculin'),
                    const SizedBox(
                      width: 24,
                    ),
                    Radio<String>(
                      value: 'Féminin',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value!;
                        });
                      },
                    ),
                    const Text('Féminin'),
                  ],
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    print(_gender);
                  },
                  child: const Text("S'inscrire"),
                ),
                const SizedBox(height: 40),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ConnexionScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  ),
                  child: const Text("Déjà inscrit ? Connectez-vous"),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
