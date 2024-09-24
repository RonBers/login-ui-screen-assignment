import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(100.0), // Rounds the corners of the image
          child: Image.asset(
            'assets/logos/app_logo.png',
            width: 500,
            height: 500,
            fit: BoxFit.cover, // Ensures the image covers the available space
          ),
        ),
      ),
    );
  }
}
