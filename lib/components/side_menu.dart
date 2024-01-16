import 'package:flutter/material.dart';
import 'package:lpmi/login_screen.dart';
import '../student_screen.dart';
import '../offers/screens/offer_screen.dart';
import '../setting_screen.dart';
import '../home_screen.dart';
import '../entreprise_screen.dart';
import 'package:lpmi/signup_screen.dart';

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
          _createDrawerItem(
            icon: Icons.school,
            text: 'Étudiants',
            isSelected: _selectedPage == 'Étudiants',
            onTap: () {
              widget.onSelectScreen(StudentsScreen());
              _updateSelectedPage('Étudiants');
            },
          ),
          _createDrawerItem(
            icon: Icons.business_center,
            text: 'Entreprise',
            isSelected: _selectedPage == 'Entreprise',
            onTap: () {
              widget.onSelectScreen(EntrepriseScreen());
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
          _createDrawerItem(
            icon: Icons.email,
            text: 'S\'inscrire',
            isSelected: _selectedPage == 'S\'inscrire',
            onTap: () {
              widget.onSelectScreen(SignupScreen());
              _updateSelectedPage('S\'inscrire');
            },
          ),
          _createDrawerItem(
            icon: Icons.alternate_email_sharp,
            text: 'Se connecter',
            isSelected: _selectedPage == 'Se connecter',
            onTap: () {
              widget.onSelectScreen(LoginScreen());
              _updateSelectedPage('Se connecter');
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
