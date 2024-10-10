import 'package:flutter/material.dart';

class User {
  String name;
  String avatar;
  String title;
  String address;
  String longitude;
  String latitude;
  String email;
  String contactNumber;
  String age;

  User(
      {this.name = "",
      this.avatar = "",
      this.title = "",
      this.address = "",
      this.longitude = "",
      this.latitude = "",
      this.email = "",
      this.contactNumber = "",
      this.age = ""});

  @override
  String toString() {
    // TODO: implement toString
    return '$name: $avatar';
  }
}
