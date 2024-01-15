import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lpmi/components/bar_chart_card.dart';
import 'package:lpmi/components/side_menu.dart';
import 'package:provider/provider.dart';
import 'package:lpmi/theme_provider.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat.yMMMMd('fr_FR').format(currentDate);

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 900) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Accueil'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.lightbulb_outline),
                  onPressed: () {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme();
                  },
                ),
              ],
            ),
            drawer: const SideMenu(),
            body: buildBody(formattedDate),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Accueil'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.lightbulb_outline),
                  onPressed: () {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme();
                  },
                ),
              ],
            ),
            body: Row(
              children: [
                const SizedBox(
                  width: 250, 
                  child: SideMenu(),
                ),
                Expanded(
                  child: buildBody(formattedDate),
                ),
              ],
            ),
          );
        }
      },
    );
  }

  Widget buildBody(String formattedDate) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Nous sommes le : $formattedDate",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: const [
                BarChartCard(
                  title: 'Nombre d\'étudiants',
                  value: 120,
                  customInterval: 20,
                  maxValue: 140,
                ),
                BarChartCard(
                  title: 'Nombre d\'offres',
                  value: 70,
                  customInterval: 10,
                  maxValue: 90,
                ),
                BarChartCard(
                  title: 'Nombre d\'entreprises',
                  value: 20,
                  customInterval: 5,
                  maxValue: 25,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
