import 'package:cs3midlogin/model/User.dart';
import 'package:dio/dio.dart';

class UserApi {
  final dio = Dio();

  Future<User> getUserForButton() async {
    try {
      Response response = await dio.get('https://randomuser.me/api/');

      if (response.statusCode == 200) {
        var data = response.data['results'][0];

        String fullName = "${data['name']['first']} ${data['name']['last']}";
        print("Pass");
        String title = data['name']['title'];
        print("Pass");
        String avatar = data['picture']['large'];
        print("Pass");
        String address =
            "${data['location']['city']}, ${data['location']['country']}";

        print("Pass");
        String latitude = data['location']['coordinates']['latitude'];
        print("Pass");
        String longitude = data['location']['coordinates']['longitude'];
        print("Pass $longitude $latitude");
        String email = data['email'];
        print("Pass");
        String contactNumber = data['cell'];
        print("Pass");
        String age = data['dob']['age'].toString();
        print("Pass");

        return User(
            name: fullName,
            avatar: avatar,
            title: title,
            address: address,
            latitude: latitude,
            longitude: longitude,
            email: email,
            contactNumber: contactNumber,
            age: age);
      } else {
        throw Exception('Failed to load user: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('An error has occurred: $e');
    }
  }
}
