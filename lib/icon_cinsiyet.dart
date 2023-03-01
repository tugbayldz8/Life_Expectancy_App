import 'package:flutter/material.dart';

import 'constants.dart';

class MyColumn extends StatelessWidget {
  final IconData? icon;
  final String? yazi;
  MyColumn({this.icon, this.yazi});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon, //FontAwesomeIcons.venus,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$yazi',
          style: kMetinStili,
        ),
      ],
    );
  }
}
