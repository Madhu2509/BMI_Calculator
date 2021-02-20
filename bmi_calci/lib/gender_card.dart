import 'package:flutter/material.dart';
import 'constants.dart';

class GenderCard extends StatelessWidget {
  @override
  final IconData gender;
  final String text;
  GenderCard({this.gender, this.text});
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gender,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kTextStyle,
        ),
      ],
    );
  }
}
