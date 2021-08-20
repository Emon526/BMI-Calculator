import 'package:bmicalculator/screens/helpers/constants.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35.0),
        ),
        child: SizedBox(
          width: 35,
          height: 35,
          child: Icon(
            Icons.arrow_back_ios,
            color: kBlackColor,
            size: 23,
          ),
        ),
      ),
      actions: [
        Card(
          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0),
          ),
          child: SizedBox(
            width: 50,
            height: 20,
            child: Icon(
              Icons.person_outline,
              color: kBlackColor,
              size: 23,
            ),
          ),
        )
      ],
      title: Text(
        "BMI Info",
        style: TextStyle(color: kBlackColor),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
