import 'package:cs3midlogin/model/Meal.dart';
import 'package:cs3midlogin/service/mealApi.dart';
import 'package:cs3midlogin/widget/mealcard.dart';
import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);
  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  List<Meal> meals = [];
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    List<Meal> fetchedMeals = await Mealapi().getMeals();
    setState(() {
      meals = fetchedMeals;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Food", style: TextStyle(fontSize: 24))],
            ),
            SizedBox(height: 50),
            meals.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: meals.length,
                    itemBuilder: (context, index) {
                      final meal = meals[index];
                      return Mealcard(
                        thumbnail: meal.mealThumb,
                        name: meal.mealName,
                        id: meal.mealId,
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
