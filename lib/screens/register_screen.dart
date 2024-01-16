import 'package:flutter/material.dart';
import 'package:lpmi/authentification/registrer_controller.dart';
import 'package:lpmi/screens/introduction_screen.dart';
import 'package:lpmi/utils/shared_prefs_helper.dart';
import 'package:provider/provider.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}





class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nom = TextEditingController();
  TextEditingController prenom = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String genre = "Homme";
  

  @override
  Widget build(BuildContext context) {
    RegisterController registerController = Provider.of<RegisterController>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page d'inscription"),
        centerTitle: true,
      ),
      body: Center (
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(16),
          child: Container (
            padding: const EdgeInsets.all(16),
            width: 512,
            height: 512,
            child: Column (
              children: [
                // Nom
                const SizedBox (height: 16), // Separator ================
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Nom",
                    border: OutlineInputBorder()
                    ),
                  controller: nom,
                ),
                // Prénom
                const SizedBox (height: 16), // Separator ================
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Prénom",
                    border: OutlineInputBorder()
                  ),
                  controller: prenom,
                ),
                // Email
                const SizedBox (height: 16), // Separator ================
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder()
                  ),                
                  controller: email,
                ),
                // MDP
                const SizedBox (height: 16), // Separator ================
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Mot de passe",
                    border: OutlineInputBorder()
                  ),
                  controller: password,
                  obscureText: true,
                ),
                // Genre
                const SizedBox (height: 16), // Separator ================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio (
                      value: 'Homme',
                      groupValue: genre,
                      onChanged: (value) {
                        setState(() {
                          genre = value.toString();
                        });
                      },
                    ),
                    const Text(
                      'Homme',
                      style: TextStyle(
                        fontSize: 16
                      ), 
                    ),
                    Radio (
                      value: 'Femme',
                      groupValue: genre,
                      onChanged: (value) {
                        setState(() {
                          genre = value.toString();
                        });
                      },
                    ),
                    const Text (
                      'Femme',
                      style: TextStyle(
                        fontSize: 16
                      ), 
                    ),
                  ],
                ),
                // Bouton s'inscrire
                const SizedBox (height: 16), // Separator ================
                ElevatedButton(
                  onPressed: () {
                    print("Nom: ${nom.text}");
                    print("Prenom: ${prenom.text}");
                    print("Email: ${email.text}");
                    print("Password: ${password.text}");
                    print("Genre: $genre");
                    

                    registerController.signUp(email.text, password.text).then((value) {
                      if(value){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const IntroductionScreen())
                        );
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Mauvaises informations rentrées'),
                          duration: Duration(seconds: 3), // Réglez la durée de la pop-up en seco  ndes
                        ));
                      }
                    });

                    
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  ),
                  child: const Text("S'inscrire")
                ),
                // Bouton retour
                const SizedBox (height: 32), // Separator ================
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IntroductionScreen())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  ),
                  child: const Text("Déjà inscrit ? Se connecter")
                ),
              ],
            )
          )
        )
      )
    );
  }
}