import 'package:flutter/material.dart';
import 'package:login_screen/widget/submitbutton.dart';

class Greet extends StatelessWidget {
  const Greet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 1168,
          height: 700,
          color: Colors.black,
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    color: Colors.black,
                    child: Center(
                      child: Image.asset(
                        "assets/img/still_statue.png",
                        height: 450,
                        width: 450,
                      ),
                    ),
                    width: 650,
                    height: 700,
                  ),
                  Container(
                      color: const Color.fromARGB(255, 32, 32, 32)
                          .withOpacity(0.5),
                      width: 518,
                      height: 700,
                      child: LoginForm()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  final Color fontColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 50, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "NFTY",
                  style: TextStyle(
                    fontFamily: 'Mortend',
                    fontSize: 40,
                    color: fontColor,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  fontFamily: 'TurismoCF',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: fontColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Submitbutton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  custom: true)
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: fontColor, // Line color
                  thickness: 2, // Line thickness
                  indent: 55, // Left padding
                  endIndent: 30, // Padding before the "OR" text
                ),
              ),
              Text(
                "OR",
                style: TextStyle(
                    color: fontColor, // Text color
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TurismoCF'),
              ),
              Expanded(
                child: Divider(
                  color: fontColor, // Line color
                  thickness: 2, // Line thickness
                  indent: 30, // Padding after the "OR" text
                  endIndent: 55, // Right padding
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Submitbutton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  custom: false)
            ],
          ),
        ],
      ),
    );
  }
}
