import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      height: 60.0,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15.0),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Color(0xFFBCBBF6),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jhonoi Tomlin',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'jhonoitomlin@gmail.com',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
