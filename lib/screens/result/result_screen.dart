import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/components/appbarbutton.dart';
import 'package:bmicalculator/helpers/components/pie_chart/pie_chart_widget.dart';
import 'package:bmicalculator/helpers/components/widget/bottom_button.dart';
import 'package:bmicalculator/helpers/components/custom_appbar.dart';
import 'package:bmicalculator/helpers/config/size_config.dart';

import 'package:bmicalculator/screens/info/infoscreen.dart';
import 'package:bmicalculator/screens/profile/profile.dart';

import 'package:flutter/material.dart';

import 'package:styled_text/styled_text.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmiResult, this.resultText});

  final double bmiResult;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onpressed: () {
          print("pressed");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Profile(),
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
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: getProportionateScreenHeight(230.0),
                                child: PieChartWidget(
                                  total: 30.0,
                                  used: bmiResult,
                                  text: bmiResult.toString(),
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(70.0),
                              ),
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
                                          fontSize:
                                              getProportionateScreenWidth(15),
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
                          fontSize: getProportionateScreenWidth(20),
                          color: AppColor.unselectedTextColor,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InfoScreen(
                                score: bmiResult,
                                title: resultText,
                              ),
                            ),
                          );
                          // Navigator.pop(context);
                        },
                        width: getProportionateScreenWidth(150),
                        height: getProportionateScreenHeight(50),
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
