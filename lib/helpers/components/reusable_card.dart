import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    this.textcolor,
    @required this.colour,
    this.cardChild,
    this.onPress,
  });

  final TextDecoration textcolor;
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.only(bottom: 15, top: 15, left: 15, right: 15),
        // decoration: BoxDecoration(
        //   color: colour,
        //   borderRadius: BorderRadius.circular(10.0),
        //   boxShadow: [
        //     BoxShadow(
        //       color: Colors.grey.withOpacity(0.5),
        //       spreadRadius: 5,
        //       blurRadius: 7,
        //       offset: Offset(0, 3), // changes position of shadow
        //     ),
        //   ],
        // ),
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
      ),
    );
  }
}
