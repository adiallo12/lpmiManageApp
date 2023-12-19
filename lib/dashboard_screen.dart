import 'package:flutter/material.dart';
import 'package:lpmi/components/side_menu.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Text('Dashboard'),
      ),
    );
  }
}
