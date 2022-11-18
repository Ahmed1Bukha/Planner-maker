import 'package:flutter/material.dart';

class startPage extends StatelessWidget {
  const startPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Login");
                },
                child: Text("Login page")),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Register");
                },
                child: Text("Register page"))
          ],
        ),
      ),
    ));
  }
}
