import 'package:bmicalculator/helpers/color/constants.dart';
import 'package:bmicalculator/helpers/components/appbarbutton.dart';
import 'package:bmicalculator/helpers/components/custom_appbar.dart';
import 'package:bmicalculator/helpers/components/widget/bottom_button.dart';
import 'package:bmicalculator/helpers/config/size_config.dart';
import 'package:bmicalculator/helpers/utils/db/notes_database.dart';
import 'package:bmicalculator/helpers/utils/model/note.dart';
import 'package:bmicalculator/screens/home/homescreen.dart';
import 'package:bmicalculator/screens/profile/card.dart';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Note> notes;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNotes();
  }

  @override
  void dispose() {
    NotesDatabase.instance.close();

    super.dispose();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);

    this.notes = await NotesDatabase.instance.readAllNotes();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          onpressed: () {
            print("pressed");
          },
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
          margin: EdgeInsets.all(10),
          child: Center(
            child: isLoading
                ? CircularProgressIndicator()
                : notes.isEmpty
                    ? Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(200),
                            ),
                            Text(
                              'No BMI Result Saved ',
                              style: TextStyle(
                                color: AppColor.unselectedTextColor,
                                fontSize: getProportionateScreenWidth(20),
                              ),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(100),
                            ),
                            BottomButton(
                              buttonTitle: 'Calculate BMI',
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(20),
                                color: AppColor.backgroundcolor,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                              width: getProportionateScreenWidth(250),
                              colour: AppColor.buttonbackgroundcolor,
                              height: getProportionateScreenHeight(50),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(100),
                            ),
                          ],
                        ),
                      )
                    : buildNotes(),
          ),
        ),
      );

  Widget buildNotes() => ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          final note = notes[index];

          return ListCard(
            note: note,
            index: index,
            colour: AppColor.backgroundcolor,
          );
        },
      );
}
