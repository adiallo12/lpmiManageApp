import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Se connecter",
                    style: TextStyle(fontSize: 25,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height:250),
                  const TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email")
                  ),
                  const SizedBox(height:20),
                  const TextField(decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Mot de passe")
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () {},
                          child: const Text("Se connecter"),
                        ),
                      ]
                  )
                ]
            )
        )
    );
  }
}
