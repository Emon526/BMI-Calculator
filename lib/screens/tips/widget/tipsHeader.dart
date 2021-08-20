import 'package:bmicalculator/screens/helpers/constants.dart';
import 'package:bmicalculator/screens/helpers/size_config.dart';
import 'package:flutter/material.dart';

class TipsHeader extends StatelessWidget {
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
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(8),
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Color(0xFFf5fcf8),
                  //       blurRadius: 6,
                  //       offset: Offset(
                  //         -4,
                  //         -4,
                  //       ),
                  //       spreadRadius: 0),
                  //   BoxShadow(
                  //       color: kTextColor,
                  //       blurRadius: 6,
                  //       offset: Offset(
                  //         4,
                  //         4,
                  //       ),
                  //       spreadRadius: 0),
                  // ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("images/download.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Vin!",
                style: TextStyle(color: kBlackColor, fontSize: 23),
              ),
              Column(
                children: [
                  Container(
                      width: getProportionateScreenWidth(170),
                      child: Text(
                        "I'm your mentor to give to good tips.",
                        style: TextStyle(fontSize: 17, color: kTextColor),
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
