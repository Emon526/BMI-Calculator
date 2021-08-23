import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/components/widget/bottom_button.dart';
import 'package:bmicalculator/helpers/config/size_config.dart';

import 'package:bmicalculator/helpers/components/appbarbutton.dart';
import 'package:bmicalculator/helpers/components/custom_appbar.dart';
import 'package:bmicalculator/helpers/utils/db/notes_database.dart';
import 'package:bmicalculator/helpers/utils/model/note.dart';

import 'package:bmicalculator/screens/info/widget/footer.dart';
import 'package:bmicalculator/screens/info/widget/header.dart';
import 'package:bmicalculator/screens/profile/profile.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfoScreen extends StatelessWidget {
  final score;

  final String title;
  InfoScreen({this.score, this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        onpressed: () {
          print("pressed");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Profile(),
            ),
          );
        },
        title: 'BMI info',
        backgroundcolor: Colors.transparent,
        leading: AppBarButton(
          icon: Icons.arrow_back,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(children: [
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          //Header Section
          Expanded(
              child: HeaderWidget(
            title: "Your BMI",
            resultText: title,
            result: score,
          )),
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),
          // Footer Section
          FooterWidget(),
          SizedBox(
            height: getProportionateScreenHeight(100),
          ),

          // Button Scetion
          Expanded(
            child: BottomButton(
              score: score,
              title: title,
              buttonTitle: 'Save Result',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                color: AppColor.backgroundcolor,
              ),
              onTap: () {
                addNote();
                print("save preseed");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
              width: getProportionateScreenWidth(300),
              colour: AppColor.buttonbackgroundcolor,
              height: getProportionateScreenHeight(10),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          )
        ]),
      ),
    );
  }

  Future addNote() async {
    final note = Note(
      title: title,
      number: score,
      createdTime: DateTime.now(),
    );

    await NotesDatabase.instance.create(note);

    print("data saved");
  }
}
