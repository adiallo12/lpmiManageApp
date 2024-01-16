import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lpmi/components/side_menu.dart';
import 'package:provider/provider.dart';
import 'package:lpmi/theme_provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  late List<String> documentNames;

  @override
  void initState() {
    super.initState();
    _fetchAndDisplayCollections();
  }

  Future<void> _fetchAndDisplayCollections() async {
    try {
      // Remplacez 'livre' par le nom réel de votre collection Firestore
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await FirebaseFirestore.instance.collection('livre').get();

      // Processus des documents de la collection
      documentNames = querySnapshot.docs
          .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) {
        // Accédez au champ 'nom' de chaque document
        return doc.data()['nom'].toString();
      }).toList();

      // Met à jour l'état pour déclencher le rendu avec les nouveaux noms de documents
      setState(() {});
    } catch (e) {
      print(
          'Erreur lors de la récupération et de l\'affichage des collections: $e');
      // Gérer l'erreur
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        actions: [
          IconButton(
            icon: const Icon(Icons.lightbulb_outline),
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),
      drawer: const SideMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the Setting!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            if (documentNames != null)
              Expanded(
                child: ListView.builder(
                  itemCount: documentNames.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(documentNames[index]),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
