class Meal {
  Meal({this.mealName = "", this.mealId = "", this.mealThumb = ""});

  String mealName;
  String mealId;
  String mealThumb;

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      mealName: json['strMeal'],
      mealId: json['idMeal'],
      mealThumb: json['strMealThumb'],
    );
  }

  @override
  String toString() {
    return '$mealId: $mealName';
  }
}
