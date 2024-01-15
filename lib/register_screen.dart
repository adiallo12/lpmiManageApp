import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
    const RegisterScreen({Key? key}) : super(key: key);

    @override
    // ignore: library_private_types_in_public_api
    _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
    String? _selectedGender;

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
                        const SizedBox(height: 20),
                        Center(
                            child: SizedBox(
                                width: 350,
                                child: TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: 'Nom',
                                        border: OutlineInputBorder(),
                                    ),
                                ),
                            ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                            child: SizedBox(
                                width: 350,
                                child: TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: 'Prénom',
                                        border: OutlineInputBorder(),
                                    ),
                                ),
                            ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                            child: SizedBox(
                                width: 350,
                                child: TextFormField(
                                    decoration: const InputDecoration(
                                        labelText: 'Email',
                                        border: OutlineInputBorder(),
                                    ),
                                ),
                            ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                            child: SizedBox(
                                width: 350,
                                child: TextFormField(
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                        labelText: 'Mot de passe',
                                        border: OutlineInputBorder(),
                                    ),
                                ),
                            ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Radio(
                                    value: 'Masculin',
                                    groupValue: _selectedGender,
                                    onChanged: (value) {
                                        setState(() {
                                            _selectedGender = value.toString();
                                        });
                                    },
                                ),
                                const Text('Masculin'),
                                Radio(
                                    value: 'Féminin',
                                    groupValue: _selectedGender,
                                    onChanged: (value) {
                                        setState(() {
                                            _selectedGender = value.toString();
                                        });
                                    },
                                ),
                                const Text('Féminin'),
                            ],
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: () {
                            },
                            child: const Text('S\'inscrire'),
                        ),
                        const SizedBox(height: 100),
                        const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            
                            children: [
                              
                                Text("Vous avez déjà un compte ?"),
                            ])
                    ],
                ),
            ),
        );
    }
}
