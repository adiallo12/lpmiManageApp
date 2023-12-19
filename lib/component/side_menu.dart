import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget{
  final Function(int) onItemSelected ; 
  final int selectedIndex;
  
  const SideMenu({Key? key, required this.onItemSelected, required this.selectedIndex}) : super(key: key);

  @override
  SideMenuState createState() => SideMenuState();
}

class SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Entreprises',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Entreprise 1'),
            onTap: () {
              widget.onItemSelected(1);
              Navigator.pop(context);
            },
            selected: widget.selectedIndex == 1,
          ),
          ListTile(
            title: Text('Entreprise 2'),
            onTap: () {
              widget.onItemSelected(2);
              Navigator.pop(context);
            },
            selected: widget.selectedIndex == 2,
          ),
          // Ajoutez d'autres éléments de menu pour les différentes entreprises
        ],
      ),
    );
  }
}
