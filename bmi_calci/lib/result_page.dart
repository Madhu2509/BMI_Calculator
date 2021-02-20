import 'package:flutter/material.dart';
import 'package:bmi_calci/constants.dart';
import 'package:bmi_calci/health_app.dart';
import 'package:bmi_calci/reuseable_card.dart';
import 'bottom_page.dart';

class ResultPage extends StatelessWidget {
  final String bmiresult;
  final String resultText;
  final String suggestion;
  ResultPage(
      {@required this.bmiresult,
      @required this.resultText,
      @required this.suggestion});
  @override
  int result = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULT',
                style: kTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActivecardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultStyle,
                  ),
                  Text(
                    bmiresult,
                    style: kBMIStyle,
                  ),
                  Text(
                    suggestion,
                    style: kBodyStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomPage(
            text: 'RECALCULATE',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HealthApp();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
