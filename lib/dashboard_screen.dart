import 'package:flutter/material.dart';
import 'components/side_menu.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(
        onItemsSelected: (int index) {},
        selectedIndex: 1,
      ),
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Container(
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(10),
              child: SfSparkBarChart(
                data: <double>[ 1, 5],
                axisCrossesAt: 0,
                axisLineColor: Colors.red,
                axisLineWidth: 3,
                borderColor: Colors.blue,
                color: Colors.blue,

              ),
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(10),
              child: SfSparkBarChart(
                data: <double>[3,3],
                axisCrossesAt: 0,
                axisLineColor: Colors.red,
                axisLineWidth: 3,
                borderColor: Colors.blue,
                color: Colors.blue,

              ),
            ),
            Container(

              width: 100,
              height: 100,
              padding: const EdgeInsets.all(10),
              child: SfSparkBarChart(
                    title: SparkChartTitle(
                  text: 'Sparkline chart',
                  textStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
                data: <double>[ 5,1],
                axisCrossesAt: 0,
                axisLineColor: Colors.red,
                axisLineWidth: 3,
                borderColor: Colors.blue,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
