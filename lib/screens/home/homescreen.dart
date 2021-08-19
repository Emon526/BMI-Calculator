import 'package:bmicalculator/helpers/color/color.dart';
import 'package:bmicalculator/helpers/components/appbar.dart';
import 'package:bmicalculator/helpers/components/bottom_button.dart';
import 'package:bmicalculator/helpers/components/gendercard.dart';
import 'package:bmicalculator/helpers/components/reusable_card.dart';
import 'package:bmicalculator/helpers/components/round_icon_button.dart';
import 'package:bmicalculator/helpers/utils/calculate_bmi.dart';
import 'package:bmicalculator/screens/result/result_screen.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar.primaryAppBar("BMI Calculator"),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(right: 10, left: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              GenderCard(),
              Container(
                height: 480,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        cardChild: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Height',
                                style: TextStyle(
                                  color: AppColor.unselectedTextColor,
                                  fontSize: 18,
                                ),
                              ),

                              //for slider
                              Container(
                                height: 400,
                                child: SfSlider.vertical(
                                  value: height.toDouble(),
                                  min: 110.0,
                                  max: 250.0,
                                  interval: 20,
                                  showTicks: true,
                                  showLabels: true,
                                  activeColor: AppColor.buttonbackgroundcolor,
                                  inactiveColor: Colors.red,
                                  overlayShape: SfOverlayShape(),
                                  thumbShape: SfThumbShape(),
                                  labelPlacement: LabelPlacement.betweenTicks,

                                  // enableTooltip: true,
                                  minorTicksPerInterval: 3,
                                  onChanged: (dynamic newValue) {
                                    setState(() {
                                      height = newValue.round();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        colour: AppColor.backgroundcolor,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          ReusableCard(
                            colour: AppColor.backgroundcolor,
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 20),
                                Text(
                                  'Weight',
                                  style: TextStyle(
                                      color: AppColor.unselectedTextColor,
                                      fontSize: 18),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  weight.toString(),
                                  style: TextStyle(
                                      color: AppColor.unselectedTextColor,
                                      fontSize: 50),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RoundIconButton(
                                        icon: FontAwesomeIcons.plus,
                                        onPressed: () {
                                          setState(() {
                                            weight++;
                                          });
                                        }),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(height: 22),
                              ],
                            ),
                          ),
                          ReusableCard(
                            colour: AppColor.backgroundcolor,
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 20),
                                Text(
                                  'AGE',
                                  style: TextStyle(
                                      color: AppColor.unselectedTextColor,
                                      fontSize: 18),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  age.toString(),
                                  style: TextStyle(
                                      color: AppColor.unselectedTextColor,
                                      fontSize: 50),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RoundIconButton(
                                        icon: FontAwesomeIcons.plus,
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        }),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RoundIconButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPressed: () {
                                        setState(
                                          () {
                                            age--;
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(height: 22),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BottomButton(
                  buttonTitle: 'Let\'s Begin ',
                  onTap: () {
                    BmiLogic calc = BmiLogic(height: height, weight: weight);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultsPage(
                          bmiResult: calc.calculateBMI(),
                          resultText: calc.getResult(),
                          interpretation: calc.getInterpretation(),
                        ),
                      ),
                    );
                  },
                  colour: AppColor.buttonbackgroundcolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
