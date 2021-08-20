import 'package:bmicalculator/helpers/color/constants.dart';

import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  AppBarButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 5, top: 5, bottom: 5),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: SizedBox(
        width: 50,
        child: IconButton(
          icon: Icon(
            icon,
            size: 25,
            color: AppColor.iconcolor,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
