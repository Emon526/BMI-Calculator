import 'package:bmicalculator/helpers/color/color.dart';
import 'package:bmicalculator/helpers/components/reusable_card.dart';
import 'package:flutter/material.dart';

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
    return Container(
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
                height: 50,
                width: 50,
                child: Center(
                  child: Text(
                    "Male",
                    style: TextStyle(
                      color: selectedGender == Gender.male
                          ? AppColor.selectedTextColor
                          : AppColor.unselectedTextColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              // cardChild: Container(
              //   child: Text("Male"),
              // ),
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
                height: 50,
                width: 50,
                child: Center(
                  child: Text(
                    "Female",
                    style: TextStyle(
                      color: selectedGender == Gender.female
                          ? AppColor.selectedTextColor
                          : AppColor.unselectedTextColor,
                      fontSize: 16,
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
