import 'package:flutter/material.dart';
import 'components/side_menu.dart';
import 'student_screen.dart';
import 'offer_screen.dart';
import 'setting_screen.dart';
import 'home_screen.dart';
import 'entreprise_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Widget _currentScreen = HomeScreen();
  String _currentScreenName = 'Accueil';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _updateScreen(Widget newScreen, String screenName) {
    setState(() {
      _currentScreen = newScreen;
      _currentScreenName = screenName;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 720;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: !isWideScreen
            ? IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => _scaffoldKey.currentState!.openDrawer(),
              )
            : null,
      ),
      drawer: isWideScreen
          ? null
          : SideMenu(
              onSelectScreen: (Widget screen, String screenName) {
                _updateScreen(screen, screenName);
                if (!isWideScreen) {
                  Navigator.of(context).pop();
                }
              },
              currentScreenName: _currentScreenName,
            ),
      body: isWideScreen
          ? Row(
              children: <Widget>[
                SideMenu(
                  onSelectScreen: _updateScreen,
                  currentScreenName: _currentScreenName,
                ),
                Expanded(child: _currentScreen),
              ],
            )
          : _currentScreen,
    );
  }
}
