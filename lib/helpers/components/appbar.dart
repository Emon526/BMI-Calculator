import 'package:bmicalculator/helpers/color/color.dart';
import 'package:flutter/material.dart';

class HomeAppBar {
  static primaryAppBar(
    String title,
  ) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(color: AppColor.titleTextColor),
      ),

      backgroundColor: AppColor.backgroundcolor,
      // centerTitle: true,
      elevation: 0,

      leading: Builder(builder: (context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.9),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: IconButton(
            icon: Icon(
              Icons.lightbulb,
              color: AppColor.iconcolor,
            ),
            onPressed: () => {},
          ),
        );
      }),
      actions: [
        IconButton(
          icon: Icon(
            Icons.person_outline,
            color: AppColor.iconcolor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
