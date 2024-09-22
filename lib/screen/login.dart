import 'package:flutter/material.dart';
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 50, 0),
                child: Text(
                  "NFTY",
                  style: TextStyle(
                      fontFamily: 'Mortend',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
