import 'package:flutter/material.dart';

class Socialbutton extends StatelessWidget {
  const Socialbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Sign in with Google"),
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
    );
  }
}
