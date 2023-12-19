import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur la page des paramètres !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
