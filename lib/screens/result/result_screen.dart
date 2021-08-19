import 'package:bmicalculator/helpers/color/color.dart';
import 'package:bmicalculator/helpers/components/appbar.dart';
import 'package:bmicalculator/helpers/components/bottom_button.dart';
import 'package:bmicalculator/helpers/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar.primaryAppBar("BMI Calculator"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: AppColor.backgroundcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                  ),
                  Text(
                    bmiResult,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
            colour: AppColor.backgroundcolor,
          )
        ],
      ),
    );
  }
}
