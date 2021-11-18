import 'package:flutter/material.dart';

class QuickChargeButton extends StatelessWidget {
  final String value;
  const QuickChargeButton({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      height: 45.0,
      width: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 2,
            offset: Offset(0, 2.5), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Color(0xFFDEDDFF),
            ),
            child: Center(
              child: Icon(
                Icons.bolt_rounded,
                color: Color(0xFF201E94),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                value,
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'USD',
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
