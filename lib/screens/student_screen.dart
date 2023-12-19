import 'package:flutter/material.dart';
import '../components/side_menu.dart'; 

class StudentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Étudiants'),
      ),
      drawer: SideMenu(), 
      body: Center(
        child: Text(
          'Bienvenue sur la page des étudiants !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
