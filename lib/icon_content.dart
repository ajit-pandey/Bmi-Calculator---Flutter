import 'package:flutter/material.dart';

import "constants.dart";


class MaleFemaleCard extends StatelessWidget {
 final String text;
 final IconData gender;
 MaleFemaleCard({this.text,this.gender});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
