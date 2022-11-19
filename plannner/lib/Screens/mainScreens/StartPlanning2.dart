import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:plannner/constants/fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../widgets/city_card.dart';
import 'package:plannner/Screens/widgets/interests.dart';

class StartPlanning2 extends StatefulWidget {
  const StartPlanning2({super.key});

  @override
  State<StartPlanning2> createState() => _StartPlanning2State();
}

class _StartPlanning2State extends State<StartPlanning2> {
  String cityPicked = '';
  List<String> list = <String>[];
  String budget = "0";
  int numberOfPeople = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        actions: [
          SizedBox(
            width: 30,
          ),
          Center(
              child: Text(
            "Step 2",
            style: h1,
          )),
          Spacer(),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Center(
                  child: Text(
                    "Fill In Your Trip Detail",
                    style: h3,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Cusine Budget",
                  style: h4,
                  textAlign: TextAlign.left,
                ),
                TextField(
                  keyboardType: TextInputType.number,

                  //UsEerName
                  onChanged: (value) async {
                    budget = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Your Budget',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Number of people",
                      style: h4,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          numberOfPeople++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      numberOfPeople.toString(),
                      style: h4,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (numberOfPeople > 0) {
                            numberOfPeople--;
                          }
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Choose Interest",
                  style: h4,
                  textAlign: TextAlign.left,
                ),
                Center(
                  child: Wrap(
                    runSpacing: 20,
                    spacing: 4,
                    children: [
                      Interest(
                          interest: "Music",
                          onLmfao: () {
                            list.add("Music");
                          }),
                      Interest(
                        interest: "Sport",
                        onLmfao: () {
                          list.add("Sport");
                        },
                      ),
                      Interest(
                        interest: "Shopping",
                        onLmfao: () {
                          list.add("Shopping");
                        },
                      ),
                      Interest(
                        interest: "Matches",
                        onLmfao: () {
                          list.add("Mathces");
                        },
                      ),
                      Interest(
                        interest: "Culture",
                        onLmfao: () {
                          list.add("Culture");
                        },
                      ),
                      Interest(
                        interest: "Nature",
                        onLmfao: () {
                          list.add("Nature");
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/WelcomePage");
                    },
                    child: Container(
                      width: 339,
                      height: 52.998573303222656,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              ),
                              color: Color.fromRGBO(74, 86, 252, 1),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Submit',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Cairo',
                                  fontSize: 24,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
