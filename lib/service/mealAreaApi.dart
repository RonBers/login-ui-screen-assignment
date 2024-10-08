// import 'package:cs3midlogin/model/Area.dart';
// import 'package:dio/dio.dart';

// class AreaMeal {
//   final dio = Dio();
//   var areaList;

//   Future<List<dynamic>> getAreas() async {
//     try {
//       Response response = await dio
//           .get('https://www.themealdb.com/api/json/v1/1/filter.php?a=Canadian');

//       if (response.statusCode == 200) {
//         return response.data['meals'] as List;
//       } else {
//         print(response.statusCode);
//       }
//     } catch (e) {
//       print('Error: $e');
//       return [];
//     }
//   }
// }
