import 'package:flutter/material.dart';
import 'package:lpmi/components/side_menu.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tableau de bord'),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text(
          'Bienvenue sur le tableau de bord !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
