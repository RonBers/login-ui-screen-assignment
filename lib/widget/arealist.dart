import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AreaList extends StatefulWidget {
  final Function(String) onAreaChanged;

  const AreaList({super.key, required this.onAreaChanged});

  @override
  State<AreaList> createState() => _AreaListState();
}

class _AreaListState extends State<AreaList> {
  String dropdownValue = '';
  List<String> areas = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    try {
      Response response = await Dio()
          .get('https://www.themealdb.com/api/json/v1/1/list.php?a=list');

      if (response.statusCode == 200) {
        List<dynamic> meals = response.data['meals'];
        List<String> fetchedAreas =
            meals.map((meal) => meal['strArea'].toString()).toList();

        setState(() {
          areas = fetchedAreas;
          dropdownValue = areas.first;
        });

        widget.onAreaChanged(dropdownValue);
      } else {
        print('Error: ' + response.statusCode.toString());
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue.isNotEmpty ? dropdownValue : null,
      hint: Text("Select an area"),
      items: areas.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });

        widget.onAreaChanged(newValue!);
      },
    );
  }
}
