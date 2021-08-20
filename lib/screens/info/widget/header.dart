import 'package:bmicalculator/screens/helpers/constants.dart';
import 'package:bmicalculator/screens/helpers/size_config.dart';

import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  String companyName1 = "Your BMI";
  dynamic spreed = "18.5";
  String companyName2 = "Normal";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xFFf5fcf8),
            blurRadius: 6,
            offset: Offset(
              -4,
              -8,
            ),
            spreadRadius: 0),
        BoxShadow(
            color: kTextColor,
            blurRadius: 6,
            offset: Offset(
              4,
              8,
            ),
            spreadRadius: 0),
      ], borderRadius: BorderRadius.circular(22), color: kWhiteColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                companyName1,
                style: kHeadLine4,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                spreed,
                style: kHeadLine2,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                companyName2,
                style: kHeadLine5,
              )
            ],
          ),
        ],
      ),
    );
  }
}
