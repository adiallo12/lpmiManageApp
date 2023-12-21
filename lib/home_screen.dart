import 'package:flutter/material.dart';
import 'package:lpmi/dashboard_screen.dart';
import 'components/side_menu.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text('LPMI'),
      ),
      drawer:  SideMenu(
          onItemsSelected: (int index) {},
          selectedIndex:  0,
      ),

    );
  }
}

