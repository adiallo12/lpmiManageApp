import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  final Function(int) onItemsSelected;
  final int selectedIndex;
  const SideMenu({super.key, required this.onItemsSelected, required this.selectedIndex});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(child: Text("menu")),
          createDrawerItem(icon: Icons.home, text: "Acceuil", onTap: () => widget.onItemsSelected(0)),
          createDrawerItem(icon: Icons.dashboard, text: "Dashboard", onTap: () => widget.onItemsSelected(1)),
          createDrawerItem(icon: Icons.transgender, text: "Student", onTap: () => widget.onItemsSelected(2)),
          createDrawerItem(icon: Icons.business, text: "Entreprise", onTap: () => widget.onItemsSelected(3)),
          createDrawerItem(icon: Icons.whatshot_rounded, text: "Offer", onTap: () => widget.onItemsSelected(4)),
          createDrawerItem(icon: Icons.propane_sharp, text: "Setting", onTap: () => widget.onItemsSelected(5)),
        ],
      )
    );
  }
}

Widget createDrawerItem({
  required IconData icon,
  required String text,
  required VoidCallback onTap,
})
{return ListTile(
  selectedColor: Colors.white38,
  title: Row(
    children: <Widget> [
      Icon(icon),
      Padding(padding: const EdgeInsets.only(left: 8.0),
          child: Text(text,style: const TextStyle(color : Colors.blue),))
    ],
  ),
);}