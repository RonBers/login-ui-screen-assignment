import 'package:flutter/material.dart';
import 'package:login_screen/widget/customcheckbox.dart';
import 'package:login_screen/widget/socialbutton.dart';
import 'package:login_screen/widget/textbox.dart';
// import 'package:login_screen/widget/buttonnav.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                    color: Colors.blue,
                    child: Text("Hello"),
                    width: 650,
                    height: 700,
                  ),
                  Container(
                      color: Colors.green,
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

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                    fontFamily: 'TurismoCF',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
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
                socialSite: "Google",
                onPressed: () {},
              ),
              SizedBox(
                width: 15,
              ),
              Socialbutton(
                socialSite: "Facebook",
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.black, // Line color
                  thickness: 2, // Line thickness
                  indent: 55, // Left padding
                  endIndent: 30, // Padding before the "OR" text
                ),
              ),
              Text(
                "OR",
                style: TextStyle(
                    color: Colors.black, // Text color
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TurismoCF'),
              ),
              Expanded(
                child: Divider(
                  color: Colors.black, // Line color
                  thickness: 2, // Line thickness
                  indent: 30, // Padding after the "OR" text
                  endIndent: 55, // Right padding
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Textbox(label: "Email")],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Textbox(label: "Password")],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomCheckbox(),
              TextButton(onPressed: () {}, child: Text("Forgot Password?")),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)))),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
