import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:plannner/Screens/intinalPages/welcome_card.dart';
import 'package:plannner/Screens/mainScreens/StartPlanning.dart';
import 'package:plannner/constants/colors.dart';
import 'package:plannner/constants/fonts.dart';
import 'package:plannner/constants/images.dart';
import 'package:plannner/Screens/mainScreens/StartPlanning.dart';
import 'package:plannner/Screens/widgets/city_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 100,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          items: [
            BottomNavigationBarItem(
              label: "home",
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: "schdule",
              icon: Icon(Icons.home_filled),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 110,
        backgroundColor: primaryColor,
        actions: [
          SizedBox(
            width: 30,
          ),
          Center(
              child: Text(
            "Current Plans",
            style: h1,
          )),
          Spacer(),
          Icon(
            Icons.account_circle_sharp,
            size: 40,
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Expanded(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      color: primaryColor,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          CityCard(
                            cityName: "Al-Ula",
                            imagePath: city1,
                          ),
                          CityCard(
                            cityName: "Riyadh",
                            imagePath: city2,
                          ),
                          CityCard(
                            cityName: "Khobar",
                            imagePath: city3,
                          ),
                          CityCard(
                            cityName: "Khobar",
                            imagePath: city3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                WelcomeCard(
                  title: "Start Planning",
                  onTap: () {
                    Navigator.pushNamed(context, '/StartPlanning');
                  },
                  buttonText: "View",
                ),
                WelcomeCard(
                  title: "Today's Scheduale",
                  onTap: () {},
                  buttonText: "Add",
                ),
              ],
            ),
          )),
    );
  }
}
