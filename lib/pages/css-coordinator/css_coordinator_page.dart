import 'package:css_website_access/pages/dashboard/dashboard.dart';
import 'package:css_website_access/pages/survey/survey.dart';
import 'package:css_website_access/widgets/custom_listile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CssCoordinatorPanelSide extends StatefulWidget {
  const CssCoordinatorPanelSide({super.key});

  @override
  State<CssCoordinatorPanelSide> createState() =>
      _CssCoordinatorPanelSideState();
}

class _CssCoordinatorPanelSideState extends State<CssCoordinatorPanelSide> {
  Widget _currentPage = Dashboard();
  String _active = "Dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6E7EC),
      body: Row(
        children: [
          Container(
            width: 280,
            decoration: BoxDecoration(
              color: Color(0xFFF1F7F9),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF1E1E1E).withValues(alpha: 0.4),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(2, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Center(
                    child: SvgPicture.asset(
                      'svg/Logo.svg',
                      height: 100,
                      width: 50,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomListTile(
                    onTapCallback: () {
                      setState(() {
                        _active = "Dashboard";
                        _currentPage = Dashboard();
                      });
                    },
                    text: 'Dashboard',
                    svgPath: 'svg/icons/dashboard.svg',
                    color: _active == "Dashboard"
                        ? Color(0xFF064089)
                        : Color(0xFF48494A),
                  ),
                  CustomListTile(
                    onTapCallback: () {
                      setState(() {
                        _active = "Survey";
                        _currentPage = Survey();
                      });
                    },
                    text: 'Survey',
                    svgPath: 'svg/icons/survey.svg',
                    color: _active == "Survey"
                        ? Color(0xFF064089)
                        : Color(0xFF48494A),
                  ),
                  CustomListTile(
                    onTapCallback: () {
                      setState(() {
                        _active = "Data Responses";
                      });
                    },
                    text: 'Data Responses',
                    svgPath: 'svg/icons/page-edit.svg',
                    color: _active == "Data Responses"
                        ? Color(0xFF064089)
                        : Color(0xFF48494A),
                  ),
                  CustomListTile(
                    onTapCallback: () {
                      setState(() {
                        _active = "Reports";
                      });
                    },
                    text: 'Reports',
                    svgPath: 'svg/icons/file-earmark-bar-graph.svg',
                    color: _active == "Reports"
                        ? Color(0xFF064089)
                        : Color(0xFF48494A),
                  ),
                  CustomListTile(
                    onTapCallback: () {
                      setState(() {
                        _active = "QR Generation";
                      });
                    },
                    text: 'QR Generation',
                    svgPath: 'svg/icons/scan-qr-code.svg',
                    color: _active == "QR Generation"
                        ? Color(0xFF064089)
                        : Color(0xFF48494A),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'SETTINGS',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF48494A),
                      ),
                    ),
                  ),
                  CustomListTile(
                    onTapCallback: () {
                      setState(() {
                        _active = "Template Management";
                      });
                    },
                    text: 'Template Management',
                    svgPath: 'svg/icons/template-management.svg',
                    color: _active == "Template Management"
                        ? Color(0xFF064089)
                        : Color(0xFF48494A),
                  ),
                  CustomListTile(
                    onTapCallback: () {
                      setState(() {
                        _active = "Data Management";
                      });
                    },
                    text: "Data Management",
                    svgPath: 'svg/icons/data-management.svg',
                    color: _active == "Data Management"
                        ? Color(0xFF064089)
                        : Color(0xFF48494A),
                  ),
                  CustomListTile(
                    onTapCallback: () {
                      setState(() {
                        _active = "Audit Logs";
                      });
                    },
                    text: 'Audit Logs',
                    svgPath: 'svg/icons/audit-log.svg',
                    color: _active == "Audit Logs"
                        ? Color(0xFF064089)
                        : Color(0xFF48494A),
                  ),
                  CustomListTile(
                    onTapCallback: () {
                      setState(() {
                        _active = "Display";
                      });
                    },
                    text: 'Display',
                    svgPath: 'svg/icons/display.svg',
                    color: _active == "Display"
                        ? Color(0xFF064089)
                        : Color(0xFF48494A),
                  ),
                  const Spacer(),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.logout, color: Color(0xFF064089)),
                      label: const Text(
                        'Logout',
                        style: TextStyle(color: Color(0xFF064089)),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(
                            color: Color(0xFF064089), width: 2.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: _currentPage,
          ),
        ],
      ),
    );
  }
}
