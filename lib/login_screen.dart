import 'package:flutter/material.dart';
import 'package:lpmi/controllers/login_controller.dart';
import 'package:lpmi/controllers/register_controller.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    LoginController registerController =
        Provider.of<LoginController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Login",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: 300, // Largeur fixe pour la colonne
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  registerController.setEmail(value);
                },
              )),
          const SizedBox(height: 20),
          SizedBox(
            width: 300, // Largeur fixe pour la colonne
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Mot de passe'),
              onChanged: (value) {
                registerController.setPassword(value);
              },
              obscureText: true,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              try {
                final res = await registerController.Login();
                // make a toast to say that the user is connected
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Vous êtes bien connecté !!'),
                    backgroundColor: Colors.green,
                  ),
                );
              } catch (e) {
                // Handle error
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Erreur lors de la connexion: $e'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
            ),
            child: const Text("Login"),
          ),
          const SizedBox(height: 20),
          GestureDetector(
              onTap: () {
                //Navigator.push(
                //context,
                //MaterialPageRoute(
                //builder: (context) => const InscriptionScreen(),
                //),
                //);
              },
              child: const Text(
                'Inscription',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color.fromARGB(255, 107, 107, 107),
                  fontSize: 16.0,
                ),
              ))
        ],
      )),
    );
  }
}
