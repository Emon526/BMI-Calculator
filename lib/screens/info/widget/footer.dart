import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/config/size_config.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String normalNumber = "18.5 to 24.9";
    String normalText = "Normal";
    String underwidgetNumber = "Less then 18.5";
    String underwidgetText = "Underwidget";
    String overwidgetNumber = "25 to 29.9";
    String overwigetText = "Overwidget";
    String obesityNumber = "25 to 29.9";
    String obesityText = "Obesity";
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
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
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    normalNumber,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15.0),
                      color: AppColor.unselectedTextColor.withOpacity(0.7),
                    ),
                  ),
                  Text(
                    normalText,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18.0),
                      color: AppColor.unselectedTextColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              height: 2,
              color: AppColor.unselectedTextColor.withOpacity(0.1),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    underwidgetNumber,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15.0),
                      color: AppColor.unselectedTextColor.withOpacity(0.7),
                    ),
                  ),
                  Text(
                    underwidgetText,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18.0),
                      color: AppColor.unselectedTextColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              height: 2,
              color: AppColor.unselectedTextColor.withOpacity(0.1),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    overwidgetNumber,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15.0),
                      color: AppColor.unselectedTextColor.withOpacity(0.7),
                      height: 1.25,
                    ),
                  ),
                  Text(
                    overwigetText,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18.0),
                      color: AppColor.unselectedTextColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              height: 2,
              color: AppColor.unselectedTextColor.withOpacity(0.1),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    obesityNumber,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15.0),
                      color: AppColor.unselectedTextColor.withOpacity(0.7),
                    ),
                  ),
                  Text(
                    obesityText,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18.0),
                      color: AppColor.unselectedTextColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
