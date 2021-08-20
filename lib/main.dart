import 'package:bmicalculator/screens/info/infoscreen.dart';
import 'package:bmicalculator/screens/tips/tipsscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: TipsScreen(),
    );
  }
}
