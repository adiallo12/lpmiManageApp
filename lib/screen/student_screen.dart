import 'package:flutter/material.dart';
import 'package:lpmi/Components/side_menu.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Student", 
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold,
            ),
        ),

      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text("Bienvenue sur la page Student"),
      ),
      
    );
  }
}