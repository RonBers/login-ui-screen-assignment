import 'package:cs3midlogin/model/User.dart';
import 'package:cs3midlogin/service/userApi.dart';
import 'package:flutter/material.dart';

class UserButton extends StatefulWidget {
  @override
  _UserButtonState createState() => _UserButtonState();
}

class _UserButtonState extends State<UserButton> {
  String? avatarUrl;
  String? userName;
  bool isLoading = true;
  User? user;

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  void fetchUserData() async {
    try {
      User fetchedUser = await UserApi().getUserForButton();
      setState(() {
        user = fetchedUser;
        avatarUrl = user?.avatar;
        userName = user?.name;
        isLoading = false;
        print('Here' + user.toString());
      });
    } catch (e) {
      print('Error fetching user data: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLoading
          ? CircularProgressIndicator()
          : InkWell(
              onTap: () {
                if (user != null) {
                  print("ButtonUser:" + user.toString());
                  Navigator.pushNamed(
                    context,
                    '/user',
                    arguments: user,
                  );
                } else {
                  print('User data is not available.');
                }
              },
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    avatarUrl != null
                        ? ClipOval(
                            child: Image.network(
                              avatarUrl!,
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Icon(Icons.error),
                    SizedBox(width: 10),
                    userName != null ? Text(userName!) : Text('No User Found'),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ),
    );
  }
}
