import 'package:css_website_access/pages/dashboard/dashboard-contents/low_responses.dart';
import 'package:css_website_access/pages/dashboard/dashboard-contents/monthly_responses.dart';
import 'package:css_website_access/pages/dashboard/dashboard-contents/reports.dart';
import 'package:css_website_access/pages/dashboard/dashboard-contents/trend_analysis.dart';
import 'package:css_website_access/pages/dashboard/dashboard_header.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DashboardHeader(),
        Row(
          children: [
            SizedBox(width: 400, child: MonthlyResponses()),
            SizedBox(width: 400, child: LowResponses()),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 10,
              ),
              child: SizedBox(
                height: 280,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Reports(text: "Reported NCAR \nthis Quarter"),
                    Reports(text: "Responses \nthis Month"),
                    Reports(text: "View Questionaire"),
                  ],
                ),
              ),
            ),
          ],
        ),
        TrendAnalysis(),
      ],
    );
  }
}
