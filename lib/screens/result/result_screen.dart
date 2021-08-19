import 'package:bmicalculator/helpers/color/color.dart';
import 'package:bmicalculator/helpers/components/appbar.dart';
import 'package:bmicalculator/helpers/components/bottom_button.dart';
import 'package:bmicalculator/helpers/components/pie_chart/pie_chart_widget.dart';

import 'package:flutter/material.dart';

import 'package:styled_text/styled_text.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.interpretation, this.bmiResult, this.resultText});

  final double bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: HomeAppBar.primaryAppBar("BMI Calculator"),
      body: Container(
        color: AppColor.backgroundcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(50),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                      // padding: EdgeInsets.all(
                      //   MediaQuery.of(context).size.height * 0.020,
                      // ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: size.height * 0.28,
                              child: PieChartWidget(
                                total: 30.0,
                                used: bmiResult,
                              ),
                            ),
                            SizedBox(height: size.height * 0.07),
                            StyledText(
                              text: " You have  <color> " +
                                  resultText +
                                  "</color> body weight !",
                              tags: {
                                'color': StyledTextTag(
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height * 0.02,
                                        color: AppColor.buttonbackgroundcolor)),
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    BottomButton(
                      buttonTitle: 'Details',
                      style: TextStyle(
                        fontSize: size.width * 0.05,
                        color: AppColor.unselectedTextColor,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      width: size.width * 0.4,
                      height: size.height * 0.06,
                      colour: AppColor.backgroundcolor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
