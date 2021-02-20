import 'package:flutter/material.dart';
import 'health_app.dart';

void main() {
  runApp(
    BMIApp(),
  );
}

class BMIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
      ),
      home: HealthApp(),
    );
  }
}
