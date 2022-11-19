import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class startPage extends StatelessWidget {
  const startPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                  tag: "logo",
                  child: SvgPicture.asset("assets/Icon.svg",
                      semanticsLabel: 'Acme Logo')),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/Register");
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
                          'Start Using Wjheh',
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
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/Login");
                },
                child: Text(
                  'Login',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(74, 86, 252, 1),
                      fontFamily: 'Cairo',
                      fontSize: 24,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
