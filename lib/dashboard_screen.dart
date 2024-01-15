import 'package:flutter/material.dart';
import 'package:lpmi/components/side_menu.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final date = DateTime.now();
    final jour = date.day;
    final mois = date.month;
    final annee = date.year;
    final TailleEc = MediaQuery.of(context).size;
    return Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: Container(
          height: TailleEc.height / 2,
          width: TailleEc.width,
          child: Column(
            children: [
              Text(
                'Nous sommes le $jour/$mois/$annee.',
                textAlign: TextAlign.left,
              ),
              Row(children: <Widget>[
                Expanded(
                  flex: 3,
                  child: SfCartesianChart(
                    primaryXAxis: const CategoryAxis(),
                    legend: const Legend(isVisible: false),
                    title: const ChartTitle(text: "Nombres d'étudiants"),
                    series: <CartesianSeries>[
                      ColumnSeries<ChartData, String>(
                          dataSource: <ChartData>[
                            ChartData('Data', 120),
                          ],
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: false))
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SfCartesianChart(
                    primaryXAxis: const CategoryAxis(),
                    legend: const Legend(isVisible: false),
                    title: const ChartTitle(text: "Nombres d'offres"),
                    series: <CartesianSeries>[
                      ColumnSeries<ChartData, String>(
                          dataSource: <ChartData>[
                            ChartData('Data', 75),
                          ],
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: false))
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SfCartesianChart(
                    primaryXAxis: const CategoryAxis(),
                    legend: const Legend(isVisible: false),
                    title: const ChartTitle(text: "Total entreprises"),
                    series: <CartesianSeries>[
                      ColumnSeries<ChartData, String>(
                          dataSource: <ChartData>[
                            ChartData('Data', 20),
                          ],
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: false))
                    ],
                  ),
                ),
              ]),
              Text('Bonjour')
            ],
          ),
        ));
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double y;
}
