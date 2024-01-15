import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChartCard extends StatelessWidget {
  final String title;
  final int value;
  final int customInterval;
  final int maxValue;

  const BarChartCard({
    required this.title,
    required this.value,
    required this.customInterval,
    required this.maxValue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                primaryYAxis: NumericAxis(
                  interval: customInterval.toDouble(),
                  maximum: maxValue.toDouble(),
                ),
                series: <CartesianSeries<_Data, String>>[ 
                  ColumnSeries<_Data, String>( 
                    width: 0.5,
                    dataSource: [
                      _Data(title, value.toDouble()),
                    ],
                    xValueMapper: (_Data data, _) => data.category,
                    yValueMapper: (_Data data, _) => data.value,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Data {
  final String category;
  final double value;

  _Data(this.category, this.value);
}