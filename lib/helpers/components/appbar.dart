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
        return IconButton(
          // splashRadius: 20,
          // splashColor: Colors.red,
          icon: Icon(
            Icons.lightbulb,
            color: AppColor.iconcolor,
          ),
          onPressed: () => {},
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
