import 'package:flutter/material.dart';

import '../entreprise_screen.dart';
import '../home_screen.dart';
import '../offer_screen.dart';
import '../setting_screen.dart';
import '../student_screen.dart';

class SideMenu extends StatefulWidget {
  final Function(Widget) onSelectScreen;

  const SideMenu({super.key, required this.onSelectScreen});

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  // Nom de la page actuellement sélectionnée
  String _selectedPage = 'Accueil';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(210, 254, 33, 33),
            ),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          _createDrawerItem(
            icon: Icons.home,
            text: 'Accueil',
            isSelected: _selectedPage == 'Accueil',
            onTap: () {
              widget.onSelectScreen(const HomeScreen());
              _updateSelectedPage('Accueil');
            },
          ),
          _createDrawerItem(
            icon: Icons.school,
            text: 'Étudiants',
            isSelected: _selectedPage == 'Étudiants',
            onTap: () {
              widget.onSelectScreen(const StudentsScreen());
              _updateSelectedPage('Étudiants');
            },
          ),
          _createDrawerItem(
            icon: Icons.business_center,
            text: 'Entreprise',
            isSelected: _selectedPage == 'Entreprise',
            onTap: () {
              widget.onSelectScreen(const EntrepriseScreen());
              _updateSelectedPage('Entreprise');
            },
          ),
          _createDrawerItem(
            icon: Icons.business,
            text: 'Offres',
            isSelected: _selectedPage == 'Offres',
            onTap: () {
              widget.onSelectScreen(const OffersScreen());
              _updateSelectedPage('Offres');
            },
          ),
          _createDrawerItem(
            icon: Icons.settings,
            text: 'Paramètres',
            isSelected: _selectedPage == 'Paramètres',
            onTap: () {
              widget.onSelectScreen(const SettingsScreen());
              _updateSelectedPage('Paramètres');
            },
          ),
        ],
      ),
    );
  }

  void _updateSelectedPage(String pageName) {
    setState(() {
      _selectedPage = pageName;
    });
  }

  Widget _createDrawerItem(
      {IconData? icon,
      String? text,
      bool isSelected = false,
      GestureTapCallback? onTap}) {
    return ListTile(
      tileColor: isSelected ? const Color.fromARGB(255, 180, 179, 179) : null,
      title: Row(
        children: <Widget>[
          Icon(icon,
              color: isSelected ? const Color.fromARGB(255, 220, 8, 8) : null),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text ?? ''),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
