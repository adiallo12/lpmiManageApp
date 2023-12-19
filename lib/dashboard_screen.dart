import 'package:flutter/material.dart';

import 'components/side_menu.dart';
import 'home_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<DashboardScreen> {
  Widget _currentScreen = const HomeScreen();

  void _updateScreen(Widget newScreen) {
    setState(() {
      _currentScreen = newScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      drawer: SideMenu(onSelectScreen: _updateScreen),
      body: _currentScreen,
    );
  }
}
