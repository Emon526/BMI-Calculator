import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/config/size_config.dart';
import 'package:bmicalculator/helpers/components/appbarbutton.dart';
import 'package:bmicalculator/helpers/components/custom_appbar.dart';
import 'package:bmicalculator/screens/info/infoscreen.dart';

import 'package:bmicalculator/screens/tips/widget/tipsHeader.dart';
import 'package:bmicalculator/screens/tips/widget/tipsfooter.dart';
import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
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
        title: 'Good Tips',
        leading: AppBarButton(
          icon: Icons.arrow_back,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: AppColor.backgroundcolor,
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            TipsHeader(),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            FooterTipsWidget(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            FooterTipsWidget(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            FooterTipsWidget(),
            // SizedBox(
            //   height: getProportionateScreenHeight(20),
            // ),
            // ButtonWidget()
          ],
        ),
      ),
    );
  }
}
