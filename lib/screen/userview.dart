import 'package:cs3midlogin/model/User.dart';
import 'package:cs3midlogin/widget/profilecard.dart';
import 'package:flutter/material.dart';

class UserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context)!.settings.arguments as User;

    final defaultUser = User(
      name: 'Unknown User',
      avatar: '',
      email: 'no-email@example.com',
      contactNumber: 'No phone',
      address: 'No address',
    );

    print(
        "User passed: " + (user != null ? user.toString() : "No user passed"));

    return Scaffold(
      appBar: AppBar(title: Text('User Profile')),
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
              children: [ProfileCard(user: user ?? defaultUser)],
            )
          ],
        ),
      ),
    );
  }
}
