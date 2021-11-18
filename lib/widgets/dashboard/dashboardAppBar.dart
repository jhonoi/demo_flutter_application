import 'package:flutter/material.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      height: 40.0,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15.0),
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Color(0xFFBCBBF6),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hi Jhonoi',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text('Burlin Co'),
            ],
          ),
          Expanded(child: Container()),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.grey[200],
            ),
            child: Center(
              child: Text(
                'W',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
