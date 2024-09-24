import 'package:flutter/material.dart';
import 'package:cs3midlogin/screen/greet.dart';
import 'package:cs3midlogin/screen/home.dart';
import 'package:cs3midlogin/screen/login.dart';
import 'package:cs3midlogin/screen/register.dart';

void main() => (runApp(MyApp()));

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
