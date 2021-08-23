import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/config/size_config.dart';
import 'package:bmicalculator/helpers/utils/model/note.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListCard extends StatelessWidget {
  ListCard({
    Key key,
    @required this.colour,
    @required this.note,
    @required this.index,
  }) : super(key: key);

  final Color colour;

  final Note note;
  final int index;
  @override
  Widget build(BuildContext context) {
    final time = DateFormat.yMMMd().format(note.createdTime);
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: getProportionateScreenWidth(110),
            child: Text(
              time,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                color: AppColor.unselectedTextColor.withOpacity(0.7),
                height: 1.25,
              ),
            ),
          ),
          Container(
              width: getProportionateScreenWidth(70),
              child: Text(
                note.number.toString(),
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(25),
                  color: AppColor.buttonbackgroundcolor.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              )),
          Container(
              width: getProportionateScreenWidth(100),
              child: Text(
                note.title,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  color: AppColor.unselectedTextColor.withOpacity(0.9),
                  height: 1.25,
                ),
              )),
        ],
      ),
      margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
      decoration: BoxDecoration(
        color: colour,
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
    );
  }
}
