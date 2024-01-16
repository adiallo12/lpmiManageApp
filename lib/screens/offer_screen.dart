import 'package:flutter/material.dart';
import 'package:lpmi/components/side_menu.dart';
import 'package:provider/provider.dart';
import 'package:lpmi/theme_provider.dart';
import 'package:lpmi/services/api.dart';
import 'package:lpmi/utils/shared_pref_helper.dart';


class OfferScreen extends StatelessWidget {
  const OfferScreen({Key? key});
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Offer'),
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
              'Welcome to the Offer!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                fetchImageUrl().then((imageUrl) {
                  print(imageUrl.url);
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Image.network(imageUrl.url),
                      );
                    },
                  );
                }).catchError((error) {
                  print('Error: $error');
                  // Gérer les erreurs, par exemple, afficher un message à l'utilisateur
                });
              },
              child: const Text(
                'Load Image',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
