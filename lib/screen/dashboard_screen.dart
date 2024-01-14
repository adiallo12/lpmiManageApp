import 'package:flutter/material.dart';
import 'package:lpmi/Components/chart.dart';
import 'package:lpmi/Components/side_menu.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Dashboard",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

        ),
        drawer: const SideMenu(),
        body: const Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children : <Widget>[
                  SizedBox(
                    width: 400,
                    height: 300,
                    child: Chart(value: 120, maxValue: 140),
                  ),
                  SizedBox(
                    width: 400,
                    height: 300,
                    child: Chart(value: 75, maxValue: 90),
                  ),
                  SizedBox(
                    width: 400,
                    height: 300,
                    child: Chart(value: 20, maxValue: 25),
                  ),
                ]
            )
        )
    );
  }
}