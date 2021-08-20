import 'package:bmicalculator/screens/helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kWhiteColor = Colors.white;
const kButtonColor = Color(0xFF58CBE0);
const kTextColor = Color(0xFFAEB4BE);
const kBlackColor = Colors.black;

final kHeadLine2 = TextStyle(
  fontFamily: GoogleFonts.roboto().fontFamily,
  fontSize: getProportionateScreenWidth(45.0),
  color: kBlackColor,
  height: 1.25,
);

final kHeadLine4 = TextStyle(
  fontFamily: GoogleFonts.roboto().fontFamily,
  fontSize: getProportionateScreenWidth(18.0),
  color: kTextColor,
  fontWeight: FontWeight.w500,
  height: 1.25,
);
final kHeadLine5 = TextStyle(
  fontFamily: GoogleFonts.roboto().fontFamily,
  fontSize: getProportionateScreenWidth(18.0),
  color: kButtonColor,
  fontWeight: FontWeight.w500,
  height: 1.25,
);
final kHeadLine6 = TextStyle(
  fontFamily: GoogleFonts.roboto().fontFamily,
  fontSize: getProportionateScreenWidth(18.0),
  color: kBlackColor,
  fontWeight: FontWeight.w500,
  height: 1.25,
);
