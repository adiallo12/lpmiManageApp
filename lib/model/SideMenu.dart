import 'package:flutter/material.dart';

import 'package:lpmi/model//student_screen.dart';
import 'package:lpmi/model/offer_screen.dart';
import 'package:lpmi/model/setting_screen.dart';
import 'package:lpmi/model/home_screen.dart';
import 'package:lpmi/model/enterprise_screen.dart';

class SideMenu extends StatefulWidget {
  final Function(Widget) onSelectScreen;

  SideMenu({required this.onSelectScreen});

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
            isSelected: _selectedPage == 'Accueil',
            onTap: () {
              widget.onSelectScreen(HomeScreen());
              _updateSelectedPage('Accueil');
            },
          ),
          /*  _createDrawerItem(
            icon: Icons.school,
            text: 'Étudiants',
            isSelected: _selectedPage == 'Étudiants',
            onTap: () {
              widget.onSelectScreen(StudentScreen());
              _updateSelectedPage('Etudiants');
            },
          ),*/
          _createDrawerItem(
            icon: Icons.business_center,
            text: 'Entreprise',
            isSelected: _selectedPage == 'Entreprise',
            onTap: () {
              widget.onSelectScreen(EnterpriseScreen());
              _updateSelectedPage('Entreprise');
            },
          ),
          _createDrawerItem(
            icon: Icons.business,
            text: 'Offres',
            isSelected: _selectedPage == 'Offres',
            onTap: () {
              widget.onSelectScreen(OffersScreen());
              _updateSelectedPage('Offres');
            },
          ),
          _createDrawerItem(
            icon: Icons.settings,
            text: 'Paramètres',
            isSelected: _selectedPage == 'Paramètres',
            onTap: () {
              widget.onSelectScreen(SettingsScreen());
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
