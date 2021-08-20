import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/config/size_config.dart';
import 'package:bmicalculator/screens/home/widget/pie_chart/pie_chart_widget.dart';

import 'package:flutter/material.dart';

class TipsHeader extends StatelessWidget {
  TipsHeader({
    this.bmiResult,
  });

  final double bmiResult;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.12,
                width: size.width * 0.25,
                child: PieChartWidget(
                  text: '',
                  total: 30.0,
                  used: 30.0,
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
                style: TextStyle(
                    color: AppColor.unselectedTextColor.withOpacity(0.9),
                    fontSize: 23),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Container(
                  width: getProportionateScreenWidth(170),
                  child: Text(
                    "I'm your mentor to give to good tips.",
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColor.unselectedTextColor.withOpacity(0.7),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
