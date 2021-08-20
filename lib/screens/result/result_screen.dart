import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/components/appbarbutton.dart';
import 'package:bmicalculator/helpers/components/widget/bottom_button.dart';
import 'package:bmicalculator/helpers/components/custom_appbar.dart';
import 'package:bmicalculator/screens/home/widget/pie_chart/pie_chart_widget.dart';

import 'package:bmicalculator/screens/info/infoscreen.dart';

import 'package:flutter/material.dart';

import 'package:styled_text/styled_text.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmiResult, this.resultText});

  final double bmiResult;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        onpressed: () {
          print("pressed");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InfoScreen(),
            ),
          );
        },
        backgroundcolor: Colors.transparent,
        title: 'BMI Results',
        leading: AppBarButton(
          icon: Icons.arrow_back,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
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
                                  text: bmiResult.toString(),
                                ),
                              ),
                              SizedBox(height: size.height * 0.07),
                              StyledText(
                                text: " You have  <color> " +
                                    resultText +
                                    "</color> body weight !",
                                style: TextStyle(
                                    color: AppColor.unselectedTextColor),
                                tags: {
                                  'color': StyledTextTag(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.height * 0.02,
                                          color:
                                              AppColor.buttonbackgroundcolor)),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InfoScreen(),
                            ),
                          );
                          // Navigator.pop(context);
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
      ),
    );
  }
}
