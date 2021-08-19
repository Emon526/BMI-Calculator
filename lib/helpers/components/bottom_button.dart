import 'package:bmicalculator/helpers/color/color.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle, this.colour});

  final Function onTap;
  final String buttonTitle;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: AppColor.buttonbackgroundcolor),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontSize: 18,
              color: AppColor.backgroundcolor,
            ),
          ),
        ),
        margin: EdgeInsets.only(top: 15.0, bottom: 15, right: 15, left: 15),
        width: double.infinity,
      ),
    );
  }
}
