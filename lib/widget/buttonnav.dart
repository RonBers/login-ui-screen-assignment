import 'package:flutter/material.dart';
import 'package:login_screen/widget/socialbutton.dart';

class Buttonnav extends StatelessWidget {
  const Buttonnav({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text("Register")),
          SizedBox(
            width: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text("Home")),
          SizedBox(
            width: 20,
          ),
          Socialbutton()
        ],
      ),
    );
  }
}
