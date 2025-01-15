import 'package:css_website_access/pages/dashboard/dashboard-contents/monthly_responses_legend.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MonthlyResponses extends StatelessWidget {
  const MonthlyResponses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
                    "Monthly Responses",
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
              children: [
                SizedBox(
                  width: 260,
                  height: 260,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(
                          radius: 100,
                          value: 1,
                          color: Color(0xFF29AB87),
                          title: "More than 10",
                          titleStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        PieChartSectionData(
                          radius: 100,
                          value: 1,
                          color: Color(0xFFEE6B6E),
                          title: "0",
                          titleStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        PieChartSectionData(
                          radius: 100,
                          value: 1,
                          color: Color(0xFFFF9D5C),
                          title: "Less than 10",
                          titleStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                      sectionsSpace: 0,
                      centerSpaceRadius: 0,
                      pieTouchData: PieTouchData(enabled: false),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LegendItem(color: Color(0xFFEE6B6E), label: "0"),
                    LegendItem(color: Color(0xFFFF9D5C), label: "Less than 10"),
                    LegendItem(color: Color(0xFF29AB87), label: "More than 10"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
