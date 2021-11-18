import 'package:flutter/material.dart';

class ListOption extends StatelessWidget {
  ListOption({required this.text, required this.icon});

  final Color blueTextColor = Color(0xFF010026);
  final String text;
  IconData icon = Icons.ac_unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(13.0, 20.0, 13.0, 0.0),
      padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 20.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[200]!),
        ),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
                //color: blueTextColor,
                ),
          ),
          Expanded(child: Container()),
          icon == Icons.ac_unit
              ? Container()
              : Icon(
                  icon,
                  color: blueTextColor,
                ),
        ],
      ),
    );
  }
}
