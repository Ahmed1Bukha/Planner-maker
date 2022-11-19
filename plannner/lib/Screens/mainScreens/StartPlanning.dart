import 'package:flutter/material.dart';
import 'package:plannner/constants/fonts.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../widgets/city_card.dart';

class StartPlanning1 extends StatefulWidget {
  const StartPlanning1({super.key});

  @override
  State<StartPlanning1> createState() => _StartPlanning1State();
}

class _StartPlanning1State extends State<StartPlanning1> {
  String cityPicked = '';
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
            "Step 1",
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
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Explore cities.",
                style: h3,
                textAlign: TextAlign.left,
              ),
              Divider(
                height: 20,
                thickness: 1,
                endIndent: 0,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CityCard(
                    cityName: "Al-Ula",
                    imagePath: city1,
                    isSelectable: true,
                  ),
                  CityCard(
                    cityName: "Riyadh",
                    imagePath: city2,
                    isSelectable: true,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CityCard(
                    cityName: "Khobar",
                    imagePath: city3,
                    isSelectable: true,
                  ),
                  CityCard(
                    cityName: "Riyadh",
                    imagePath: city2,
                    isSelectable: true,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/StartPlanning2");
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
                          'Next',
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
            ],
          ),
        ],
      ),
    );
  }
}
