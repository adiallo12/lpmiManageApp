import 'package:flutter/material.dart';
import 'package:lpmi/screens/home_page_page.dart';
import 'package:lpmi/screens/profil_page.dart';
import 'package:lpmi/screens/student_screen.dart';
import 'package:lpmi/screens/company_screen.dart';
import 'package:lpmi/screens/offer_screen.dart';
import 'package:lpmi/screens/setting_screen.dart';
import '../components/side_menu.dart';

class HomePage extends StatefulWidget {
  final VoidCallback onDark;

  HomePage({Key? key, required this.onDark}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDarkMode = false;
  final List<MenuItem> homePageMenuItems = [
    MenuItem(icon: Icons.home, title: 'Accueil'),
    MenuItem(icon: Icons.account_circle, title: 'Etudiants'),
    MenuItem(icon: Icons.account_circle, title: 'Entreprises'),
    MenuItem(icon: Icons.account_circle, title: 'Offres'),
    MenuItem(icon: Icons.account_circle, title: 'Paramètres'),
  ];

  Widget pageWidget = HomePagePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon App Flutter'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                widget.onDark();
                setState(() {
                  _isDarkMode = !_isDarkMode;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: _isDarkMode ? Colors.grey[800] : Colors.blue,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15.0),
              ),
              child: Container(
                width: 36.0,
                height: 36.0,
                alignment: Alignment.center,
                child: Icon(
                  _isDarkMode ? Icons.brightness_5 : Icons.brightness_2,
                  size: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: SideMenu(
        menuItems: homePageMenuItems,
        onMenuItemClicked: (item) {
          setState(() {
            if (item.title == 'Accueil') {
              pageWidget = HomePagePage();
            } else if (item.title == 'Etudiants') {
              pageWidget = StudentPage();
            } else if (item.title == 'Entreprises') {
              pageWidget = CompanyPage();
            } else if (item.title == 'Offres') {
              pageWidget = OfferPage();
            } else if (item.title == 'Paramètres') {
              pageWidget = SettingPage();
            }
          });
        },
      ),
      body: pageWidget,
    );
  }
}
