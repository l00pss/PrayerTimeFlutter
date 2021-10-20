import 'dart:convert';

import 'package:prayertime/models/CityComponent.dart';
import 'package:http/http.dart' as http;

class CityListController{
  String url = "http://localhost:6065";
  late List<CityListComponent> list;
  Future<List<CityListComponent>> getDecode(int index)async{
    final response = await http.get(Uri.parse("$url/api/dates/json/1.0/citylist"));
    if (response.statusCode == 202) {
      var rawData = jsonDecode(utf8.decode(response.bodyBytes));
      var dataList = rawData['data'];
      for(int i = 0;i < 56;i++){
        list.add(CityListComponent.fromJson(dataList[i]));
      }
      return list;
    } else {
      throw Exception('Unknown Exception : 0129');
    }
  }
}