import 'package:bmicalculator/screens/helpers/constants.dart';
import 'package:bmicalculator/screens/helpers/size_config.dart';

import 'package:bmicalculator/screens/tips/widget/appbar.dart';
import 'package:bmicalculator/screens/tips/widget/button.dart';
import 'package:bmicalculator/screens/tips/widget/tipsHeader.dart';
import 'package:bmicalculator/screens/tips/widget/tipsfooter.dart';
import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        // AppBar Section
        child: AppBarWidget(),
      ),
      body: Container(
        child: Column(
          children: [
            TipsHeader(),
            SizedBox(
              height: getProportionateScreenHeight(60),
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
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            ButtonWidget()
          ],
        ),
      ),
    );
  }
}
