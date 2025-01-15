import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import flutter_svg package

class CustomListTile extends StatelessWidget {
  final VoidCallback onTapCallback;
  final String text;
  final String svgPath;
  final Color color;

  const CustomListTile({
    super.key,
    required this.onTapCallback,
    required this.text,
    required this.svgPath,
    this.color = const Color(0xFF064089),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListTile(
        leading: SvgPicture.asset(
          svgPath, // Use the dynamic SVG path
          color: color,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
        onTap: onTapCallback,
      ),
    );
  }
}
