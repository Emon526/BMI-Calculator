import 'package:bmicalculator/screens/helpers/size_config.dart';
import 'package:bmicalculator/screens/info/widget/appbar.dart';
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        // AppBar Section
        child: AppBarWidget(),
      ),
      body: Container(
        child: Column(
          children: [
            //Header Section
            HeaderWidget(),
            SizedBox(
              height: getProportionateScreenHeight(60),
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
