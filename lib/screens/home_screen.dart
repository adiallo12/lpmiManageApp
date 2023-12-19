import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _content = "Bienvenue dans la section Accueil";

  void _changeContent(String newContent) {
    setState(() {
      _content = newContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Section Accueil"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Entreprise'),
              onTap: () {
                _changeContent('Bienvenue dans la section Entreprise');
              },
            ),
            ListTile(
              title: Text('Students'),
              onTap: () {
                _changeContent('Bienvenue dans la section Students');
              },
            ),
            ListTile(
              title: Text('Offers'),
              onTap: () {
                _changeContent('Bienvenue dans la section Offers');
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                _changeContent('Bienvenue dans la section Settings');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          _content,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
