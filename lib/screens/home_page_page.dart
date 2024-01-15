import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePagePage extends StatelessWidget {
  final List<_JobData> data = [
    _JobData('Data', 35, 20, 45),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Ajouter le titre du tableau de bord
          const Text(
            'Tableau de Bord',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0), // Ajouter un espace de 16 pixels entre le titre et le graphique
          SizedBox(
            width: 1000.0,
            height: 600.0,
            child: SfCartesianChart(
              primaryXAxis: const CategoryAxis(),
              legend: const Legend(isVisible: true),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <CartesianSeries<dynamic, String>>[
                ColumnSeries<_JobData, String>(
                  dataSource: data,
                  xValueMapper: (_JobData Job, _) => Job.data,
                  yValueMapper: (_JobData Job, _) => Job.nb,
                  name: 'Nombre d\'Étudiants',
                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                ),
                ColumnSeries<_JobData, String>(
                  dataSource: data,
                  xValueMapper: (_JobData Job, _) => Job.data,
                  yValueMapper: (_JobData Job, _) => Job.nb2,
                  name: 'Nombre d\'Offres',
                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                ),
                ColumnSeries<_JobData, String>(
                  dataSource: data,
                  xValueMapper: (_JobData Job, _) => Job.data,
                  yValueMapper: (_JobData Job, _) => Job.nb3,
                  name: 'Nombre d\'Entreprises',
                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _JobData {
  _JobData(this.data, this.nb, this.nb2, this.nb3);

  final String data;
  final double nb;
  final double nb2;
  final double nb3;
}


