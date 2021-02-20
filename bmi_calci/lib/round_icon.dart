import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  @override
  final IconData icon;
  final Function onPressed;
  RoundedIcon({this.icon, @required this.onPressed});
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
