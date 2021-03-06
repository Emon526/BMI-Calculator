import 'package:bmicalculator/screens/home/homescreen.dart';
import 'package:bmicalculator/screens/info/infoscreen.dart';
import 'package:bmicalculator/screens/result/result_screen.dart';
import 'package:bmicalculator/screens/tips/tipsscreen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(
    GetMaterialApp(
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/tip',
          page: () => TipsScreen(),
        ),
        GetPage(
          name: '/result',
          page: () => ResultsPage(),
        ),
        GetPage(
          name: '/info',
          page: () => InfoScreen(),
        ),
      ],
    ),
  );
}
