import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  final Function(int) onSelectedItem;
  final int selectedItem;
  const SideMenu({super.key, required this.onSelectedItem, required this.selectedItem});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(child: Text("Menu")),
          createDrawerItem(
            icon: Icons.home, 
            text: 'Accueil', 
            onTap: () => widget.onSelectedItem(0)
          ),
          createDrawerItem(
            icon: Icons.school, 
            text: 'Etudiants', 
            onTap: () => widget.onSelectedItem(1)
          ),
          createDrawerItem(
            icon: Icons.business, 
            text: 'Entreprises', 
            onTap: () => widget.onSelectedItem(2)
          ),
          createDrawerItem(
            icon: Icons.work, 
            text: 'Offres', 
            onTap: () => widget.onSelectedItem(3)
          ),
          createDrawerItem(
              icon: Icons.settings, 
              text: 'Paramètres',
              onTap: () => widget.onSelectedItem(4)
          )
        ],
      ),
    );
  }
}

Widget createDrawerItem({ required IconData icon, required String text, required VoidCallback onTap})
{
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(text, style: const TextStyle(color: Colors.blue)),
        )
      ],
    ),
    onTap: onTap
  );
}