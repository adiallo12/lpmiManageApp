import 'package:flutter/material.dart';

class EnterpriseScreen extends StatelessWidget {
  const EnterpriseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entreprise'),
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur la page de l\'entreprise !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
