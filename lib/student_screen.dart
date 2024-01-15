import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class StudentsScreen extends StatelessWidget {
  late double _size = 1000;
  late bool _isVertical = false;
  late List<_SalesData> _categorydata = <_SalesData>[
    _SalesData(xval: 'Etudiants inscrits', yval: 1532),
    _SalesData(xval: 'Etudiants totaux', yval: 1935),
    _SalesData(xval: 'Etudiants internationaux', yval: 234),
    _SalesData(xval: 'Etudiants locaux', yval: 1701),
    _SalesData(xval: 'Staff total', yval: 213),
    _SalesData(xval: 'Enseignants total', yval: 123),
  ];

  Widget _buildSparkCategoryChart() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              height: _isVertical ? _size : _size * 0.7,
              width: _isVertical ? _size * 1.7 : _size,
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5))),
              child: Column(children: <Widget>[
                const Text('Percentage of the students in a class',
                    textAlign: TextAlign.center),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                ),
                Expanded(
                    child: SfSparkBarChart.custom(
                        axisLineWidth: 0,
                        dataCount: _categorydata.length,
                        xValueMapper: (int index) => _categorydata[index].xval,
                        yValueMapper: (int index) => _categorydata[index].yval!,
                        trackball: SparkChartTrackball(tooltipFormatter:
                            (TooltipFormatterDetails details) {
                          final String labelText =
                              '${details.x} : ${details.y}%';
                          return labelText;
                        }))),
                const Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 0)),
                const Text('Category Axis',
                    style: TextStyle(fontStyle: FontStyle.italic)),
              ])),
        ]);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSparkCategoryChart(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SalesData {
  _SalesData({this.xval, this.yval});
  final dynamic xval;
  final double? yval;
}
