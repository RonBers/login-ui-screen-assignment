import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:flutter_any_logo/gen/assets.gen.dart';

class Socialbutton extends StatelessWidget {
  final String socialSite;
  final VoidCallback onPressed;
  final String imageSrc;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;

  const Socialbutton({
    Key? key,
    required this.socialSite,
    required this.onPressed,
    required this.imageSrc,
    this.width = 200,
    this.height = 37,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              width: 30,
              height: 30,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "Sign in with " + socialSite,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.4),
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          side: BorderSide(
            color: Colors.grey,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
