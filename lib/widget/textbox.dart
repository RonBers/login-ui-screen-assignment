import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  final String label;
  final String placeholder;
  final double width;
  final double height;
  final Color backgroundColor;
  final double fontSize_placeHolder;
  final double fontSize_label;

  const Textbox({
    Key? key,
    required this.label,
    this.placeholder = "",
    this.width = 410,
    this.height = 65,
    this.backgroundColor = Colors.transparent,
    this.fontSize_placeHolder = 12,
    this.fontSize_label = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: fontSize_label),
          ),
          Container(
            height: height,
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.4),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                hintText: placeholder,
                hintStyle: TextStyle(
                    color: Colors.white, fontSize: fontSize_placeHolder),
              ),
            ),
          )
        ],
      ),
    );
  }
}
