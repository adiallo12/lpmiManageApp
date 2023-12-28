// dashboard_screen.dart

import 'package:flutter/material.dart';
import '../components/side_menu.dart';
import 'package:lpmi/screen/home_screen.dart';


class DashboardScreen extends StatefulWidget {
    const DashboardScreen({Key? key}) : super(key: key);
  @override
   DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  // Variable pour maintenir le widget actuellement sélectionné
  Widget _currentScreen =const HomeScreen();

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
            onSelectScreen: _updateScreen,
          ),
          Expanded(child: _currentScreen), 
        ],
      ),
    );
  }
}