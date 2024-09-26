import 'package:flutter/material.dart';
import 'package:cs3midlogin/widget/submitbutton.dart';
import 'package:cs3midlogin/widget/textbox.dart'; // import 'package:login_screen/widget/buttonnav.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            image: AssetImage('assets/img/background_web.png'),
            fit: BoxFit.cover),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return RegisterMobile();
        } else {
          return RegisterWeb();
        }
      }),
    ));
  }
}

class RegisterWeb extends StatelessWidget {
  const RegisterWeb({Key? key}) : super(key: key);

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
                      "assets/img/anim_statue.gif",
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
                    child: RegisterWebForm()),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RegisterWebForm extends StatelessWidget {
  const RegisterWebForm({super.key});

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
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: fontColor, // Line color
                  thickness: 2, // Line thickness
                  indent: 60, // Left padding
                  endIndent: 60, // Padding before the "OR" text
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
                height: 45,
              ),
              SizedBox(
                width: 10,
              ),
              Textbox(
                placeholder: 'Bersabal',
                label: 'Last Name',
                width: 200,
                height: 45,
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
                height: 45,
              )
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
                  indent: 60, // Left padding
                  endIndent: 60, // Padding before the "OR" text
                ),
              ),
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
                height: 45,
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
                height: 45,
                isPassword: true,
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
                height: 45,
                isPassword: true,
              )
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
                  indent: 60, // Left padding
                  endIndent: 60, // Padding before the "OR" text
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
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
                      fontSize: 20,
                      color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                width: 410,
                height: 50,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Have an account?'))
            ],
          )
        ],
      ),
    );
  }
}

class RegisterMobile extends StatelessWidget {
  const RegisterMobile({Key? key}) : super(key: key);

  final Color fontColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  30.0), // Rounds the corners of the image
              child: Image.asset(
                'assets/logos/app_logo.png',
                width: 100,
                height: 100,
                fit: BoxFit
                    .cover, // Ensures the image covers the available space
              ),
            ),
            SizedBox(
              height: 5,
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
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: fontColor,
                    thickness: 2,
                    indent: 50,
                    endIndent: 50,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textbox(
                  fontSize_placeHolder: 16,
                  fontSize_label: 16,
                  placeholder: 'Ron',
                  label: 'First Name',
                  width: 350,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textbox(
                  fontSize_placeHolder: 16,
                  fontSize_label: 16,
                  placeholder: 'Bersabal',
                  label: 'Last Name',
                  width: 350,
                )
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
                    indent: 50,
                    endIndent: 50,
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
                Textbox(
                  fontSize_placeHolder: 16,
                  fontSize_label: 16,
                  label: "Email:",
                  placeholder: 'mail@example.com',
                  width: 350,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textbox(
                  fontSize_placeHolder: 16,
                  fontSize_label: 16,
                  label: 'Username',
                  placeholder: 'RonBers',
                  width: 350,
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
                  fontSize_placeHolder: 16,
                  fontSize_label: 16,
                  label: "Password:",
                  placeholder: 'Min of 6 Characters',
                  width: 350,
                  isPassword: true,
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
                  fontSize_placeHolder: 16,
                  fontSize_label: 16,
                  label: "Confirm Password:",
                  placeholder: 'Min of 6 Characters',
                  width: 350,
                  isPassword: true,
                )
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
                    indent: 50,
                    endIndent: 50,
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
                  custom: true,
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontFamily: 'RealText',
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  width: 350,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Have an account?',
                      style: TextStyle(fontSize: 16),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
