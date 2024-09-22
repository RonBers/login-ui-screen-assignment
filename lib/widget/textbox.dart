import 'package:flutter/material.dart';

class Textbox extends StatefulWidget {
  //const Textbox({ Key? key }) : super(key: key);
  final String label;
  final double width;
  final double height;
  final Color backgroundColor;

  const Textbox({
    Key? key,
    required this.label,
    this.width = 400,
    this.height = 50,
    this.backgroundColor = Colors.grey,
  });

  @override
  _TextboxState createState() => _TextboxState();
}

class _TextboxState extends State<Textbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width, // Set width
      height: widget.height, // Set height
      decoration: BoxDecoration(
        color: widget.backgroundColor, // Set background color
        borderRadius: BorderRadius.circular(8), // Optional: add rounded corners
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.centerLeft, // Align text
      child: Text(
        widget.label,
        style: TextStyle(
            color: Colors.white, fontSize: 16), // Customize text style
      ),
    );
  }
}
