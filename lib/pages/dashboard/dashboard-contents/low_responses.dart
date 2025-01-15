import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LowResponses extends StatelessWidget {
  const LowResponses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Units with Low Responses",
                    style: TextStyle(
                      color: Color(0xFF064089),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 23,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        side: BorderSide(
                          color: Color(0xFF1E1E1E),
                          width: 0.9,
                        ),
                        backgroundColor: Color(0xFFE1E2E6),
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        "View Report",
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 400,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFCFD8E5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(3, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                    height: 260,
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceAround,
                        maxY: 100,
                        barGroups: [
                          BarChartGroupData(x: 0, barRods: [
                            BarChartRodData(toY: 5, color: Color(0xFF064089)),
                          ]),
                          BarChartGroupData(x: 1, barRods: [
                            BarChartRodData(toY: 7, color: Color(0xFF064089)),
                          ]),
                          BarChartGroupData(x: 2, barRods: [
                            BarChartRodData(toY: 6, color: Color(0xFF064089)),
                          ]),
                        ],
                        titlesData: FlTitlesData(
                          topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false)),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 40,
                              interval: 10,
                              getTitlesWidget: (value, meta) {
                                return value % 10 == 0
                                    ? Text(
                                        '${value.toInt()}',
                                        style: TextStyle(
                                          color: Color(0xFF064089),
                                          fontSize: 12,
                                        ),
                                      )
                                    : Container();
                              },
                            ),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                switch (value.toInt()) {
                                  case 0:
                                    return Text(
                                      'Week 1',
                                      style: TextStyle(
                                        color: Color(0xFF064089),
                                        fontSize: 12,
                                      ),
                                    );
                                  case 1:
                                    return Text(
                                      'Week 2',
                                      style: TextStyle(
                                        color: Color(0xFF064089),
                                        fontSize: 12,
                                      ),
                                    );
                                  case 2:
                                    return Text(
                                      'Week 3',
                                      style: TextStyle(
                                        color: Color(0xFF064089),
                                        fontSize: 12,
                                      ),
                                    );
                                  default:
                                    return Text('');
                                }
                              },
                            ),
                          ),
                        ),
                        gridData: FlGridData(show: false),
                        borderData: FlBorderData(show: false),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
