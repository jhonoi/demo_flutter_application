import 'package:flutter/material.dart';

class AlertBar extends StatelessWidget {
  const AlertBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      height: 70,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey[300]!),
          bottom: BorderSide(color: Colors.grey[300]!),
        ),
        color: Color(0xFFFDFAE0),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15.0),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Color(0xFFBCBBF6),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Burlin Co'),
              Text(
                'Owner',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.gpp_maybe_sharp,
                  color: Colors.amber[900],
                  size: 16.0,
                ),
                SizedBox(width: 5.0),
                Text(
                  'LIMITED',
                  style: TextStyle(color: Colors.amber[900]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
