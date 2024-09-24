import 'package:flutter/material.dart';
import 'package:login_screen/widget/customcheckbox.dart';
import 'package:login_screen/widget/socialbutton.dart';
import 'package:login_screen/widget/submitbutton.dart';
import 'package:login_screen/widget/textbox.dart';
// import 'package:login_screen/widget/buttonnav.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                        "assets/img/anim_statue.gif",
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
            padding: EdgeInsets.fromLTRB(0, 15, 50, 0),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Register",
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
              Socialbutton(
                imageSrc: 'assets/logos/google.png',
                socialSite: "Google",
                onPressed: () {},
              ),
              SizedBox(
                width: 15,
              ),
              Socialbutton(
                imageSrc: 'assets/logos/facebook.png',
                socialSite: "Facebook",
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 15,
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
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Textbox(
                placeholder: 'Ron',
                label: 'First Name',
                width: 200,
              ),
              SizedBox(
                width: 10,
              ),
              Textbox(
                placeholder: 'Bersabal',
                label: 'Last Name',
                width: 200,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Textbox(
                label: "Email:",
                placeholder: 'mail@example.com',
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Textbox(
                label: 'Username',
                placeholder: 'RonBers',
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Textbox(
                label: "Password:",
                placeholder: 'Min of 6 Characters',
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Textbox(
                label: "Confirm Password:",
                placeholder: 'Min of 6 Characters',
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
                custom: true,
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      fontFamily: 'RealText',
                      fontWeight: FontWeight.w100,
                      fontSize: 23,
                      color: Colors.white),
                ),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
