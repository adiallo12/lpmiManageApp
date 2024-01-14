import 'package:flutter/material.dart';
import 'package:lpmi/components/side_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Tableaux de bord")
      ),
      drawer: SideMenu(
        onItemsSelected: (int index) {},
        selectedIndex: 0,
      ),
    );
  }
}
