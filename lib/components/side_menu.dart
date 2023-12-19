import 'package:flutter/material.dart';
import '../student_screen.dart';
import '../offer_screen.dart';
import '../setting_screen.dart';
import '../home_screen.dart';
import '../entreprise_screen.dart';

class SideMenu extends StatelessWidget {
  final Function(Widget, String) onSelectScreen;
  final String currentScreenName;

  SideMenu({required this.onSelectScreen, required this.currentScreenName});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.white54,
            ),
          ),
          _createDrawerItem(
            icon: Icons.home,
            text: 'Accueil',
            isSelected: currentScreenName == 'Accueil',
            onTap: () => onSelectScreen(HomeScreen(), 'Accueil'),
          ),
          _createDrawerItem(
            icon: Icons.school,
            text: 'Étudiants',
            isSelected: currentScreenName == 'Étudiants',
            onTap: () => onSelectScreen(StudentsScreen(), 'Étudiants'),
          ),
          _createDrawerItem(
            icon: Icons.business_center,
            text: 'Entreprise',
            isSelected: currentScreenName == 'Entreprise',
            onTap: () => onSelectScreen(EntrepriseScreen(), 'Entreprise'),
          ),
          _createDrawerItem(
            icon: Icons.business,
            text: 'Offres',
            isSelected: currentScreenName == 'Offres',
            onTap: () => onSelectScreen(OffersScreen(), 'Offres'),
          ),
          _createDrawerItem(
            icon: Icons.settings,
            text: 'Paramètres',
            isSelected: currentScreenName == 'Paramètres',
            onTap: () => onSelectScreen(SettingsScreen(), 'Paramètres'),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem({
    IconData? icon,
    String? text,
    bool isSelected = false,
    GestureTapCallback? onTap,
  }) {
    return ListTile(
      tileColor: isSelected ? Colors.grey.shade200 : null,
      title: Row(
        children: <Widget>[
          Icon(icon, color: isSelected ? Colors.purple : null),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text ?? ''),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
