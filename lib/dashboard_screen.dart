import 'package:flutter/material.dart';
import 'components/side_menu.dart';
import 'package:fl_chart/fl_chart.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';
//import 'package:syncfusion_flutter_charts/sparkcharts.dart';

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
                width: 125,
                height: 200,
                padding: const EdgeInsets.all(5),
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 20,
                    barTouchData: BarTouchData(
                      enabled: false,
                    ),
                    titlesData: const FlTitlesData(
                      show: true,

                    ),),
                ),
              ),

              Container(
                width: 125,
                height: 200,
                padding: const EdgeInsets.all(5),
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 20,
                    barTouchData: BarTouchData(
                      enabled: false,
                    ),
                    titlesData: const FlTitlesData(
                      show: true,
                    ),
                  ),
                ),),
              Container(

                width: 125,
                height: 200,
                padding: const EdgeInsets.all(5),
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 20,
                    barTouchData: BarTouchData(
                      enabled: false,
                    ),
                    titlesData: const  FlTitlesData(
                      show: true,

                    ),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
