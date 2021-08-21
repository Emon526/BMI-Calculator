import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/components/appbarbutton.dart';
import 'package:bmicalculator/helpers/components/custom_appbar.dart';
import 'package:bmicalculator/screens/profile/card.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final List<Map<String, String>> tips = [
    {
      " date": "05/july/2019",
      "result": 'result',
      "resultText": "Normal",
    },
    {
      " date": "05/july/2019",
      "result": "18.5",
      "resultText": "Normal",
    },
    {
      " date": "05/july/2019",
      "result": "18.5",
      "resultText": "Normal",
    },
    {
      " date": "05/july/2019",
      "result": "18.5",
      "resultText": "Normal",
    },
    {
      " date": "05/july/2019",
      "result": "18.5",
      "resultText": "Normal",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        onpressed: () {},
        backgroundcolor: Colors.transparent,
        title: 'Profile',
        leading: AppBarButton(
          icon: Icons.arrow_back,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: AppColor.backgroundcolor,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: tips.length,
                itemBuilder: (BuildContext context, int index) => ListCard(
                  colour: AppColor.backgroundcolor,
                  title: tips[index][' date'] ?? '',
                  result: tips[index]['result'] ?? '',
                  resultText: tips[index]['resulttext'] ?? '',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
