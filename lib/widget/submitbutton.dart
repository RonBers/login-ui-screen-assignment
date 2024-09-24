import 'package:flutter/material.dart';

class Submitbutton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;
  final bool custom;

  const Submitbutton({
    Key? key,
    required this.onPressed,
    required this.child,
    required this.custom,
    this.borderRadius,
    this.width = 400,
    this.height = 60,
    this.gradient = const LinearGradient(colors: [
      Color.fromRGBO(35, 129, 227, 1),
      Color.fromRGBO(98, 115, 221, 1),
      Color.fromRGBO(145, 105, 217, 1),
      Color.fromRGBO(238, 86, 210, 1),
      Color.fromRGBO(239, 130, 213, 1),
      Color.fromRGBO(239, 179, 216, 1),
    ]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(4);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: (custom) ? Colors.transparent : Colors.white,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
