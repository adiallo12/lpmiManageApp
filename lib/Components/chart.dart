import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key, required this.name, required this.value, required this.maxValue}) : super(key: key);

  final int value;
  final int maxValue;
  final String name;

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  late int showingTooltip;

  @override
  void initState() {
    showingTooltip = -1;
    super.initState();
  }

  BarChartGroupData generateGroupData(int value) {
    return BarChartGroupData(
      x: value,
      showingTooltipIndicators: showingTooltip == value ? [0] : [],
      barRods: [
        BarChartRodData(
          toY: value.toDouble()
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(widget.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(
          width: 400,
          height: 300,
          child: BarChart(
            BarChartData(
              maxY: widget.maxValue.toDouble(),
              barGroups: [
                generateGroupData(widget.value),
              ],
            ),
          )
        ),
        const Text("data", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold)),
      ]
    );
  }
}