import 'package:flutter/material.dart';
import 'package:lpmi/model/SideMenu.dart';
import 'package:lpmi/model//student_screen.dart';
import 'package:lpmi/model/offer_screen.dart';
import 'package:lpmi/model/setting_screen.dart';
import 'package:lpmi/model/home_screen.dart';
import 'package:lpmi/model/enterprise_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<DashboardScreen> {
  // Variable pour maintenir le widget actuellement sélectionné
  Widget _currentScreen = HomeScreen();

  void _updateScreen(Widget newScreen) {
    setState(() {
      _currentScreen = newScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          SideMenu(
              onSelectScreen:
                  _updateScreen), // Modifié pour inclure un callback
          Expanded(child: _currentScreen), // Contenu dynamique
        ],
      ),
    );
  }
}
