import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CataikBarChart extends StatefulWidget {
  const CataikBarChart({Key? key}) : super(key: key);

  @override
  _CataikBarChartState createState() => _CataikBarChartState();
}

class _CataikBarChartState extends State<CataikBarChart> {
  static const double barWidth = 36;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.center,
              maxY: 16,
              minY: 0,
              barTouchData: BarTouchData(
                enabled: true,
              ),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (value) =>
                      const TextStyle(color: Colors.white, fontSize: 10),
                  margin: 10,
                  rotateAngle: 0,
                  getTitles: (double value) {
                    switch (value.toInt()) {
                      case 0:
                        return 'Mon';
                      case 1:
                        return 'Tue';
                      case 2:
                        return 'Wed';
                      case 3:
                        return 'Thu';
                      case 4:
                        return 'Fri';
                      case 5:
                        return 'Sat';
                      case 6:
                        return 'Sun';
                      default:
                        return '';
                    }
                  },
                ),
                leftTitles: SideTitles(
                  showTitles: true,
                  getTextStyles: (value) => const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                  rotateAngle: 0,
                  getTitles: (double value) {
                    if (value == 0) {
                      return '0';
                    }
                    return 'Rp${value.toInt()}0k';
                  },
                  interval: 5,
                  margin: 8,
                  reservedSize: 30,
                ),
              ),
              gridData: FlGridData(
                show: true,
                checkToShowHorizontalLine: (value) => value % 5 == 0,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: Colors.white,
                    strokeWidth: 0.8,
                    dashArray: [2, 4],
                  );
                },
              ),
              borderData: FlBorderData(
                show: true,
                border: const Border(
                  bottom: BorderSide(
                    color: Colors.white,
                  ),
                  left: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              barGroups: [
                BarChartGroupData(
                  x: 0,
                  barRods: [
                    BarChartRodData(
                      y: 5,
                      colors: [
                        Colors.yellow.shade600,
                      ],
                      width: barWidth,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 2,
                  barRods: [
                    BarChartRodData(
                      y: 1.5,
                      colors: [
                        Colors.yellow.shade600,
                      ],
                      width: barWidth,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 3,
                  barRods: [
                    BarChartRodData(
                      y: 3,
                      colors: [
                        Colors.yellow.shade600,
                      ],
                      width: barWidth,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 4,
                  barRods: [
                    BarChartRodData(
                      y: 7,
                      colors: [
                        Colors.yellow.shade600,
                      ],
                      width: barWidth,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 5,
                  barRods: [
                    BarChartRodData(
                      y: 6.1,
                      colors: [Colors.yellow.shade600],
                      width: barWidth,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 6,
                  barRods: [
                    BarChartRodData(
                      y: 16,
                      colors: [Colors.yellow.shade600],
                      width: barWidth,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
