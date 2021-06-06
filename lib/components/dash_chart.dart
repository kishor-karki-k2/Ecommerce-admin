import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashChart extends StatelessWidget {
  final List<Color> gradientColors = [
    // const Color(0xff23b6e6),
    // const Color(0xff02d39a),
    Colors.purple,
    Colors.blue
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: LineChart(LineChartData(
            minX: 0,
            minY: 0,
            maxX: 10,
            maxY: 10,
            titlesData: LineTitles.getTitleData(),
            gridData: FlGridData(
                show: true,
                getDrawingVerticalLine: (value) {
                  return FlLine(
                      color: const Color(0xff37434d), strokeWidth: 1.0);
                },
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                      color: const Color(0xff37434d), strokeWidth: 1.0);
                },
                drawVerticalLine: true,
                drawHorizontalLine: true),
            borderData: FlBorderData(
                show: true,
                border: Border.all(color: const Color(0xff37434d), width: 1)),
            lineBarsData: [
              LineChartBarData(
                isCurved: true,
                colors: gradientColors,
                barWidth: 3.0,
                belowBarData: BarAreaData(
                    show: true,
                    colors: gradientColors
                        .map((color) => color.withOpacity(0.3))
                        .toList()),
                spots: [
                  FlSpot(0, 3),
                  FlSpot(2, 5),
                  FlSpot(4, 1),
                  FlSpot(6, 5),
                  FlSpot(7, 9),
                  FlSpot(8, 6),
                  FlSpot(9, 4),
                  FlSpot(10, 3),
                ],
              )
            ])),
      ),
    );
  }
}

class LineTitles {
  static getTitleData() => FlTitlesData(
      show: true,
      bottomTitles: SideTitles(
        showTitles: true,
        margin: 8.0,
        reservedSize: 22, //bottom space
        getTextStyles: (value) => const TextStyle(
            color: const Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 16),
        getTitles: (value) {
          switch (value.toInt()) {
            case 2:
              return 'Mar';
            case 5:
              return 'jun';
            case 8:
              return 'sep';
          }
          return '';
        },
      ),
      leftTitles: SideTitles(
        showTitles: true,
        margin: 8.0,
        reservedSize: 22, //bottom space
        getTextStyles: (value) => const TextStyle(
            color: const Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 16),

        getTitles: (value) {
          switch (value.toInt()) {
            case 1:
              return '10k';
            case 5:
              return '20k';
            case 8:
              return '40k';
          }
          return '';
        },
      ));
}
