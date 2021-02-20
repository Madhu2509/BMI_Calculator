import 'package:flutter/material.dart';
import 'constants.dart';
import 'result_page.dart';

class BottomPage extends StatelessWidget {
  final Function onTap;
  final String text;
  BottomPage({@required this.onTap, @required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kBigTextStyle,
          ),
        ),
        color: Color(0xffeb1555),
        height: kContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
      ),
    );
  }
}
