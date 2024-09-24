import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cs3midlogin/widget/submitbutton.dart';

class Greet extends StatelessWidget {
  const Greet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return GreetMobile();
      } else {
        return UserSelectWeb();
      }
    }));
  }
}

class GreetMobile extends StatelessWidget {
  const GreetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        width: screenWidth,
        height: screenHeight,
        color: Colors.black,
        child: Center(
          child: Container(
            child: Column(
              children: [
                Container(
                  color: Colors.transparent,
                  width: screenWidth,
                  height: screenHeight - (screenHeight * 0.4),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 130,
                        left: 20,
                        child: Transform.rotate(
                          angle: pi / 2,
                          child: Text(
                            'Hello!',
                            style: TextStyle(
                                fontFamily: 'TurismoCF',
                                fontSize: 180,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 50,
                          left: 85,
                          child: Image.asset(
                            'assets/img/still_statue.png',
                            height: screenHeight / 2,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
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
                        style: TextStyle(
                            fontFamily: 'RealText',
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      custom: true,
                      width: 300,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
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
                        style: TextStyle(
                            fontFamily: 'RealText',
                            fontSize: 25,
                            color: Colors.black),
                      ),
                      custom: false,
                      width: 300,
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class UserSelectWeb extends StatelessWidget {
  const UserSelectWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
                    color:
                        const Color.fromARGB(255, 32, 32, 32).withOpacity(0.5),
                    width: 518,
                    height: 700,
                    child: UserSelectWebAction()),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class UserSelectWebAction extends StatelessWidget {
  const UserSelectWebAction({super.key});

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
                  color: fontColor,
                  thickness: 2,
                  indent: 55,
                  endIndent: 30,
                ),
              ),
              Text(
                "OR",
                style: TextStyle(
                    color: fontColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TurismoCF'),
              ),
              Expanded(
                child: Divider(
                  color: fontColor,
                  thickness: 2,
                  indent: 30,
                  endIndent: 55,
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
