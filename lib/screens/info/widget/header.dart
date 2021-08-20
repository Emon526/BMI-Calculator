import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/config/size_config.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
      decoration: BoxDecoration(
        color: AppColor.backgroundcolor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            spreadRadius: -50,
            blurRadius: 17,
            offset: Offset(-5, -5),
            color: Color.fromRGBO(239, 239, 239, 1),
          ),
          BoxShadow(
            spreadRadius: -2,
            blurRadius: 10,
            offset: Offset(7, 7),
            color: Color.fromRGBO(206, 220, 226, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                companyName1,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18.0),
                  color: AppColor.unselectedTextColor.withOpacity(0.7),
                  height: 1.25,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                spreed,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(45.0),
                  color: AppColor.unselectedTextColor.withOpacity(0.9),
                  height: 1.25,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                companyName2,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18.0),
                  color: AppColor.buttonbackgroundcolor,
                  height: 1.25,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
