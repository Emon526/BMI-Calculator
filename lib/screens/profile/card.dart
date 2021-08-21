import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/config/size_config.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  ListCard(
      {@required this.colour,
      @required this.result,
      @required this.resultText,
      @required this.title});

  final Color colour;

  final String title;
  final String result;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              title,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18.0),
                color: AppColor.unselectedTextColor.withOpacity(0.7),
                height: 1.25,
              ),
            ),
          ),
          Container(
              child: Text(
            result.toString(),
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18.0),
              color: AppColor.unselectedTextColor.withOpacity(0.9),
              height: 1,
            ),
          )),
          Container(
              child: Text(
            resultText,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18.0),
              color: AppColor.buttonbackgroundcolor,
              height: 1.25,
            ),
          )),
        ],
      ),
      margin: EdgeInsets.only(bottom: 15, top: 15, left: 15, right: 15),
      decoration: BoxDecoration(
        color: colour,
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
    );
  }
}
