import 'package:cs3midlogin/model/Meal.dart';
import 'package:cs3midlogin/service/mealApi.dart';
import 'package:cs3midlogin/widget/arealist.dart';
import 'package:cs3midlogin/widget/mealcard.dart';
import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);
  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  List<Meal> meals = [];
  String selectedArea = '';

  @override
  void initState() {
    super.initState();
    getData(selectedArea);
  }

  void getData(String area) async {
    List<Meal> fetchedMeals = await Mealapi().getMeals(area);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AreaList(
                  onAreaChanged: (String newArea) {
                    setState(() {
                      selectedArea = newArea;
                    });
                    getData(newArea);
                  },
                ),
              ],
            ),
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
