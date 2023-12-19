import 'package:flutter/material.dart';

class StudentScreen extends StatelessWidget {
  const StudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Étudiants'),
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur la page des étudiants !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
