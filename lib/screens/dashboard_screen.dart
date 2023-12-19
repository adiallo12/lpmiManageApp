import 'package:flutter/material.dart';
import '../components/side_menu.dart'; // Assure-toi que le chemin est correct

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: SideMenu(), // Ajoute le SideMenu ici
      body: Center(
        child: Text('Contenu du Dashboard'),
      ),
    );
  }
}
