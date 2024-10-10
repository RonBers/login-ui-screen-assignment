import 'package:flutter/material.dart';
import 'package:cs3midlogin/model/User.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileCard extends StatelessWidget {
  final User user;

  const ProfileCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            width: 375,
            height: 500,
            decoration: BoxDecoration(
                color: Color.fromRGBO(30, 30, 30, 1),
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(color: Color.fromRGBO(56, 58, 59, 1), width: 2)),
          ),
        ),
        Positioned(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 375,
              child: Image.asset(
                'assets/img/defprofilebackground.jpg',
                width: 375,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: UserInfo(user: user),
        ),
        Positioned(
          top: 40,
          left: 40,
          child: Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color.fromRGBO(56, 58, 59, 1),
                width: 4,
              ),
            ),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                user.avatar.isNotEmpty ? user.avatar : '',
              ),
            ),
          ),
        ),
        Positioned(bottom: 30, left: 35, child: Social()),
        Positioned(
            right: 10,
            top: 150,
            child: IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.edit,
                  color: Colors.white,
                )))
      ],
    );
  }
}

class UserInfo extends StatelessWidget {
  final User user;
  final Color mainText = Colors.white;
  final Color secondText = Color.fromRGBO(179, 180, 180, 1);

  UserInfo({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(40, 0, 40, 50),
      width: 375,
      height: 360,
      decoration: BoxDecoration(
        color: Color.fromRGBO(30, 30, 30, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        border: Border.all(color: Color.fromRGBO(56, 58, 59, 1), width: 2),
      ),
      child: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              Text(
                user.title,
                style: TextStyle(color: secondText),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  user.address,
                  style: TextStyle(
                      color: mainText,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.visible,
                  softWrap: true,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                user.email,
                style: TextStyle(color: secondText),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                user.contactNumber,
                style: TextStyle(color: secondText),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Text(
                'Lives in',
                style: TextStyle(color: secondText),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  user.address,
                  style: TextStyle(
                      color: mainText,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.visible,
                  softWrap: true,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          iconSize: 35,
          color: Colors.white,
          icon: FaIcon(FontAwesomeIcons.instagram),
          onPressed: () {},
        ),
        IconButton(
          iconSize: 30,
          color: Colors.white,
          icon: FaIcon(FontAwesomeIcons.facebook),
          onPressed: () {},
        ),
        IconButton(
          iconSize: 30,
          color: Colors.white,
          icon: FaIcon(FontAwesomeIcons.xTwitter),
          onPressed: () {},
        ),
      ],
    );
  }
}
