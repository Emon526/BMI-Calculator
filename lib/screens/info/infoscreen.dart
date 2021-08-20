import 'package:bmicalculator/helpers/config/size_config.dart';

import 'package:bmicalculator/helpers/components/appbarbutton.dart';
import 'package:bmicalculator/helpers/components/custom_appbar.dart';

import 'package:bmicalculator/screens/info/widget/button.dart';
import 'package:bmicalculator/screens/info/widget/footer.dart';
import 'package:bmicalculator/screens/info/widget/header.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        onpressed: () {},
        title: 'BMI info',
        backgroundcolor: Colors.transparent,
        leading: AppBarButton(
          icon: Icons.arrow_back,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            //Header Section
            HeaderWidget(),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            // Footer Section
            FooterWidget(),
            SizedBox(
              height: getProportionateScreenHeight(100),
            ),

            // Button Scetion
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}
