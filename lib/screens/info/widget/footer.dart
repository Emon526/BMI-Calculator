import 'package:bmicalculator/screens/helpers/constants.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String normalNumber = "18.5 to 23.8";
    String normalText = "Normal";
    String underwidgetNumber = "Less then 18.5";
    String underwidgetText = "Underwidget";
    String overwidgetNumber = "18.5 to 23.8";
    String overwigetText = "Overwidget";
    String obesityNumber = "18.5 to 23.8";
    String obesityText = "Obesity";
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
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
                    style: kHeadLine4,
                  ),
                  Text(
                    normalText,
                    style: kHeadLine6,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              height: 2,
              color: kTextColor,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    underwidgetNumber,
                    style: kHeadLine4,
                  ),
                  Text(
                    underwidgetText,
                    style: kHeadLine6,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              height: 2,
              color: kTextColor,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    overwidgetNumber,
                    style: kHeadLine4,
                  ),
                  Text(
                    overwigetText,
                    style: kHeadLine6,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              height: 2,
              color: kTextColor,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    obesityNumber,
                    style: kHeadLine4,
                  ),
                  Text(
                    obesityText,
                    style: kHeadLine6,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
