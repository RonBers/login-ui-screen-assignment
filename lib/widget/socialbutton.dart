import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:flutter_any_logo/gen/assets.gen.dart';

class Socialbutton extends StatelessWidget {
  final String socialSite;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;

  const Socialbutton({
    Key? key,
    required this.socialSite,
    required this.onPressed,
    this.width = 200,
    this.height = 35,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              Icons.settings,
              size: 20,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Sign in with " + socialSite,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: textColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)))),
      ),
    );
  }
}
