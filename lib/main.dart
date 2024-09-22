import 'package:flutter/material.dart';
import 'package:login_screen/screen/home.dart';
import 'package:login_screen/screen/login.dart';
import 'package:login_screen/screen/register.dart';

void main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const Home(),
      },
    );
  }
}
