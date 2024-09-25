import 'package:flutter/material.dart';
import 'package:cs3midlogin/widget/customcheckbox.dart';
import 'package:cs3midlogin/widget/socialbutton.dart';
import 'package:cs3midlogin/widget/submitbutton.dart';
import 'package:cs3midlogin/widget/textbox.dart';
// import 'package:login_screen/widget/buttonnav.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
          return LoginMobile();
        } else {
          return LoginWeb();
        }
      }),
    ));
  }
}

class LoginMobile extends StatelessWidget {
  const LoginMobile({Key? key}) : super(key: key);

  final Color fontColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
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
                  "Login",
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
                  imageHeight: 50,
                  imageWidth: 50,
                  fontSize: 18,
                  width: 350,
                  height: 60,
                  imageSrc: 'assets/logos/google.png',
                  socialSite: "Google",
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Socialbutton(
                  imageHeight: 50,
                  imageWidth: 50,
                  fontSize: 18,
                  width: 350,
                  height: 60,
                  imageSrc: 'assets/logos/facebook.png',
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textbox(
                  width: 350,
                  label: "Email:",
                  placeholder: 'mail@example.com',
                  fontSize_label: 16,
                  fontSize_placeHolder: 16,
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
                  width: 350,
                  placeholder: 'Min of 6 Characters',
                  fontSize_label: 16,
                  fontSize_placeHolder: 16,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCheckbox(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: fontColor),
                    )),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Submitbutton(
                  width: 350,
                  custom: true,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: 'RealText',
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 15),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LoginWeb extends StatelessWidget {
  const LoginWeb({Key? key}) : super(key: key);

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
                    child: LoginFormWeb()),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LoginFormWeb extends StatelessWidget {
  const LoginFormWeb({super.key});

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
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
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
            height: 40,
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
            height: 25,
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
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomCheckbox(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: fontColor),
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Submitbutton(
                custom: true,
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontFamily: 'RealText',
                      fontWeight: FontWeight.w100,
                      fontSize: 23,
                      color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
