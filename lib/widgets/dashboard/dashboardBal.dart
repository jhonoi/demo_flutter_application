import 'package:flutter/material.dart';

class DashboardBalance extends StatelessWidget {
  const DashboardBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 100.0, 0, 170.0),
      child: Center(
        child: Column(
          children: [
            Text(
              'Total Volume (USD)',
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w100,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              '0.00',
              style: TextStyle(
                color: Color(0xFF010026),
                fontSize: 44.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
