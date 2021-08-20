import 'package:bmicalculator/screens/helpers/constants.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: kTextColor,
            blurRadius: 23,
            offset: Offset(
              16,
              20,
            ),
            spreadRadius: 0),
      ], borderRadius: BorderRadius.circular(22), color: kWhiteColor),
      child: RaisedButton(
        elevation: 0,
        padding: EdgeInsets.symmetric(
          vertical: 15.0,
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        color: kButtonColor,
        onPressed: () {},
        child: Center(
          child: Text(
            "Save Results",
            style: TextStyle(color: kWhiteColor, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
