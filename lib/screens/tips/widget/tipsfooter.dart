import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/config/size_config.dart';
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
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(18.0),
                              color:
                                  AppColor.unselectedTextColor.withOpacity(0.7),
                              height: 1.25,
                            ),
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
