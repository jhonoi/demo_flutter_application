import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  ListHeader({
    required this.text,
  });

  final Color blueTextColor = Color(0xFF010026);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(13.0, 30.0, 13.0, 0.0),
      padding: EdgeInsets.only(bottom: 13.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[200]!),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: blueTextColor,
        ),
      ),
    );
  }
}
