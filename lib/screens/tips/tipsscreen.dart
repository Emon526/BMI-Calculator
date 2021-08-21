import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/config/size_config.dart';
import 'package:bmicalculator/helpers/components/appbarbutton.dart';
import 'package:bmicalculator/helpers/components/custom_appbar.dart';
import 'package:bmicalculator/screens/profile/profile.dart';
import 'package:bmicalculator/screens/tips/widget/tipsHeader.dart';
import 'package:bmicalculator/screens/tips/widget/tipsfooter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              builder: (context) => Profile(),
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
            FooterTipsWidget(
              ontap: () {
                Get.defaultDialog(
                    title: "Running Tips",
                    titleStyle: TextStyle(fontSize: 20),
                    middleText: "Running",
                    textConfirm: "Ok",
                    onConfirm: () {
                      Get.back();
                    });
              },
              logo: Icons.directions_run,
              title: "Running",
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            FooterTipsWidget(
              logo: Icons.pedal_bike,
              title: "Cycling",
              ontap: () {
                Get.defaultDialog(
                    title: "Cycling Tips",
                    titleStyle: TextStyle(fontSize: 20),
                    middleText: "Cycling",
                    textConfirm: "Ok",
                    onConfirm: () {
                      Get.back();
                    });
              },
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            FooterTipsWidget(
              logo: Icons.pool,
              title: "Swimming",
              ontap: () {
                Get.defaultDialog(
                    title: "Swimming Tips",
                    titleStyle: TextStyle(fontSize: 20),
                    middleText: "Swimming",
                    textConfirm: "Okay",
                    onConfirm: () {
                      Get.back();
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
