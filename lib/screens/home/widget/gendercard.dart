import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/config/size_config.dart';
import 'package:bmicalculator/screens/home/widget/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum Gender {
  male,
  female,
}

class GenderCard extends StatefulWidget {
  @override
  _GenderCardState createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      height: getProportionateScreenHeight(20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: ReusableCard(
              onPress: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              colour: selectedGender == Gender.male
                  ? AppColor.buttonbackgroundcolor
                  : AppColor.backgroundcolor,
              cardChild: Container(
                height: getProportionateScreenWidth(50),
                child: Center(
                  child: Text(
                    "Male",
                    style: TextStyle(
                      color: selectedGender == Gender.male
                          ? AppColor.selectedTextColor
                          : AppColor.unselectedTextColor,
                      fontSize: getProportionateScreenWidth(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () {
                setState(() {
                  selectedGender = Gender.female;
                });
              },
              colour: selectedGender == Gender.female
                  ? AppColor.buttonbackgroundcolor
                  : AppColor.backgroundcolor,
              cardChild: Container(
                height: getProportionateScreenWidth(50),
                child: Center(
                  child: Text(
                    "Female",
                    style: TextStyle(
                      color: selectedGender == Gender.female
                          ? AppColor.selectedTextColor
                          : AppColor.unselectedTextColor,
                      fontSize: getProportionateScreenWidth(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
