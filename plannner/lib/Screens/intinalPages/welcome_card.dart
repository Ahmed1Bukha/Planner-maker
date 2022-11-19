// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:plannner/constants/colors.dart';
import 'package:plannner/constants/fonts.dart';
import 'package:plannner/constants/images.dart';

import 'package:plannner/Screens/widgets/city_card.dart';

class WelcomeCard extends StatelessWidget {
  Function() onTap;
  String title;
  String buttonText;

  WelcomeCard({
    Key? key,
    required this.onTap,
    required this.title,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 340,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.grey.shade300, Colors.yellowAccent.shade100],
            stops: [0.05, 0.3, 1]),
      ),
      //
      child: Stack(
        children: [
          Center(
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: h1,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                // style: ElevatedButton.styleFrom(primary: primaryColor),
                child: Text(buttonText),
                onPressed: onTap,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
