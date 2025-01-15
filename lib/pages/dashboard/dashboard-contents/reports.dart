import 'package:flutter/material.dart';

class Reports extends StatelessWidget {
  final String text;
  const Reports({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 80,
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                height: 1,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF064089),
              ),
              softWrap: true,
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
                  backgroundColor: Color(0xFFCFD8E5),
                  padding: EdgeInsets.zero,
                ),
                child: Text(
                  "View",
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
    );
  }
}
