import 'package:flutter/material.dart';

void main() {
  runApp(const LoginIn());
}

class LoginIn extends StatefulWidget {
  const LoginIn({super.key});

  @override
  State<LoginIn> createState() => _LoginInState();
}

class _LoginInState extends State<LoginIn> {
  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Center(
            child: Text("Login page"),
          ),
          TextField(
            //UserName
            onChanged: (value) {
              username = value;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'User Name',
              hintText: 'Enter Your Name',
            ),
          ),
          TextField(
            onChanged: (value) {
              password = value;
            },
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: 'Enter your password',
            ),
          ),
          TextButton(
              onPressed: () {
                print("User name: " + username);
                print("Password: " + password);
              },
              child: Text("Enter"))
        ]),
      ),
    );
  }
}
