import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              spreadRadius: -10,
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
          color: AppColor.buttonbackgroundcolor),
      // ignore: deprecated_member_use
      child: RaisedButton(
        elevation: 0,
        padding: EdgeInsets.symmetric(
          vertical: 15.0,
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        color: AppColor.buttonbackgroundcolor,
        onPressed: () {},
        child: Center(
          child: Text(
            "Save Results",
            style: TextStyle(color: AppColor.selectedTextColor, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
