import 'package:cs3midlogin/widget/userbutton.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text("Home"),
        // ),
        body: Container(
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            image: AssetImage('assets/img/bg_phone.png'), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    'assets/logos/app_logo.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/food');
                  },
                  child: Text('View Meals'))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserButton(),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/',
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Text('Logout'))
            ],
          ),
        ],
      ),
    ));
  }
}
