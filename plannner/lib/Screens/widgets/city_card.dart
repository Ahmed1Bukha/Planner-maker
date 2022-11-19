import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/message_format.dart';
import 'package:plannner/constants/fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CityCard extends StatefulWidget {
  String cityName;
  String imagePath;
  bool isSelectable;

  CityCard(
      {required this.cityName,
      required this.imagePath,
      this.isSelectable = false,
      super.key});

  @override
  State<CityCard> createState() => _CityCardState();
}

class _CityCardState extends State<CityCard> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  bool selected = false;

  void selectNow() async {
    final prefs = await SharedPreferences.getInstance();
    selected = !selected;
    prefs.setString('City', widget.cityName);
    print("Done");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.isSelectable) {
          setState(() {
            selectNow();
          });
        }
      },
      child: Container(
        width: 130,
        // constraints: BoxConstraints(minHeight: 120, minWidth: 130),
        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
        clipBehavior: Clip.hardEdge,
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.cityName,
              style: h2,
            ),
            SizedBox(
              width: 30,
            ),
            Visibility(
              visible: selected,
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            )
          ],
        ),
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(widget.imagePath),
          ),
        ),
      ),
    );
  }
}
