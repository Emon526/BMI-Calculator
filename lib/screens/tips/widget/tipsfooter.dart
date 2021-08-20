import 'package:bmicalculator/screens/helpers/constants.dart';
import 'package:bmicalculator/screens/helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FooterTipsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.defaultDialog(
            title: "AlertDialog",
            titleStyle: TextStyle(fontSize: 25),
            middleText: "Lorem ipsum Doller sit amet.",
            textCancel: "Cancel",
            onCancel: () {
              Get.back();
            },
            textConfirm: "Okay",
            buttonColor: Colors.grey[400],
            onConfirm: () {
              Get.back();
            });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.grey[300]),
                      child: Icon(
                        Icons.directions_run,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(20),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Running",
                            style: kHeadLine4,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Container(
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
