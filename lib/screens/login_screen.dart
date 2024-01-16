import 'package:flutter/material.dart';
import 'package:lpmi/authentification/login_controller.dart';
import 'package:lpmi/screens/dashboard_screen.dart';
import 'package:lpmi/screens/register_screen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();



  @override
  Widget build(BuildContext context) {
    LoginController loginController = Provider.of<LoginController>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Connexion"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Mot de passe',
                      border: OutlineInputBorder(),
                    ),
                    controller: password,
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 30),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text("Se connecter"),
                  onPressed: () {
                    loginController.logIn(email.text, password.text).then((value) {
                    if(value){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()));
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Mauvaises informations rentrées'),
                          duration: Duration(seconds: 3), // Réglez la durée de la pop-up en secondes
                        ));
                    }
                    });
                    
                  },
                ),
                const SizedBox(height: 10),
                TextButton(
                  child: const Text("Pas de compte ? S'inscrire"),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
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
