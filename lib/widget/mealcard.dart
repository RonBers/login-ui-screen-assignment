import 'package:flutter/material.dart';

class Mealcard extends StatelessWidget {
  const Mealcard({Key? key, this.thumbnail = "", this.name = "", this.id = ""})
      : super(key: key);
  final String thumbnail;
  final String name;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  thumbnail,
                  width: 100,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(name)],
            )
          ],
        ),
      ),
    ));
  }
}
