import 'package:flutter/material.dart';
import 'components/side_menu.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
//import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final DeviceSize = MediaQuery.of(context).size;
    final mark = DateTime.now();
    final markedly = mark.day;
    final markmonth = mark.month;
    final markyear = mark.year;
    return Scaffold(
        drawer: SideMenu(
          onItemsSelected: (int index) {},
          selectedIndex: 1,
        ),
        appBar:  AppBar(
          title: const Text('Dashboard',textAlign: TextAlign.center),
        ),
        body: Container(
          height: DeviceSize.height / 2,
          width: DeviceSize.width,
          child: Column(
            children: [
              Text('Nous sommes le $markedly/$markmonth/$markyear.',textAlign: TextAlign.left,),
              Row(children: <Widget>[
                Expanded(
                  flex: 3,
                  child: SfCartesianChart(
                    primaryXAxis: const CategoryAxis(),
                    legend: const Legend(isVisible: false),
                    title:const  ChartTitle(text: "Nombres D'etudiants"),
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
                    title: const ChartTitle(text: "Nombres D'Offres"),
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
                    title: const ChartTitle(text: "Nombres D'Entreprises"),
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
