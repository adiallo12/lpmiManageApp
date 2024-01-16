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
            text: 'Home',
            isSelected: _selectedPage == 'Home',
            onTap: () {
              widget.onSelectScreen(HomeScreen());
              _updateSelectedPage('Home');
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
            text: 'Enterprise',
            isSelected: _selectedPage == 'Enterprise',
            onTap: () {
              widget.onSelectScreen(EnterpriseScreen());
              _updateSelectedPage('Enterprise');
            },
          ),
          _createDrawerItem(
            icon: Icons.business,
            text: 'Offers',
            isSelected: _selectedPage == 'Offers',
            onTap: () {
              widget.onSelectScreen(OffersScreen());
              _updateSelectedPage('Offers');
            },
          ),
          _createDrawerItem(
            icon: Icons.settings,
            text: 'Parameters',
            isSelected: _selectedPage == 'Parameters',
            onTap: () {
              widget.onSelectScreen(SettingsScreen());
              _updateSelectedPage('Parameters');
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
