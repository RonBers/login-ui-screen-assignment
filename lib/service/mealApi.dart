import 'package:cs3midlogin/model/Meal.dart';
import 'package:dio/dio.dart';

class Mealapi {
  final dio = Dio();

  Future<List<Meal>> getMeals() async {
    try {
      final response = await dio
          .get('https://www.themealdb.com/api/json/v1/1/filter.php?a=Canadian');

      if (response.statusCode == 200 && response.data['meals'] != null) {
        List<dynamic> mealsJson = response.data['meals'];

        return mealsJson.map((meal) => Meal.fromJson(meal)).toList();
      } else {
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }
}
