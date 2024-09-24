import 'package:flutter/material.dart';
import 'package:login_screen/screen/greet.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';
import 'package:login_screen/screen/home.dart';
import 'package:login_screen/screen/login.dart';
import 'package:login_screen/screen/register.dart';

void main() => (runApp(TheResponsiveBuilder(
      builder: (context, orientation, screenType) {
        return MyApp();
      },
    )));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      initialRoute: '/',
      routes: {
        '/': (context) => const Greet(),
        '/login': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const Home(),
      },
    );
  }
}
