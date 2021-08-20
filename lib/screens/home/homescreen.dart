import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/components/appbarbutton.dart';
import 'package:bmicalculator/helpers/components/widget/bottom_button.dart';
import 'package:bmicalculator/helpers/components/custom_appbar.dart';
import 'package:bmicalculator/screens/home/widget/gendercard.dart';
import 'package:bmicalculator/screens/home/widget/reusable_card.dart';
import 'package:bmicalculator/helpers/components/widget/round_icon_button.dart';
import 'package:bmicalculator/helpers/utils/calculate_bmi.dart';
import 'package:bmicalculator/screens/info/infoscreen.dart';
import 'package:bmicalculator/screens/result/result_screen.dart';
import 'package:bmicalculator/screens/tips/tipsscreen.dart';
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
        title: 'BMI Calculator',
        leading: AppBarButton(
          icon: Icons.lightbulb,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TipsScreen(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          margin: EdgeInsets.only(right: 10, left: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(child: GenderCard()),
              Container(
                height: size.height * .68,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        colour: AppColor.backgroundcolor,
                        onPress: () => {},
                        cardChild: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: size.height * 0.015),
                              Text(
                                'Height',
                                style: TextStyle(
                                  color: AppColor.unselectedTextColor,
                                  fontSize: size.width * 0.05,
                                ),
                              ),

                              //for slider
                              Container(
                                height: size.height * 0.59,
                                child: SfSlider.vertical(
                                  value: height.toDouble(),
                                  min: 0.0,
                                  max: 220,
                                  interval: 20,
                                  showTicks: true,
                                  showLabels: true,
                                  activeColor: AppColor.buttonbackgroundcolor,
                                  inactiveColor: AppColor.unselectedTextColor
                                      .withOpacity(0.2),
                                  overlayShape: SfOverlayShape(),
                                  thumbShape: SfThumbShape(),
                                  labelPlacement: LabelPlacement.betweenTicks,
                                  enableTooltip: true,
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
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          ReusableCard(
                            colour: AppColor.backgroundcolor,
                            cardChild: Container(
                              height: size.height * .30,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: size.height * 0.01),
                                  Text(
                                    'Weight',
                                    style: TextStyle(
                                      color: AppColor.unselectedTextColor,
                                      fontSize: size.width * 0.05,
                                    ),
                                  ),
                                  SizedBox(height: size.height * 0.04),
                                  Text(
                                    weight.toString(),
                                    style: TextStyle(
                                        color: AppColor.unselectedTextColor,
                                        fontSize: 50),
                                  ),
                                  SizedBox(height: size.height * 0.04),
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
                                      SizedBox(width: size.width * 0.04),
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
                                  SizedBox(height: size.height * 0.02),
                                ],
                              ),
                            ),
                          ),
                          ReusableCard(
                            colour: AppColor.backgroundcolor,
                            cardChild: Container(
                              height: size.height * 0.29,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: size.height * 0.01),
                                  Text(
                                    'Age',
                                    style: TextStyle(
                                      color: AppColor.unselectedTextColor,
                                      fontSize: size.width * 0.05,
                                    ),
                                  ),
                                  SizedBox(height: size.height * 0.04),
                                  Text(
                                    age.toString(),
                                    style: TextStyle(
                                        color: AppColor.unselectedTextColor,
                                        fontSize: 50),
                                  ),
                                  SizedBox(height: size.height * 0.04),
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
                                      SizedBox(width: size.width * 0.04),
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
                                  SizedBox(height: size.height * 0.02),
                                ],
                              ),
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
                  style: TextStyle(
                    fontSize: size.width * 0.05,
                    color: AppColor.backgroundcolor,
                  ),
                  onTap: () {
                    BmiLogic calc = BmiLogic(height: height, weight: weight);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultsPage(
                          bmiResult: calc.calculateBMI(),
                          resultText: calc.getResult(),
                          // interpretation: calc.getInterpretation(),
                        ),
                      ),
                    );
                  },
                  width: size.width,
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
