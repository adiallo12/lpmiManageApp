import 'package:flutter/material.dart';
import '../components/side_menu.dart'; 

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paramètres'),
      ),
      drawer: SideMenu(), 
      body: Center(
        child: Text('Écran des paramètres'),
      ),
    );
  }
}
